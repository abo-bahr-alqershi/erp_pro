import os
import re
import csv
from collections import defaultdict

########### إعدادات ###########
OUTPUT_ROOT = "output/Domain"
MODULES_CSV_PATH = "tables_mapping_with_modules.csv"
FIELDS_MAPPING_CSV = "fields_mapping.csv"
TRIGGERS_PATHS = [
    "modules_create_tables/-----DB-----/triggers/ERP_Accounting_Triggers_Arabic.md",
    "modules_create_tables/-----DB-----/triggers/ERP_Cash_Banks_Safes_Triggers_Arabic.md",
    "modules_create_tables/-----DB-----/triggers/ERP_HR_Triggers_Arabic.md",
    "modules_create_tables/-----DB-----/triggers/ERP_Inventory_Triggers_Arabic.md",
    "modules_create_tables/-----DB-----/triggers/ERP_Other_Triggers_Arabic.md",
    "modules_create_tables/-----DB-----/triggers/ERP_Purchases_Vendors_Triggers_Arabic.md",
    "modules_create_tables/-----DB-----/triggers/ERP_Sales_Customers_Triggers_Arabic.md",
]
RELATIONS_PATH = "relations.txt"
SQL_PATH = "cr_db_.sql"

def detect_encoding(file_path, fallback="utf-8-sig"):
    try:
        import chardet
        with open(file_path, "rb") as f:
            raw = f.read(10000)
        result = chardet.detect(raw)
        encoding = result["encoding"]
        if not encoding or encoding.lower() == "ascii":
            encoding = fallback
        return encoding
    except Exception:
        return fallback

def read_file(path):
    encoding = detect_encoding(path, fallback="utf-8-sig")
    try:
        with open(path, "r", encoding=encoding) as f:
            return f.read()
    except UnicodeDecodeError:
        for enc in ["windows-1256", "cp1252", "iso-8859-1"]:
            try:
                with open(path, "r", encoding=enc) as f:
                    return f.read()
            except UnicodeDecodeError:
                continue
        raise Exception(f"لم أستطع قراءة الملف {path} بأي ترميز! جرب تحويله إلى UTF-8.")

def save_file(content, base_dir, filename):
    os.makedirs(base_dir, exist_ok=True)
    with open(os.path.join(base_dir, filename), "w", encoding="utf-8") as f:
        f.write(content)

def to_pascal_case(s):
    return ''.join(word.capitalize() for word in s.replace("&", "And").replace("-", " ").replace("_", " ").split())

def to_plural(name):
    if name.endswith('y') and not name.endswith('ay') and not name.endswith('ey'):
        return name[:-1] + 'ies'
    if name.endswith('s'):
        return name + 'es'
    return name + 's'

def clean_comment(c):
    import re
    return re.sub(r'[\u200B-\u200D\uFEFF]', '', (c or '').strip())

def load_module_table_model_map(csv_path):
    module_map = defaultdict(dict)
    table_to_module = {}
    table_to_model = {}
    model_to_table = {}
    if not os.path.exists(csv_path):
        raise Exception(f"ملف موديولات/جداول/موديلات غير موجود: {csv_path}")
    with open(csv_path, "r", encoding="utf-8-sig") as f:
        reader = csv.DictReader(f)
        for row in reader:
            module = (row.get("Module") or "").strip()
            model = (row.get("ModelName") or "").strip()
            table = (row.get("TableName") or "").strip().upper()
            if module and model and table:
                module_map[module][table] = model
                table_to_module[table] = module
                table_to_model[table] = model
                model_to_table[model] = table
    return module_map, table_to_module, table_to_model, model_to_table

def load_field_map_with_comments(csv_path):
    field_map = defaultdict(dict)
    field_map_by_model = defaultdict(dict)
    with open(csv_path, "r", encoding="utf-8-sig") as f:
        reader = csv.DictReader(f)
        for row in reader:
            table = (row.get("Table") or "").strip()
            old = (row.get("OldName") or "").strip()
            new = (row.get("NewName") or "").strip()
            comment = clean_comment(row.get("Description"))
            table_upper = table.upper()
            old_upper = old.upper()
            if table_upper and old_upper and new:
                field_map[table_upper][old_upper] = (new, comment)
            if table and old_upper and new:
                field_map[table][old_upper] = (new, comment)
            if new and old_upper:
                field_map_by_model[table][old_upper] = (new, comment)
            # Debug: طباعة كل صف من ملف الحقول
            if table_upper == "ACCOUNT":
                print(f"DEBUG-FIELD-MAPPING: table={table_upper}, old={old_upper}, new={new}, comment=[{comment}]")
    return field_map, field_map_by_model

