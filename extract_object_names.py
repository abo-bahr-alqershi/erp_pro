import re
import sys
import os

object_type = input("أدخل نوع العنصر (view/procedure/function/trigger): ").strip().lower()
folder = input("أدخل اسم المجلد الذي يحتوي ملفات SQL: ").strip()

if not os.path.isdir(folder):
    print(f"المجلد '{folder}' غير موجود!")
    sys.exit(1)

regex_patterns = {
    "view":      r'CREATE\s+(?:OR\s+REPLACE\s+)?VIEW\s+([`"\[\]\w\d_]+)',
    "procedure": r'CREATE\s+(?:OR\s+REPLACE\s+)?PROCEDURE\s+([`"\[\]\w\d_]+)',
    "function":  r'CREATE\s+(?:OR\s+REPLACE\s+)?FUNCTION\s+([`"\[\]\w\d_]+)',
    "trigger":   r'CREATE\s+(?:OR\s+REPLACE\s+)?TRIGGER\s+([`"\[\]\w\d_]+)',
}

if object_type not in regex_patterns:
    print("نوع العنصر غير معروف! اختر: view أو procedure أو function أو trigger")
    sys.exit(1)

pattern = re.compile(regex_patterns[object_type], re.IGNORECASE)

output_file = f"{os.path.basename(folder)}_{object_type}_names.txt"
matches = set()

for file in os.listdir(folder):
    if file.lower().endswith('.sql'):
        file_path = os.path.join(folder, file)
        try:
            with open(file_path, 'r', encoding='utf-8', errors='replace') as f:
                sql_text = f.read()
        except Exception as e:
            print(f"فشل فتح الملف {file}: {e}")
            continue
        for m in pattern.finditer(sql_text):
            name = m.group(1).strip('`"[]')
            if name:
                matches.add(name)

if not matches:
    print(f"لم يتم العثور على أي أسماء {object_type} في الملفات داخل '{folder}'.")
    sys.exit(0)

with open(output_file, 'w', encoding='utf-8') as out_f:
    for name in sorted(matches):
        out_f.write(name + '\n')

print(f"تم استخراج {len(matches)} اسم {object_type} إلى الملف '{output_file}'.")
