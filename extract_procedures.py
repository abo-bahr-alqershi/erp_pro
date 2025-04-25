import re
import os

def extract_stored_procedures(input_sql_path, output_file):
    """
    تجميع كل الإجراءات المخزنة في ملف واحد مع فواصل بينها
    """
    # قراءة محتوى ملف SQL
    with open(input_sql_path, 'r', encoding='utf-8') as file:
        sql_content = file.read()
    
    # نمط متقدم للتعامل مع DELIMITER والتعليقات
    pattern = re.compile(
        r'(DELIMITER \$\$.*?CREATE PROCEDURE.*?END \$\$\s*?\$\$)',
        re.DOTALL | re.IGNORECASE
    )
    
    matches = pattern.findall(sql_content)
    
    if not matches:
        print("لم يتم العثور على إجراءات مخزنة!")
        return
    
    # كتابة جميع الإجراءات في ملف واحد مع فواصل
    with open(output_file, 'w', encoding='utf-8') as out_file:
        for i, procedure in enumerate(matches, 1):
            out_file.write(f"-- Procedure {i} --------------------------------------\n")
            out_file.write(procedure.strip() + "\n\n")
    
    print(f"تم حفظ {len(matches)} إجراءات في: {output_file}")

if __name__ == "__main__":
    # تعديل المسارات حسب نظامك
    input_sql_path = "/home/ameen/projects/ERP_Pro/src/cr_db_.sql"  # <-- غير هذا المسار
    output_file = "/home/ameen/projects/ERP_Pro/src/all_procedures.sql"           # <-- اسم ملف الإخراج
    
    extract_stored_procedures(input_sql_path, output_file)
