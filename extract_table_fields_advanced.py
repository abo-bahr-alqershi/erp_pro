import re

SQL_FILE = "cr_db_.sql"
DOMAIN_MAP_FILE = "Domain-Modules-Tables.md"  # مسار خريطة الدومين (اختياري)
OUTPUT_FILE = "tables_fields.md"

# تحميل خريطة أسماء الجداول والحقول الدومينية (اختياري)
table_map = {}
field_map = {}
try:
    with open(DOMAIN_MAP_FILE, encoding="utf-8") as f:
        for line in f:
            table_match = re.match(r"^\s*-\s*([A-Za-z0-9_]+)\s+\(\*\*([A-Z0-9_]+)\*\*\)", line)
            if table_match:
                domain, old = table_match.groups()
                table_map[old.upper()] = domain
            field_match = re.match(r"^\s+\*\s+([A-Za-z0-9_]+)\s+\(\*\*([A-Z0-9_]+)\*\*\)", line)
            if field_match:
                domain, old = field_match.groups()
                field_map[old.upper()] = domain
except Exception:
    pass

def to_domain_table(table):
    return f"{table_map.get(table.upper(), table)} ({table})"

def to_domain_field(field):
    return f"{field_map.get(field.upper(), field)} ({field})"

def clean_col(col):
    return col.strip().replace('"', '').replace('`', '').replace('[','').replace(']','')

# قراءة ملف SQL
with open(SQL_FILE, encoding="cp1256", errors="replace") as f:
    sql = f.read()

# نمط التقاط كل جدول
table_pattern = re.compile(
    r'CREATE\s+TABLE\s+(?:["`\[])?(\w+)(?:["`\]])?\s*\((.*?)\)\s*;',
    re.IGNORECASE | re.DOTALL
)
# التقاط PRIMARY KEY ضمن الجدول
pk_inside_pattern = re.compile(
    r'PRIMARY\s+KEY\s*\((.*?)\)', re.IGNORECASE
)

output = []

for tmatch in table_pattern.finditer(sql):
    table = tmatch.group(1)
    body = tmatch.group(2)
    # استخراج جميع أعمدة الجدول
    # الأعمدة تنتهي بفاصلة، لكن قد توجد قيود في النهاية
    fields = []
    pk_fields = set()
    # استخراج الأعمدة (سطر بسطر)
    lines = [l.strip() for l in re.split(r",\s*\n", body)]
    for line in lines:
        # تجاهل التعليقات والقيود
        if line.upper().startswith('CONSTRAINT') or 'FOREIGN KEY' in line.upper() or 'PRIMARY KEY' in line.upper() or line == '':
            # التقاط PK المركب داخل الجدول
            pk_m = pk_inside_pattern.search(line)
            if pk_m:
                pk_fields.update([clean_col(x) for x in pk_m.group(1).split(',')])
            continue
        # التقاط اسم الحقل
        m = re.match(r'["`\[]?(\w+)["`\]]?\s+([A-Z0-9_()\s,]+)(.*)', line, re.IGNORECASE)
        if m:
            col = clean_col(m.group(1))
            typ = m.group(2).strip()
            rest = m.group(3).strip()
            nullable = "NOT NULL" in rest.upper() or "NOT NULL" in typ.upper()
            default = ""
            default_m = re.search(r'DEFAULT\s+([^\s]+)', rest, re.IGNORECASE)
            if default_m:
                default = default_m.group(1)
            fields.append({
                "name": col,
                "type": typ,
                "nullable": not nullable,
                "required": nullable,
                "default": default,
                "pk": False  # سيتم ضبطها لاحقًا
            })

    # البحث عن PK عبر ALTER TABLE (خارج الجدول)
    pk_alter_pattern = re.compile(
        rf'ALTER\s+TABLE\s+["`\[]?{table}["`\]]?\s+ADD\s+CONSTRAINT\s+["`\[]?\w+["`\]]?\s+PRIMARY\s+KEY\s*\((.*?)\)', re.IGNORECASE
    )
    for pk_m in pk_alter_pattern.finditer(sql):
        pk_fields.update([clean_col(x) for x in pk_m.group(1).split(',')])

    # ضبط الـ PK للأعمدة
    for fld in fields:
        if fld["name"] in pk_fields:
            fld["pk"] = True

    # توليد Markdown
    output.append(f"## {to_domain_table(table)}")
    output.append("")
    output.append("| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |")
    output.append("|-------|--------------|-------|--------|--------------|-------------|")
    for fld in fields:
        output.append(
            f"| {fld['name']} | {to_domain_field(fld['name'])} | {fld['type']} | "
            f"{'إجباري' if fld['required'] else 'اختياري'} | {fld['default'] or ''} | "
            f"{'PK' if fld['pk'] else ''} |"
        )
    output.append("")

with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
    f.write('\n'.join(output))

print(f"تم استخراج معلومات {len(output)//8} جدول وحفظها في {OUTPUT_FILE}")