def extract_create_table_blocks(sql):
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
        m = re.match(
            r'"?([A-Z0-9_]+)"?\s+([A-Z0-9]+)(\(\s*(\d+)\s*(,\s*(\d+)\s*)?\))?(.*)',
            l.strip(), re.IGNORECASE)
        if m:
            col = m.group(1)
            typ = m.group(2)
            size = m.group(4)
            scale = m.group(6)
            rest = m.group(7)
            nullable = ("NOT NULL" not in rest.upper())
            columns.append((col, typ, nullable, size, scale, rest.strip()))
    return columns

def parse_relations_file(content):
    rels = defaultdict(list)
    reverse_relations = defaultdict(list)
    lines = content.splitlines()
    for l in lines:
        m = re.match(r'\s*-\s+([A-Za-z0-9_]+).*?\("([^"]+)"\s*\[.*?\]\)\s*→\s*([A-Za-z0-9_]+).*?\("([^"]+)"\s*\[.*?\]\)', l)
        if m:
            from_tbl = m.group(1).upper()
            from_field = m.group(2).upper()
            to_tbl = m.group(3).upper()
            to_field = m.group(4).upper()
            rels[from_tbl].append((from_field, to_tbl, to_field))
            reverse_relations[to_tbl].append((to_field, from_tbl, from_field))
    return rels, reverse_relations

def extract_triggers(md_content):
    result = defaultdict(list)
    cur_table = None
    for line in md_content.splitlines():
        m = re.match(r'#+\s*(?:TRIGGER|تريجر)\s+([A-Za-z0-9_]+)', line, re.IGNORECASE)
        if m:
            cur_table = m.group(1).upper()
        evm = re.match(r'-\s+(AFTER|BEFORE|INSTEAD OF)\s+([A-Z ]+)', line, re.IGNORECASE)
        if cur_table and evm:
            ev = evm.group(2).strip()
            result[cur_table].append(ev)
    return result

def merge_trigger_maps(maps):
    out = defaultdict(list)
    for m in maps:
        for tbl, events in m.items():
            out[tbl].extend(events)
    return out

def sql_to_csharp_type(sql_type, nullable, size=None, scale=None):
    t = sql_type.upper()
    if t == "BIT" or t == "BOOLEAN":
        return "bool?" if nullable else "bool"
    if t in ("NUMBER", "SMALLINT", "TINYINT"):
        scale_val = None
        if scale is not None and scale != "":
            try: scale_val = int(scale)
            except Exception: scale_val = None
        size_val = None
        if size is not None and size != "":
            try: size_val = int(size)
            except Exception: size_val = None
        if size_val == 1 and (scale_val is None or scale_val == 0):
            return "bool?" if nullable else "bool"
        if scale_val is not None and scale_val > 0:
            return "decimal?" if nullable else "decimal"
        if size_val is not None:
            if size_val <= 4:
                return "short?" if nullable else "short"
            elif size_val <= 9:
                return "int?" if nullable else "int"
            else:
                return "long?" if nullable else "long"
        return "int?" if nullable else "int"
    if t in ("INTEGER", "INT"):
        return "int?" if nullable else "int"
    if t in ("BIGINT",):
        return "long?" if nullable else "long"
    if t in ("FLOAT", "REAL"):
        return "float?" if nullable else "float"
    if t in ("DOUBLE", "DOUBLE PRECISION"):
        return "double?" if nullable else "double"
    if t in ("DECIMAL", "NUMERIC"):
        return "decimal?" if nullable else "decimal"
    if t in ("VARCHAR", "VARCHAR2", "NVARCHAR", "NVARCHAR2", "CHAR", "NCHAR", "CLOB", "NCLOB", "TEXT"):
        return "string?" if nullable else "string"
    if t in ("DATE", "DATETIME", "TIMESTAMP", "TIMESTAMPTZ"):
        return "DateTime?" if nullable else "DateTime"
    if t in ("BLOB", "RAW", "IMAGE", "VARBINARY"):
        return "byte[]"
    if t in ("UNIQUEIDENTIFIER", "UUID"):
        return "Guid?" if nullable else "Guid"
    if t in ("XML", "JSON", "JSONB"):
        return "string"
    return "string"

