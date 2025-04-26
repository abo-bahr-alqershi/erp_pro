import os
import re

sql_file = "cr_db_.sql"
output_file = "all_triggers.sql"

# محاولة قراءة الملف بعدة ترميزات
for enc in ["utf-8", "cp1256", "latin1", "iso-8859-1"]:
    try:
        with open(sql_file, 'r', encoding=enc, errors='replace') as f:
            sql_text = f.read()
        print(f"تم تحميل الملف بنجاح باستخدام الترميز: {enc}")
        break
    except Exception as e:
        print(f"فشل التحميل بالترميز {enc}: {e}")
else:
    print("تعذر قراءة الملف بأي ترميز معروف!")
    exit(1)

# نمط استخراج التريجر بأي نهاية (END; أو END // أو END $$ إلخ)
trigger_pattern = re.compile(
    r'(CREATE\s+TRIGGER\s+[`"\[\]\w\d_]+\s.*?END\s*[\;\$\|/]{1,2})',
    re.IGNORECASE | re.DOTALL
)

triggers = list(trigger_pattern.finditer(sql_text))
if not triggers:
    print("لم يتم العثور على أي مشغلات في الملف.")
    exit(1)

seen_names = set()
with open(output_file, 'w', encoding='utf-8') as out_f:
    for idx, match in enumerate(triggers, start=1):
        trig_body = match.group(1).strip()
        # استخراج اسم التريجر
        name_match = re.search(r'CREATE\s+TRIGGER\s+([`"\[\]\w\d_]+)', trig_body, re.IGNORECASE)
        trig_name = name_match.group(1).strip("`[]\"") if name_match else f"trigger_{idx}"
        if trig_name in seen_names:
            print(f"تحذير: التريجر '{trig_name}' مكرر وتجاوز عن التكرار.")
            continue
        seen_names.add(trig_name)
        out_f.write("--" + "-"*60 + "\n")
        out_f.write(f"-- Trigger {idx}: {trig_name}\n")
        out_f.write("--" + "-"*60 + "\n")
        out_f.write(trig_body + '\n\n')
        print(f"تم إضافة: {trig_name}")

print(f"\nتم استخراج {len(seen_names)} تريجر إلى الملف '{output_file}'.")
