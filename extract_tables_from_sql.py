import re
import os

domain_tables_file = "Domain-Modules-Tables.md"
sql_file = "cr_db_.sql"
output_folder = "modules_create_tables"

def read_file_with_encoding(filepath):
    for enc in ['utf-8', 'windows-1256', 'cp1252', 'latin1']:
        try:
            with open(filepath, encoding=enc) as f:
                return f.read()
        except UnicodeDecodeError:
            continue
    raise Exception("لم أستطع قراءة الملف بأي ترميز معروف. حاول فتحه يدوياً ومعرفة الترميز المناسب.")

def slugify(text):
    # تحويل النص ليكون مناسب كاسم ملف
    return re.sub(r'\W+', '_', text).strip('_')

def extract_sections_and_tables(domain_file):
    with open(domain_file, encoding="utf-8") as f:
        content = f.read()
    sections = []
    current_section = None
    section_pattern = re.compile(r'^##+\s+\d*\.?\s*([^\n(]+)', re.MULTILINE)
    table_pattern = re.compile(r'- [^(]+\(\*\*(\w+)\*\*\)')
    lines = content.splitlines()
    for i, line in enumerate(lines):
        sec_match = section_pattern.match(line)
        if sec_match:
            if current_section:
                sections.append(current_section)
            section_name = sec_match.group(1).strip()
            current_section = {'name': section_name, 'tables': []}
        else:
            t_match = table_pattern.match(line)
            if t_match and current_section:
                current_section['tables'].append(t_match.group(1).upper())
    if current_section:
        sections.append(current_section)
    return sections

def extract_create_tables(sql_content, table_names):
    # نمط عام قوي لالتقاط CREATE TABLE ... حتى نهاية الـ ; مع دعم علامات التنصيص/بدونها
    create_table_pattern = re.compile(
        r'(CREATE\s+TABLE\s+(")?({table})(")?\s*\([^\;]*?)(\)\s*[^;]*?;)'
        .format(table="|".join(re.escape(name) for name in table_names)),
        re.IGNORECASE | re.DOTALL
    )
    found_tables = {}
    for match in create_table_pattern.finditer(sql_content):
        table_block = match.group(0)
        table_name_match = re.search(r'CREATE\s+TABLE\s+"?(\w+)"?', table_block, re.IGNORECASE)
        if table_name_match:
            table_name = table_name_match.group(1).upper()
            found_tables[table_name] = table_block.strip()
    return found_tables

def save_section_tables(section, found_tables, output_folder):
    fname = slugify(section['name']) + ".sql"
    fpath = os.path.join(output_folder, fname)
    with open(fpath, "w", encoding="utf-8") as f:
        for tname in section['tables']:
            if tname in found_tables:
                f.write(found_tables[tname])
                f.write("\n\n")
    print(f"تم إنشاء ملف: {fpath} ({len(section['tables'])} جدول)")

if __name__ == "__main__":
    os.makedirs(output_folder, exist_ok=True)
    sections = extract_sections_and_tables(domain_tables_file)
    print(f"تم استخراج {len(sections)} قسم من ملف الدومين.")
    sql_content = read_file_with_encoding(sql_file)
    # استخراج كل CREATE TABLE دفعة واحدة لتسريع البحث
    all_table_names = {t for s in sections for t in s['tables']}
    found_tables = extract_create_tables(sql_content, all_table_names)
    print(f"تم العثور على {len(found_tables)} CREATE TABLE من ملف SQL.")
    for section in sections:
        save_section_tables(section, found_tables, output_folder)
    print(f"تم حفظ ملفات كل قسم في المجلد: {output_folder}")
