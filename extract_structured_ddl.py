import re
import json

# إعدادات
INPUT_FILE = "fmx_analysis_report.txt"
SQL_OUTPUT_FILE = "db_schema_cleaned.sql"
JSON_OUTPUT_FILE = "db_schema.json"

# أنماط منتظمة لاستخراج الجداول
CREATE_TABLE_RE = re.compile(
    r"CREATE\s+TABLE\s+([^\s(]+)\s*\((.*?)\);",
    re.IGNORECASE | re.DOTALL
)
FIELD_LINE_RE = re.compile(
    r"^\s*([A-Za-z0-9_\-\u0600-\u06FF]+)\s+([A-Za-z0-9_\(\), ]+)(?:,)?\s*$"
)
PRIMARY_KEY_RE = re.compile(
    r"PRIMARY\s+KEY\s*\((.*?)\)", re.IGNORECASE
)
FOREIGN_KEY_RE = re.compile(
    r"FOREIGN\s+KEY\s*\((.*?)\)\s*REFERENCES\s+([A-Za-z0-9_\-\u0600-\u06FF]+)\s*\((.*?)\)",
    re.IGNORECASE
)
CONSTRAINT_RE = re.compile(
    r"CONSTRAINT\s+([A-Za-z0-9_]+)\s+([A-Za-z0-9_ ]+)\s*\((.*?)\)", re.IGNORECASE
)

def clean_sql(sql):
    # تنظيف الفاصلة الزائدة، الفراغات، حذف التكرار
    sql = re.sub(r',\s*\)', ')', sql)
    sql = re.sub(r'\n+', '\n', sql)
    sql = re.sub(r'[ \t]+', ' ', sql)
    return sql.strip()

def extract_tables(text):
    tables = []
    for match in CREATE_TABLE_RE.finditer(text):
        table_name = match.group(1).strip()
        fields_block = match.group(2)
        # افصل الأسطر/الحقول
        lines = [l.strip() for l in re.split(r',\s*\n|,\n|,\s*', fields_block) if l.strip()]
        fields = []
        pk = []
        fks = []
        constraints = []
        for line in lines:
            # تحقق هل هو حقل أم قيود؟
            if PRIMARY_KEY_RE.search(line):
                # مفتاح أساسي
                pk += [f.strip() for f in PRIMARY_KEY_RE.search(line).group(1).split(',')]
            elif FOREIGN_KEY_RE.search(line):
                m = FOREIGN_KEY_RE.search(line)
                fks.append({
                    "fields": [f.strip() for f in m.group(1).split(',')],
                    "ref_table": m.group(2).strip(),
                    "ref_fields": [f.strip() for f in m.group(3).split(',')]
                })
            elif CONSTRAINT_RE.search(line):
                m = CONSTRAINT_RE.search(line)
                constraints.append({
                    "name": m.group(1),
                    "type": m.group(2).strip(),
                    "fields": [f.strip() for f in m.group(3).split(',')]
                })
            elif FIELD_LINE_RE.match(line) and not line.lower().startswith(('primary','foreign','constraint')):
                # سطر حقل عادي
                parts = line.split()
                field_name = parts[0]
                field_type = " ".join(parts[1:])
                fields.append({"name": field_name, "type": field_type})
            elif len(line) > 0:
                # سطر مشبوه أو غير مكتمل: علّق عليه في المخرجات
                fields.append({"name": f"# راجع هذا السطر يدويًا:", "type": line})
        tables.append({
            "table": table_name,
            "fields": fields,
            "primary_key": pk,
            "foreign_keys": fks,
            "constraints": constraints
        })
    return tables

def main():
    with open(INPUT_FILE, encoding='utf-8') as f:
        txt = f.read()
    tables = extract_tables(txt)

    # 1- إخراج SQL نظيف
    with open(SQL_OUTPUT_FILE, "w", encoding="utf-8") as sqlout:
        for t in tables:
            sqlout.write(f"-- Table: {t['table']}\nCREATE TABLE {t['table']} (\n")
            for field in t["fields"]:
                if field["name"].startswith("# راجع"):
                    sqlout.write(f"    -- {field['type']}\n")
                else:
                    sqlout.write(f"    {field['name']} {field['type']},\n")
            if t["primary_key"]:
                sqlout.write(f"    PRIMARY KEY ({', '.join(t['primary_key'])}),\n")
            for fk in t["foreign_keys"]:
                sqlout.write(
                    f"    FOREIGN KEY ({', '.join(fk['fields'])}) REFERENCES {fk['ref_table']}({', '.join(fk['ref_fields'])}),\n"
                )
            for c in t["constraints"]:
                sqlout.write(
                    f"    CONSTRAINT {c['name']} {c['type']} ({', '.join(c['fields'])}),\n"
                )
            sqlout.seek(sqlout.tell() - 2)  # احذف الفاصلة الأخيرة
            sqlout.write("\n);\n\n")

    # 2- إخراج JSON منظم
    with open(JSON_OUTPUT_FILE, "w", encoding="utf-8") as jout:
        json.dump(tables, jout, ensure_ascii=False, indent=2)
    print(f"تم استخراج {len(tables)} جدولًا بنجاح.")
    print(f"راجع الملفات:\n- {SQL_OUTPUT_FILE}\n- {JSON_OUTPUT_FILE}")

if __name__ == "__main__":
    main()