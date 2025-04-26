import os
import re

sql_file = "cr_db_.sql"
output_file = "all_views.sql"

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

# نمط متقدم: يلتقط أي CREATE [OR REPLACE] VIEW ... AS ... ; مهما كان عدد الأسطر حتى الفاصلة المنقوطة
view_pattern = re.compile(
    r'CREATE\s+(?:OR\s+REPLACE\s+)?VIEW\s+([`"\[\]\w\d_]+)\s*\([^)]+\)\s*AS\s+(.*?);',
    re.IGNORECASE | re.DOTALL
)

views = list(view_pattern.finditer(sql_text))
if not views:
    print("لم يتم العثور على أي View في الملف حتى بعد النمط المتقدم.")
    exit(1)

seen_names = set()
with open(output_file, 'w', encoding='utf-8') as out_f:
    for idx, match in enumerate(views, start=1):
        view_name = match.group(1).strip("`[]\"")
        view_body = match.group(0).strip()
        if view_name in seen_names:
            print(f"تحذير: الفيو '{view_name}' مكرر وتجاوز عن التكرار.")
            continue
        seen_names.add(view_name)
        out_f.write("--" + "-"*60 + "\n")
        out_f.write(f"-- View {idx}: {view_name}\n")
        out_f.write("--" + "-"*60 + "\n")
        out_f.write(view_body + '\n\n')
        print(f"تم إضافة: {view_name}")

print(f"\nتم استخراج {len(seen_names)} View إلى الملف '{output_file}'.")
