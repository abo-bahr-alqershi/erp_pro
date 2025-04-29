import re
import os

def detect_encoding(file_path, fallback="utf-8"):
    try:
        import chardet
        with open(file_path, 'rb') as f:
            raw = f.read(10000)
        result = chardet.detect(raw)
        encoding = result['encoding']
        if not encoding or encoding.lower() == "ascii":
            encoding = fallback
        return encoding
    except Exception:
        return fallback

def extract_tables_from_sql(sql_path):
    table_names = set()
    encoding = detect_encoding(sql_path, fallback="iso-8859-9")
    pattern = re.compile(
        r'CREATE\s+TABLE\s+(?:IF\s+NOT\s+EXISTS\s+)?(?:"|\[)?([A-Z0-9_]+)(?:"|\])?\s*\(',
        re.IGNORECASE
    )
    with open(sql_path, 'r', encoding=encoding) as f:
        for line in f:
            match = pattern.search(line)
            if match:
                table_names.add(match.group(1).upper())
    return sorted(table_names)

def extract_foreign_keys_from_sql(sql_path):
    foreign_keys = []
    encoding = detect_encoding(sql_path, fallback="iso-8859-9")
    with open(sql_path, 'r', encoding=encoding) as f:
        sql_content = f.read()

    # علاقات من أوامر ALTER TABLE ... ADD CONSTRAINT ... FOREIGN KEY ...
    alter_fk_pattern = re.compile(
        r'ALTER\s+TABLE\s+"?([A-Z0-9_]+)"?\s+ADD\s+CONSTRAINT\s+"?([A-Z0-9_]+)"?\s+FOREIGN\s+KEY\s*\(\s*"?(.*?)"?\s*\)\s+REFERENCES\s+"?([A-Z0-9_]+)"?\s*\(\s*"?(.*?)"?\s*\)',
        re.IGNORECASE | re.DOTALL
    )
    for match in alter_fk_pattern.finditer(sql_content):
        from_table = match.group(1).upper()
        from_field = match.group(3).replace('"', '').strip().upper()
        to_table   = match.group(4).upper()
        to_field   = match.group(5).replace('"', '').strip().upper()
        foreign_keys.append((from_table, from_field, to_table, to_field))

    # علاقات ضمن CREATE TABLE (inline)
    inline_fk_pattern = re.compile(
        r'CONSTRAINT\s+"?([A-Z0-9_]+)"?\s+FOREIGN\s+KEY\s*\(\s*"?(.*?)"?\s*\)\s+REFERENCES\s+"?([A-Z0-9_]+)"?\s*\(\s*"?(.*?)"?\s*\)',
        re.IGNORECASE | re.DOTALL
    )
    create_table_pattern = re.compile(
        r'CREATE\s+TABLE\s+(?:"|\[)?([A-Z0-9_]+)(?:"|\])?\s*\((.*?)\)[^;]*;', re.IGNORECASE | re.DOTALL
    )
    for tbl_match in create_table_pattern.finditer(sql_content):
        table = tbl_match.group(1).upper()
        body = tbl_match.group(2)
        for fk_match in inline_fk_pattern.finditer(body):
            from_field = fk_match.group(2).replace('"', '').strip().upper()
            to_table   = fk_match.group(3).upper()
            to_field   = fk_match.group(4).replace('"', '').strip().upper()
            foreign_keys.append((table, from_field, to_table, to_field))
    return foreign_keys

def extract_table_name_map_from_md(md_path):
    name_map = {}
    encoding = detect_encoding(md_path)
    with open(md_path, 'r', encoding=encoding) as f:
        content = f.read()
    pattern = re.compile(r'-\s+([A-Za-z0-9_]+)\s+\(\*\*([A-Za-z0-9_]+)\*\*\)')
    for match in pattern.finditer(content):
        new_name = match.group(1)
        old_name = match.group(2).upper()
        name_map[old_name] = new_name
    return name_map

def extract_field_name_map_from_md(files):
    field_map = {}
    for file_path in files:
        if not os.path.exists(file_path):
            print(f"ملف الحقول غير موجود: {file_path}")
            continue
        encoding = detect_encoding(file_path)
        with open(file_path, 'r', encoding=encoding) as f:
            content = f.read()
        table_sections = re.split(r'^#+\s+([^\n\(]+)\s+\(\*\*([A-Za-z0-9_]+)\*\*\).*$', content, flags=re.MULTILINE)
        if len(table_sections) == 1:
            table_name = None
            lines = content.splitlines()
            for line in lines:
                m = re.match(r'-\s+([A-Za-z0-9_]+)\s+\(\*\*([A-Za-z0-9_]+)\*\*\)', line)
                if m:
                    field_new = m.group(1)
                    field_old = m.group(2).upper()
                    if table_name not in field_map:
                        field_map[table_name] = {}
                    field_map[table_name][field_old] = field_new
            for line in lines:
                if "|" in line:
                    cols = [c.strip() for c in line.split("|")]
                    if len(cols) >= 3 and cols[1] and cols[2]:
                        field_new = cols[1]
                        field_old = cols[2].upper()
                        if table_name not in field_map:
                            field_map[table_name] = {}
                        field_map[table_name][field_old] = field_new
            continue

        i = 1
        while i + 1 < len(table_sections):
            table_new = table_sections[i].strip()
            table_sql = table_sections[i+1].strip().upper()
            section = table_sections[i+2] if (i+2)<len(table_sections) else ""
            i += 3
            lines = section.splitlines()
            for line in lines:
                m = re.match(r'-\s+([A-Za-z0-9_]+)\s+\(\*\*([A-Za-z0-9_]+)\*\*\)', line)
                if m:
                    field_new = m.group(1)
                    field_old = m.group(2).upper()
                    if table_sql not in field_map:
                        field_map[table_sql] = {}
                    field_map[table_sql][field_old] = field_new
            for line in lines:
                if "|" in line:
                    cols = [c.strip() for c in line.split("|")]
                    if len(cols) >= 3 and cols[1] and cols[2]:
                        field_new = cols[1]
                        field_old = cols[2].upper()
                        if table_sql not in field_map:
                            field_map[table_sql] = {}
                        field_map[table_sql][field_old] = field_new
    return field_map

