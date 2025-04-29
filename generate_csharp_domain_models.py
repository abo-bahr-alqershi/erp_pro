import os
import re
import requests

# ---------- أدوات مساعدة للتحميل ----------
def download_file(url, local_path):
    print(f"جاري تحميل: {url}")
    r = requests.get(url)
    r.raise_for_status()
    with open(local_path, "wb") as f:
        f.write(r.content)

def ensure_local_copy(url, cache_dir="cache"):
    os.makedirs(cache_dir, exist_ok=True)
    fname = url.split("/")[-1]
    local_path = os.path.join(cache_dir, fname)
    if not os.path.exists(local_path):
        download_file(url, local_path)
    return local_path

def read_file(path):
    with open(path, "r", encoding="utf-8") as f:
        return f.read()

# ---------- أدوات تحليل SQL ----------
def extract_tables_from_sql(sql):
    pattern = re.compile(r'CREATE\s+TABLE\s+"?([A-Z0-9_]+)"?', re.IGNORECASE)
    return sorted(set(m.group(1).upper() for m in pattern.finditer(sql)))

def extract_create_table_blocks(sql):
    """
    Returns dict: {TABLE_NAME: create_table_sql_block}
    """
    blocks = {}
    matches = list(re.finditer(r'(CREATE\s+TABLE\s+"?[A-Z0-9_]+"?\s*\(.*?\));', sql, re.DOTALL | re.IGNORECASE))
    for m in matches:
        block = m.group(1)
        name_match = re.search(r'CREATE\s+TABLE\s+"?([A-Z0-9_]+)"?', block, re.IGNORECASE)
        if name_match:
            name = name_match.group(1).upper()
            blocks[name] = block
    return blocks

def parse_columns_from_create_block(create_sql):
    """
    Returns: [(column_name, sql_type, nullable, constraints)]
    """
    body = re.search(r'\((.*)\)', create_sql, re.DOTALL).group(1)
    lines = []
    cur = ""
    parens = 0
    for c in body:
        if c == "(":
            parens += 1
        elif c == ")":
            parens -= 1
        if c == "," and parens == 0:
            lines.append(cur.strip())
            cur = ""
        else:
            cur += c
    if cur.strip():
        lines.append(cur.strip())
    columns = []
    for l in lines:
        m = re.match(r'"?([A-Z0-9_]+)"?\s+([A-Z0-9]+)(\([^)]+\))?(.*)', l.strip(), re.IGNORECASE)
        if m:
            col = m.group(1)
            typ = m.group(2)
            rest = m.group(4)
            nullable = ("NOT NULL" not in rest.upper())
            columns.append((col, typ, nullable, rest.strip()))
    return columns

# ---------- أدوات تحليل ملفات الحقول ----------
def extract_table_field_map(md_content):
    """
    Returns: {TABLE_NAME: {OLD_FIELD: NEW_FIELD}}
    """
    table_map = {}
    table_name = None
    for line in md_content.splitlines():
        table_match = re.match(r'#+\s+(.+)\s+\(\*\*([A-Z0-9_]+)\*\*\)', line)
        if table_match:
            table_name = table_match.group(2).upper()
            if table_name not in table_map:
                table_map[table_name] = {}
        field_match = re.match(r'-\s+([A-Za-z0-9_]+)\s+\(\*\*([A-Za-z0-9_]+)\*\*\)', line)
        if field_match and table_name:
            new_f = field_match.group(1)
            old_f = field_match.group(2).upper()
            table_map[table_name][old_f] = new_f
    return table_map

def merge_table_maps(maps):
    final = {}
    for m in maps:
        for tbl, fields in m.items():
            if tbl not in final:
                final[tbl] = {}
            final[tbl].update(fields)
    return final