def detect_enums(field_names, enum_keywords=None):
    if enum_keywords is None:
        enum_keywords = ["type", "status", "state", "flag", "mode", "level", "kind", "category"]
    enums = []
    for field in field_names:
        lname = field.lower()
        if any(lname.endswith(k) for k in enum_keywords):
            enums.append(field)
    return enums

def generate_enum_code(enum_name, values):
    result = []
    result.append(f"public enum {enum_name}")
    result.append("{")
    for v in values:
        result.append(f"    {v},")
    result.append("}")
    return '\n'.join(result)

def generate_model_code(
    table,
    columns,
    table_field_comments,
    enum_candidates,
    relations,
    reverse_relations,
    triggers,
    table_to_model,
    model_to_table,
    table_to_module,
    common=None,
    model_class=None,
    field_map_by_model=None
):
    import re

    def clean_comment(c):
        # يزيل الرموز غير المرئية وزيادات الفراغات
        return re.sub(r'[\u200B-\u200D\uFEFF]', '', (c or '').strip())

    if not model_class:
        class_name = table_to_model.get(table, to_pascal_case(table))
    else:
        class_name = model_class
    if common is None:
        common = []
    result = []
    base = " : " + ", ".join(common) if common else ""
    result.append(f"public class {class_name}{base}")
    result.append("{")

    old_to_new_field = {}
    new_field_to_comment = {}
    if table_field_comments:
        for old_field, (new_field, description) in table_field_comments.items():
            if new_field:
                old_to_new_field[old_field.strip().upper()] = (new_field.strip(), clean_comment(description))
                new_field_to_comment[new_field.strip().lower()] = clean_comment(description)

    if field_map_by_model and model_class in field_map_by_model:
        for old_field, (new_field, description) in field_map_by_model[model_class].items():
            if old_field.strip().upper() not in old_to_new_field and new_field:
                old_to_new_field[old_field.strip().upper()] = (new_field.strip(), clean_comment(description))
                if new_field.strip().lower() not in new_field_to_comment:
                    new_field_to_comment[new_field.strip().lower()] = clean_comment(description)

    # DEBUG: طباعة mapping النهائي لهذا الجدول
    print(f"\n========== MODEL DEBUG: [{class_name}] ==========")
    print("old_to_new_field:")
    for k, v in old_to_new_field.items():
        print(f"  {k}: {v}")
    print("new_field_to_comment:")
    for k, v in new_field_to_comment.items():
        print(f"  {k}: {v}")

    for col, typ, nullable, size, scale, _ in columns:
        prop_name = None
        comment = ""
        # أولاً: ابحث في mapping الخاص بالجدول (أو الموديل)
        if col.strip().upper() in old_to_new_field:
            prop_name, comment = old_to_new_field[col.strip().upper()]
            print(f"DEBUG: [{col}] → [{prop_name}] من mapping قديم. الشرح: [{comment}]")
        elif model_class in field_map_by_model and col.strip().upper() in field_map_by_model[model_class]:
            prop_name, comment = field_map_by_model[model_class][col.strip().upper()]
            print(f"DEBUG: [{col}] → [{prop_name}] من mapping موديل. الشرح: [{comment}]")
        if not prop_name:
            prop_name = to_pascal_case(col)
            print(f"DEBUG: [{col}] → [{prop_name}] توليد تلقائي. لا يوجد mapping مباشر.")
        comment_lookup = new_field_to_comment.get(prop_name.strip().lower())
        if comment_lookup:
            print(f"DEBUG: وجد الشرح [{comment_lookup}] في new_field_to_comment للخاصية [{prop_name}]")
            comment = comment_lookup
        else:
            print(f"DEBUG: لم يجد شرح للخاصية [{prop_name}] في new_field_to_comment")
        # أضف التعليق إن وجد، لأي نوع
        if comment:
            result.append(f"    /// <summary> {comment} </summary>")
        result.append(
            f"    public {sql_to_csharp_type(typ, nullable, size, scale)} {prop_name} {{ get; private set; }}")

    # العلاقات Reference للطرف One
    if relations and table in relations:
        for from_field, to_tbl, to_field in relations[table]:
            to_entity = table_to_model.get(to_tbl, to_pascal_case(to_tbl))
            nav_name = to_entity
            result.append(f"    public {to_entity} {nav_name} {{ get; private set; }} // Navigation")
    # العلاقات Collection للطرف Many
    coll_names = set()
    if reverse_relations and table in reverse_relations:
        for to_field, from_tbl, from_field in reverse_relations[table]:
            from_entity = table_to_model.get(from_tbl, to_pascal_case(from_tbl))
            collection_name = to_plural(from_entity)
            if collection_name not in coll_names:
                result.append(f"    public ICollection<{from_entity}> {collection_name} {{ get; private set; }} // Inverse Navigation")
                coll_names.add(collection_name)
    # أحداث التريجرات
    if triggers and table in triggers:
        for ev in triggers[table]:
            ev_prop = to_pascal_case(ev.replace(" ", ""))
            result.append(f"    // Event: {ev_prop}")
    result.append("}")
    print("========== END MODEL DEBUG ==========\n")
    return '\n'.join(result)

