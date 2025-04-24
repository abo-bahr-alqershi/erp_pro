import os

def split_file(input_file, lines_per_file=3, output_prefix="split_part_"):
    with open(input_file, 'r', encoding='utf-8') as infile:
        part_num = 1
        out_file = None
        for i, line in enumerate(infile, 1):
            if (i-1) % lines_per_file == 0:
                if out_file:
                    out_file.close()
                out_filename = f"{output_prefix}{part_num}.txt"
                out_file = open(out_filename, 'w', encoding='utf-8')
                print(f"Started writing: {out_filename}")
                part_num += 1
            out_file.write(line)
        if out_file:
            out_file.close()
            print(f"Finished writing: {out_filename}")

if __name__ == "__main__":
    # عدل القيم أدناه حسب الحاجة
    INPUT_FILE = "fmx_analysis_report.txt"
    LINES_PER_FILE = 100000  # عدّل الرقم حسب الحد المطلوب
    OUTPUT_PREFIX = "fmx_report_part_"
    split_file(INPUT_FILE, LINES_PER_FILE, OUTPUT_PREFIX)
