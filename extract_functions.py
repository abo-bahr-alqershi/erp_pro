import os
import re

sql_file = "cr_db_.sql"
output_dir = "functions"

os.makedirs(output_dir, exist_ok=True)

# محاولة قراءة الملف بعدة ترميزات مع الدعم للعربية
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

# نمط استخراج الدوال المخزنة
function_pattern = re.compile(
    r'CREATE\s+FUNCTION\s+([`"\[\]\w\d_]+)\s*\(.*?\)\s*'
    r'(RETURNS\s+\w+\s+)?(BEGIN.*?END)\s*;',
    re.IGNORECASE | re.DOTALL
)

functions = list(function_pattern.finditer(sql_text))
if not functions:
    print("لم يتم العثور على أي دوال مخزنة في الملف.")
    exit(1)

seen_names = set()
for idx, match in enumerate(functions, start=1):
    func_name = match.group(1).strip("`[]\"")
    func_body = match.group(0).strip()
    if func_name in seen_names:
        print(f"تحذير: الدالة '{func_name}' مكررة وتجاوز عن التكرار.")
        continue
    seen_names.add(func_name)
    file_name = f"{idx:03d}_{func_name}.sql"
    file_path = os.path.join(output_dir, file_name)
    with open(file_path, 'w', encoding='utf-8') as out_f:
        out_f.write(func_body + '\n')
    print(f"تم استخراج: {file_name}")

print(f"\nتم استخراج {len(seen_names)} دالة مخزنة إلى مجلد '{output_dir}'.")