# ---------- أدوات العلاقات ----------
def parse_relations_file(content):
    """
    Returns: {FROM_TABLE: [(FROM_FIELD, TO_TABLE, TO_FIELD)]}
    """
    rels = {}
    lines = content.splitlines()
    for l in lines:
        m = re.match(r'\s*-\s+([A-Z0-9_]+).*?\("([^"]+)"\s*\[.*?\]\)\s*→\s*([A-Z0-9_]+).*?\("([^"]+)"\s*\[.*?\]\)', l)
        if m:
            from_tbl = m.group(1).upper()
            from_field = m.group(2).upper()
            to_tbl = m.group(3).upper()
            to_field = m.group(4).upper()
            if from_tbl not in rels:
                rels[from_tbl] = []
            rels[from_tbl].append((from_field, to_tbl, to_field))
    return rels

# ---------- أدوات التريجرز ----------
def extract_triggers(md_content):
    """
    Returns: {TABLE_NAME: [event_name]}
    """
    result = {}
    cur_table = None
    for line in md_content.splitlines():
        m = re.match(r'#+\s*(?:TRIGGER|تريجر)\s+([A-Z0-9_]+)', line, re.IGNORECASE)
        if m:
            cur_table = m.group(1).upper()
            if cur_table not in result:
                result[cur_table] = []
        evm = re.match(r'-\s+(AFTER|BEFORE|INSTEAD OF)\s+([A-Z ]+)', line, re.IGNORECASE)
        if cur_table and evm:
            ev = evm.group(2).strip()
            result[cur_table].append(ev)
    return result

def merge_trigger_maps(maps):
    out = {}
    for m in maps:
        for tbl, events in m.items():
            if tbl not in out:
                out[tbl] = []
            out[tbl].extend(events)
    return out

# ---------- تحويل نوع SQL إلى C# ----------
def map_sql_type_to_csharp(sql_type):
    t = sql_type.upper()
    if t in ("VARCHAR2", "VARCHAR", "NVARCHAR2", "CHAR", "CLOB"):
        return "string"
    if t == "NUMBER":
        return "decimal" # يمكن التخصيص بدقة أكثر حسب القيود
    if t == "DATE" or t == "TIMESTAMP":
        return "DateTime"
    if t == "FLOAT":
        return "float"
    if t == "BLOB":
        return "byte[]"
    return "string"

def to_pascal_case(s):
    return ''.join(word.capitalize() for word in s.lower().split('_'))

# ---------- توليد كود الموديل ----------
def generate_model_code(table, columns, field_map, relations, triggers, common=None):
    class_name = to_pascal_case(table.lower())
    if common is None:
        common = []
    result = []
    # Header
    base = " : " + ", ".join(common) if common else ""
    result.append(f"public class {class_name}{base}")
    result.append("{")
    # Properties
    for col, typ, nullable, _ in columns:
        field_new = field_map.get(col, to_pascal_case(col))
        cstype = map_sql_type_to_csharp(typ)
        null_sfx = "?" if nullable and cstype != "string" and not cstype.endswith("[]") else ""
        result.append(f"    public {cstype}{null_sfx} {field_new} {{ get; private set; }}")
    # Relations
    if relations and table in relations:
        for from_field, to_tbl, to_field in relations[table]:
            rel_prop = to_pascal_case(to_tbl.lower())
            result.append(f"    public {rel_prop} {rel_prop} {{ get; private set; }} // علاقة خارجية")
    # Events
    if triggers and table in triggers:
        for ev in triggers[table]:
            ev_prop = to_pascal_case(ev.replace(" ", ""))
            result.append(f"    // حدث: {ev_prop}")
    result.append("}")
    return '\n'.join(result)

# ---------- إخراج الملفات ----------
def save_output_to_file(content, out_dir, filename):
    os.makedirs(out_dir, exist_ok=True)
    path = os.path.join(out_dir, filename)
    with open(path, "w", encoding="utf-8") as f:
        f.write(content)
    print(f"تم حفظ الملف: {path}")

