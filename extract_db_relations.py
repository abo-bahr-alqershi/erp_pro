import re

SQL_FILE = "cr_db_.sql"
DOMAIN_MAP_FILE = "Domain-Modules-Tables.md"  # اختياري
OUTPUT_FILE = "all_table_relations.md"

# تحميل خريطة الأسماء الدومينية (اختياري)
domain_map = {}
try:
    with open(DOMAIN_MAP_FILE, encoding="utf-8") as f:
        for line in f:
            m = re.match(r"^\s*-\s*([A-Za-z0-9_]+)\s+\(\*\*([A-Z0-9_]+)\*\*\)", line)
            if m:
                domain, old = m.groups()
                domain_map[old.upper()] = domain
except Exception:
    pass

def to_domain(table):
    return f"{domain_map.get(table.upper(), table)} ({table})"

def clean_col(col):
    return col.strip().replace('"', '').replace('`', '').replace('[','').replace(']','')

with open(SQL_FILE, encoding="cp1256", errors="replace") as f:
    sql = f.read()

relations = []

# علاقات داخل CREATE TABLE
table_pattern = re.compile(
    r'CREATE\s+TABLE\s+(?:["`\[])?(\w+)(?:["`\]])?\s*\((.*?)\)\s*;',
    re.IGNORECASE | re.DOTALL
)
fk_pattern = re.compile(
    r'FOREIGN\s+KEY\s*\((.*?)\)\s*REFERENCES\s+(?:["`\[])?(\w+)(?:["`\]])?\s*\((.*?)\)',
    re.IGNORECASE | re.DOTALL
)

for tmatch in table_pattern.finditer(sql):
    table = tmatch.group(1)
    body = tmatch.group(2)
    for fkm in fk_pattern.finditer(body):
        fk_cols = [clean_col(col) for col in fkm.group(1).split(',')]
        ref_table = fkm.group(2)
        ref_cols = [clean_col(col) for col in fkm.group(3).split(',')]
        left = to_domain(ref_table)
        right = to_domain(table)
        if len(fk_cols) == len(ref_cols) == 1:
            rel = f"{left} 1 ---- * {right}   ({ref_table}.{ref_cols[0]} → {table}.{fk_cols[0]})"
        else:
            pairs = ', '.join(f"{ref_table}.{rc} → {table}.{fc}" for rc, fc in zip(ref_cols, fk_cols))
            rel = f"{left} 1 ---- * {right}   ({pairs})"
        relations.append(rel)

# علاقات عبر ALTER TABLE
alter_fk_pattern = re.compile(
    r'ALTER\s+TABLE\s+(?:["`\[])?(\w+)(?:["`\]])?\s+ADD\s+CONSTRAINT\s+(?:["`\[])?[\w\d_]+(?:["`\]])?\s+FOREIGN\s+KEY\s*\((.*?)\)\s+REFERENCES\s+(?:["`\[])?(\w+)(?:["`\]])?\s*\((.*?)\)',
    re.IGNORECASE | re.DOTALL
)

for afk in alter_fk_pattern.finditer(sql):
    table = afk.group(1)
    fk_cols = [clean_col(col) for col in afk.group(2).split(',')]
    ref_table = afk.group(3)
    ref_cols = [clean_col(col) for col in afk.group(4).split(',')]
    left = to_domain(ref_table)
    right = to_domain(table)
    if len(fk_cols) == len(ref_cols) == 1:
        rel = f"{left} 1 ---- * {right}   ({ref_table}.{ref_cols[0]} → {table}.{fk_cols[0]})"
    else:
        pairs = ', '.join(f"{ref_table}.{rc} → {table}.{fc}" for rc, fc in zip(ref_cols, fk_cols))
        rel = f"{left} 1 ---- * {right}   ({pairs})"
    relations.append(rel)

with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
    f.write("# جميع علاقات المفاتيح الأجنبية\n\n")
    f.write("الصيغة: NewName (OldName) 1 ---- * NewName2 (OldName2)   (OldName1.PK_COL → OldName2.FK_COL)\n\n")
    for rel in relations:
        f.write(rel + "\n")

print(f"تم استخراج {len(relations)} علاقة وحفظها في {OUTPUT_FILE}")
