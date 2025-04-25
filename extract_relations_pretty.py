import re

# غيّر اسم الملف هنا إذا أردت القراءة من cr_db_.sql مباشرة
relations_file = "relations.txt"

with open(relations_file, encoding="utf-8") as f:
    lines = f.readlines()

relations = []
for line in lines:
    # ابحث عن العلاقات في الصيغة: TABLE1.COLUMN1 -> TABLE2.COLUMN2
    match = re.match(r'(\w+)\.(\w+)\s*->\s*(\w+)\.(\w+)', line.strip())
    if match:
        fk_table, fk_col, pk_table, pk_col = match.groups()
        # اعرضها بالشكل الدوميني الحديث
        relations.append(f"{pk_table} 1 ---- * {fk_table}   ({pk_table}.{pk_col} -> {fk_table}.{fk_col})")

# اطبع النتائج بشكل واضح
for rel in relations:
    print(rel)