# ---------- السكربت الرئيسي ----------
def main():
    # ----------- إعداد المصادر -----------
    sql_url = "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/cr_db_.sql"
    field_md_urls = [
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/Inventory%20%26%20Warehouses/Inventory%20%26%20Warehouses.md",
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/HR%20%26%20Payroll/HR%20%26%20Payroll.md",
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/Users%20%26%20Permissions/Users%20%26%20Permissions.md",
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/Uncategorized/Uncategorized.sql",
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/Taxation/Taxation.md",
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/Sales%20%26%20Customers/Sales%20%26%20Customers.md",
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/Reports%20%26%20Settings/Reports%20%26%20Settings.md",
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/Purchases%20%26%20Vendors/Purchases%20%26%20Vendors.md",
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/Projects%20%26%20Contracts/Projects%20%26%20Contracts.md",
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/POS/POS.md",
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/Miscellaneous/Miscellaneous.md",
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/Measurement%20%26%20Units/Measurement%20%26%20Units.md",
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/Fixed%20Assets/Fixed%20Assets.md",
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/Cash%20%26%20Banks%20%26%20Safes/Cash%20%26%20Banks%20%26%20Safes.md",
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/Attachments%20%26%20System%20Support/Attachments%20%26%20System%20Support.md",
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/Accounting%20%26%20Journals/Accounting%20%26%20Journals.md",
    ]
    relations_url = "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/relations.txt"
    triggers_urls = [
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/-----DB-----/triggers/ERP_Accounting_Triggers_Arabic.md",
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/-----DB-----/triggers/ERP_Cash_Banks_Safes_Triggers_Arabic.md",
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/-----DB-----/triggers/ERP_HR_Triggers_Arabic.md",
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/-----DB-----/triggers/ERP_Inventory_Triggers_Arabic.md",
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/-----DB-----/triggers/ERP_Other_Triggers_Arabic.md",
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/-----DB-----/triggers/ERP_Purchases_Vendors_Triggers_Arabic.md",
        "https://github.com/abo-bahr-alqershi/erp_pro/raw/main/modules_create_tables/-----DB-----/triggers/ERP_Sales_Customers_Triggers_Arabic.md",
    ]
    # ----------- تحميل الملفات -----------
    sql_path = ensure_local_copy(sql_url)
    relations_path = ensure_local_copy(relations_url)
    field_md_paths = [ensure_local_copy(url) for url in field_md_urls]
    triggers_paths = [ensure_local_copy(url) for url in triggers_urls]

    # ----------- تحليل ----------
    sql_text = read_file(sql_path)
    relation_text = read_file(relations_path)
    field_maps = [extract_table_field_map(read_file(p)) for p in field_md_paths if p.endswith(".md")]
    field_map = merge_table_maps(field_maps)
    relations = parse_relations_file(relation_text)
    triggers_maps = [extract_triggers(read_file(p)) for p in triggers_paths]
    triggers = merge_trigger_maps(triggers_maps)
    create_blocks = extract_create_table_blocks(sql_text)

    # ----------- توليد الموديلات وحفظها -----------
    output_dir = "output/DomainModels"
    warnings = []
    for table, create_sql in create_blocks.items():
        columns = parse_columns_from_create_block(create_sql)
        tbl_field_map = field_map.get(table, {})
        # جمع العلاقات والأحداث
        rels = relations if table in relations else None
        trgs = triggers if table in triggers else None
        # جزء ال common (قابل للتخصيص)
        common = ["IAggregateRoot"] if "ID" in tbl_field_map.values() else []
        model_code = generate_model_code(table, columns, tbl_field_map, relations, triggers, common)
        save_output_to_file(model_code, output_dir, f"{to_pascal_case(table)}.cs")
        # تحذيرات
        for col, _, _, _ in columns:
            if col not in tbl_field_map:
                warnings.append(f"تحذير: الحقل {col} في الجدول {table} لم يُعثر له على اسم جديد.")
        if table not in field_map:
            warnings.append(f"تحذير: لم يتم العثور على تعريف حقول جديد للجدول {table}.")

    # ----------- إخراج التحذيرات -----------
    if warnings:
        save_output_to_file("\n".join(warnings), "output/Reports", "warnings.txt")
        print("راجع ملف: output/Reports/warnings.txt")

if __name__ == "__main__":
    main()