import re

def analyze_sql_file(file_path, output_file_path, encoding="iso-8859-9"):

    """
    Analyze an SQL file to extract tables and their relationships, and save them to a file.

    Args:
        file_path (str): Path to the SQL file.
        output_file_path (str): Path to the output file where results will be saved.
        encoding (str): Encoding of the file (default is 'utf-8').

    Returns:
        None
    """
    tables = {}
    relationships = []

    # Regular expressions to match table definitions and foreign key constraints
    create_table_pattern = re.compile(r"CREATE TABLE\s+\"?(\w+)\"?\s*\((.*?)\)", re.IGNORECASE | re.DOTALL)
    foreign_key_pattern = re.compile(r"FOREIGN KEY\s*\((.*?)\)\s*REFERENCES\s+\"?(\w+)\"?\s*\((.*?)\)", re.IGNORECASE)

    try:
        with open(file_path, "r", encoding=encoding) as sql_file:
            content = sql_file.read()

        # Extract tables and their columns
        for match in create_table_pattern.finditer(content):
            table_name = match.group(1)
            columns_raw = match.group(2)
            columns = [col.strip().split()[0].strip('"') for col in columns_raw.split(",")]
            tables[table_name] = columns

        # Extract relationships (foreign keys)
        for match in foreign_key_pattern.finditer(content):
            source_columns = match.group(1).split(",")
            target_table = match.group(2)
            target_columns = match.group(3).split(",")
            relationships.append({
                "source_table": table_name,
                "source_columns": [col.strip() for col in source_columns],
                "target_table": target_table,
                "target_columns": [col.strip() for col in target_columns],
            })

        # Write results to the output file
        with open(output_file_path, "w", encoding="utf-8") as output_file:
            output_file.write("# SQL Relationships Analysis\n\n")
            output_file.write("## Tables\n")
            for table, columns in tables.items():
                output_file.write(f"- **{table}**: {', '.join(columns)}\n")
            output_file.write("\n## Relationships\n")
            for rel in relationships:
                output_file.write(f"- **{rel['source_table']}** ({', '.join(rel['source_columns'])}) → **{rel['target_table']}** ({', '.join(rel['target_columns'])})\n")

        print(f"Analysis complete. Results have been saved to {output_file_path}.")

    except Exception as e:
        print(f"Error analyzing the file: {e}")


def main():
    # Path to the SQL file (replace with your actual path)
    file_path = "cr_db_.sql"

    # Path to the output file
    output_file_path = "relationships.md"

    # Analyze the file and save results to the output file
    analyze_sql_file(file_path, output_file_path)


if __name__ == "__main__":
    main()