def main():
    warnings = []
    print("==== بدء تحميل الخرائط ====")
    module_map, table_to_module, table_to_model, model_to_table = load_module_table_model_map(MODULES_CSV_PATH)
    field_map, field_map_by_model = load_field_map_with_comments(FIELDS_MAPPING_CSV)
    sql_text = read_file(SQL_PATH)
    create_blocks = extract_create_table_blocks(sql_text)
    relations, reverse_relations = parse_relations_file(read_file(RELATIONS_PATH))
    trigger_maps = []
    for tp in TRIGGERS_PATHS:
        if os.path.exists(tp):
            trigger_maps.append(extract_triggers(read_file(tp)))
    triggers = merge_trigger_maps(trigger_maps)

    for module, table_model_map in module_map.items():
        module_dir = os.path.join(OUTPUT_ROOT, module)
        os.makedirs(os.path.join(module_dir, "Entities"), exist_ok=True)
        os.makedirs(os.path.join(module_dir, "Enums"), exist_ok=True)

    for table, create_sql in create_blocks.items():
        columns = parse_columns_from_create_block(create_sql)
        model_class = table_to_model.get(table, to_pascal_case(table))
        table_field_comments = field_map.get(table, {})
        if not table_field_comments and model_class in field_map:
            table_field_comments = field_map[model_class]
        fields = [col for col, _, _, _, _, _ in columns]
        enum_candidates = detect_enums(fields)
        module_name = table_to_module.get(table, "Other")
        module_dir = os.path.join(OUTPUT_ROOT, module_name)
        common = []
        if any(f in ["ID", "ID_NO", "IDNO"] for f in fields):
            common.append("IAggregateRoot")
        model_code = generate_model_code(
            table,
            columns,
            table_field_comments,
            enum_candidates,
            relations,
            reverse_relations,
            triggers,
            table_to_model,
            model_to_table,
            table_to_module,
            common,
            model_class,
            field_map_by_model
        )
        save_file(model_code, os.path.join(module_dir, "Entities"), f"{model_class}.cs")
        # توليد Enums حسب اسم الخاصية الجديدة وليس اسم الحقل القديم
        for enum_field in enum_candidates:
            prop_name = table_field_comments.get(enum_field, (to_pascal_case(enum_field), ""))[0]
            enum_code = generate_enum_code(prop_name, ["Value1", "Value2", "Value3"])
            save_file(enum_code, os.path.join(module_dir, "Enums"), f"{prop_name}.cs")
        for col, _, _, _, _, _ in columns:
            if col.upper() not in {k.upper() for k in table_field_comments.keys()}:
                warnings.append(f"تحذير: الحقل {col} في الجدول {table} لم يُعثر له على اسم جديد أو شرح.")
        if table not in field_map and model_class not in field_map:
            warnings.append(f"تحذير: لم يتم العثور على تعريف حقول جديد للجدول {table} أو الموديل {model_class} في ملف CSV.")

    if warnings:
        save_file("\n".join(warnings), os.path.join(OUTPUT_ROOT, "Reports"), "warnings.txt")

if __name__ == "__main__":
    main()