def build_table_relationships(tables, foreign_keys):
    table_rels = {tbl: [] for tbl in tables}
    for from_tbl, from_field, to_tbl, to_field in foreign_keys:
        rel_str = (from_tbl, from_field, to_tbl, to_field)
        if from_tbl in table_rels:
            table_rels[from_tbl].append(rel_str)
    return table_rels

def format_field_names(table, field_names, field_name_map, table_name_map):
    if not field_names:
        return '"" []'
    fields = [f.strip().upper() for f in field_names.split(",")]
    result = []
    table_new = table_name_map.get(table, None)
    for f in fields:
        new = field_name_map.get(table, {}).get(f)
        if new is None and table_new:
            new = field_name_map.get(table_new, {}).get(f)
        if new is None:
            new = "؟؟؟"
        result.append(f'"{f}" [{new}]')
    return ', '.join(result)

def save_output(content, filename="relationships_output.txt"):
    with open(filename, "w", encoding="utf-8") as f:
        f.write(content)
    print(f"\nتم حفظ النتائج في الملف: {filename}")

def main():
    sql_path = "cr_db_.sql"
    md_tables_path = "Domain-Modules-Tables.md"
    field_files = [
        "modules_create_tables/Inventory & Warehouses/Inventory & Warehouses.md",
        "modules_create_tables/HR & Payroll/HR & Payroll.md",
        "modules_create_tables/Users & Permissions/Users & Permissions.md",
        "modules_create_tables/Uncategorized/Uncategorized.sql",
        "modules_create_tables/Taxation/Taxation.md",
        "modules_create_tables/Sales & Customers/Sales & Customers.md",
        "modules_create_tables/Reports & Settings/Reports & Settings.md",
        "modules_create_tables/Purchases & Vendors/Purchases & Vendors.md",
        "modules_create_tables/Projects & Contracts/Projects & Contracts.md",
        "modules_create_tables/POS/POS.md",
        "modules_create_tables/Miscellaneous/Miscellaneous.md",
        "modules_create_tables/Measurement & Units/Measurement & Units.md",
        "modules_create_tables/Fixed Assets/Fixed Assets.md",
        "modules_create_tables/Cash & Banks & Safes/Cash & Banks & Safes.md",
        "modules_create_tables/Attachments & System Support/Attachments & System Support.md",
        "modules_create_tables/Accounting & Journals/Accounting & Journals.md",
    ]

    if not os.path.exists(sql_path):
        print(f"ملف cr_db_.sql غير موجود في المسار الحالي: {os.getcwd()}")
        return
    if not os.path.exists(md_tables_path):
        print(f"ملف Domain-Modules-Tables.md غير موجود في المسار الحالي: {os.getcwd()}")
        return

    table_name_map = extract_table_name_map_from_md(md_tables_path)
    valid_tables = set(table_name_map.keys())
    field_name_map = extract_field_name_map_from_md(field_files)
    tables = extract_tables_from_sql(sql_path)
    foreign_keys = extract_foreign_keys_from_sql(sql_path)
    filtered_tables = [tbl for tbl in tables if tbl in valid_tables]
    filtered_foreign_keys = [
        (from_tbl, from_field, to_tbl, to_field)
        for from_tbl, from_field, to_tbl, to_field in foreign_keys
        if from_tbl in valid_tables and to_tbl in valid_tables
    ]
    table_rels = build_table_relationships(filtered_tables, filtered_foreign_keys)

    output_lines = []
    for table in filtered_tables:
        table_new = table_name_map.get(table, "")
        output_lines.append(f"\nجدول: {table} ({table_new})")
        if table_rels[table]:
            for rel in table_rels[table]:
                from_tbl, from_field, to_tbl, to_field = rel
                from_tbl_new = table_name_map.get(from_tbl, "")
                to_tbl_new = table_name_map.get(to_tbl, "")
                from_field_str = format_field_names(from_tbl, from_field, field_name_map, table_name_map)
                to_field_str = format_field_names(to_tbl, to_field, field_name_map, table_name_map)
                output_lines.append(f"  - {from_tbl} ({from_tbl_new})({from_field_str}) → {to_tbl} ({to_tbl_new})({to_field_str})")
        else:
            output_lines.append("  لا توجد علاقات معرفة في ملف SQL.")

    output_lines.append(f"\nتم استخراج {len(filtered_tables)} جدول و {len(filtered_foreign_keys)} علاقة بعد التصفية.")

    save_output('\n'.join(output_lines), filename="relationships_output.txt")

if __name__ == "__main__":
    main()
