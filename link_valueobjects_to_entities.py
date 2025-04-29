import os
import re

DOMAIN_ROOT = "output/Domain"

def pascal_case(s):
    return ''.join(word.capitalize() for word in re.split(r'[\s_\-]', s))

def get_valueobject_names(valueobjects_path):
    vo_names = set()
    if not os.path.isdir(valueobjects_path):
        return vo_names
    for fname in os.listdir(valueobjects_path):
        if fname.endswith(".cs"):
            vo_name = fname[:-3]
            vo_names.add(vo_name)
    return vo_names

def find_properties_in_entity(entity_path):
    props = []
    with open(entity_path, encoding="utf-8") as f:
        for line in f:
            m = re.match(r'\s*public\s+([A-Za-z0-9_<>?]+)\s+([A-Za-z0-9_]+)\s*\{', line)
            if m:
                typ, name = m.group(1), m.group(2)
                props.append((typ, name))
    return props

def add_valueobject_using_and_property(entity_path, vo_name):
    # Add using and replace property type if matches
    with open(entity_path, encoding="utf-8") as f:
        lines = f.readlines()
    using_statement = f"using {vo_name};\n"
    if any(f"using {vo_name};" in line for line in lines):
        using_added = True
    else:
        # add after namespace or at top
        for idx, line in enumerate(lines):
            if line.startswith("using "):
                lines.insert(idx+1, using_statement)
                break
        else:
            lines.insert(0, using_statement)
        using_added = False

    # Save (even if only using was added)
    with open(entity_path, "w", encoding="utf-8") as f:
        f.writelines(lines)
    return using_added

def main():
    for module in os.listdir(DOMAIN_ROOT):
        module_path = os.path.join(DOMAIN_ROOT, module)
        if not os.path.isdir(module_path):
            continue
        entities_path = os.path.join(module_path, "Entities")
        valueobjects_path = os.path.join(module_path, "ValueObjects")
        if not os.path.isdir(entities_path):
            continue
        vo_names = get_valueobject_names(valueobjects_path)
        if not vo_names:
            print(f"[{module}] لا يوجد ValueObjects.")
            continue
        print(f"[{module}] ValueObjects: {vo_names}")
        for entity_fname in os.listdir(entities_path):
            if not entity_fname.endswith(".cs"):
                continue
            entity_path = os.path.join(entities_path, entity_fname)
            props = find_properties_in_entity(entity_path)
            found_links = []
            for typ, pname in props:
                pname_pascal = pascal_case(pname)
                # مطابقة اسم الـ property مع اسم ValueObject أو جزء منه
                for vo_name in vo_names:
                    if (pname_pascal == vo_name) or (vo_name.lower() in pname_pascal.lower()) or (pname_pascal.lower() in vo_name.lower()):
                        found_links.append((pname, vo_name))
                        # يمكنك هنا التعديل ليكون النوع هو ValueObject بدلاً من النوع الأصلي إذا رغبت
                        # أو إضافة تعليق أو using
                        add_valueobject_using_and_property(entity_path, vo_name)
                        print(f"ربط [{entity_fname}] الخاصية [{pname}] مع ValueObject [{vo_name}]")
            if not found_links:
                print(f"لم يتم ربط أي ValueObject في [{entity_fname}]")
    print("انتهى الربط.")

if __name__ == "__main__":
    main()