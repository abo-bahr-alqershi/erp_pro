import os
import re

sql_file = "cr_db_.sql"
output_dir = "procedures"

os.makedirs(output_dir, exist_ok=True)

# جرب عدة ترميزات حتى ينجح التحميل
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

# نمط استخراج تعريف الإجراء المخزن
procedure_pattern = re.compile(
    r'CREATE\s+PROCEDURE\s+([`"\[\]\w\d_]+)\s*\(.*?\)\s*'
    r'(BEGIN.*?END)\s*;',
    re.IGNORECASE | re.DOTALL
)

procedures = list(procedure_pattern.finditer(sql_text))
if not procedures:
    print("لم يتم العثور على أي إجراءات مخزنة في الملف.")
    exit(1)

seen_names = set()
for idx, match in enumerate(procedures, start=1):
    proc_name = match.group(1).strip("`[]\"")
    proc_body = match.group(0).strip()
    if proc_name in seen_names:
        print(f"تحذير: الإجراء '{proc_name}' مكرر وتجاوز عن التكرار.")
        continue
    seen_names.add(proc_name)
    file_name = f"{idx:03d}_{proc_name}.sql"
    file_path = os.path.join(output_dir, file_name)
    with open(file_path, 'w', encoding='utf-8') as out_f:
        out_f.write(proc_body + '\n')
    print(f"تم استخراج: {file_name}")

print(f"\nتم استخراج {len(seen_names)} إجراء مخزن إلى مجلد '{output_dir}'.")
