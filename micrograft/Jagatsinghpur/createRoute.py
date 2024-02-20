import pandas as pd
import os

# Read data from Excel file
excel_file = "data.xlsx"  # Change this to your Excel file name
df = pd.read_excel(excel_file)

# print(df)

# Define gap and line parameters
gap = "\n" # Adjust the number of empty lines as needed
line = "-" * 50  # Adjust the number of dashes and/or any other characters as needed

def get_first_three_strings(s, delimiter):
    substrings = s.split(delimiter)
    return delimiter.join(substrings[:3])

def convert_to_3_digit_string(number):
    # Convert number to string and pad with leading zeros
    padded_number = f"{number:03}"
    # Slice the string to ensure it's three digits long
    three_digit_string = padded_number[-3:]
    return three_digit_string

def createFile(fdname, fname, data):
    file_path = os.path.join(fdname, fname)
    with open(file_path, "w", encoding="utf-8") as file:
        file.write(data)
    return True

def createRoutes(data):
    file_name = f"project/routes.txt"
    with open(file_name, "a", encoding="utf-8") as file:
        file.write(data)
    return True

def createZeroOneFile(fdname):
    file_name = f"01.txt"
    data = ""
    data += "1,2" + "\n"
    data += "1,2" + "\n"
    data += "0,0" + "\n"
    data += "0,0" + "\n"
    createFile(fdname, file_name, data)
    return True

def createPage1(fdname, route, dest):
#     MJ002	Microsoft Sans Serif	12	Regular	16	32	0	0	0		0	0	5	3
# Destination2	Microsoft Sans Serif	9	Regular	16	64	0	32	0		0	0	5	0
# 	Microsoft Sans Serif	9	Regular	8	64	8	32	0		0	0	5	3

    data = f"{route}\tMicrosoft Sans Serif\t12\tRegular\t16\t32\t0\t0\t1\tEnglish 16 Rows\t0\t0\t5\t0\n"
    data += f"{dest}\tMicrosoft Sans Serif\t14.25\tBold\t16\t64\t0\t32\t0\t\t1\t0\t5\t1\n"
    data += f"\ttMicrosoft Sans Serif\t9\tRegular\t8\t64\t8\t32\t0\t\t0\t0\t5\t3\n"
    file_name = f"0101.txt"
    createFile(fdname, file_name, data)
    return True

def createPage2(fdname, route, dest):
    data = f"{route}\tMicrosoft Sans Serif\t12\tRegular\t16\t32\t0\t0\t1\tEnglish 16 Rows\t0\t0\t5\t0\n"
    data += f"{dest}\tMicrosoft Sans Serif\t14.25\tBold\t16\t64\t0\t32\t0\t\t1\t0\t5\t1\n"
    data += f"\ttMicrosoft Sans Serif\t9\tRegular\t8\t64\t8\t32\t0\t\t0\t0\t5\t3\n"
    file_name = f"0102.txt"
    createFile(fdname, file_name, data)
    return True

def createPage3(fdname, route, dest):
    data = f"{route}\tMicrosoft Sans Serif\t12\tRegular\t16\t32\t0\t0\t1\tEnglish 16 Rows\t0\t0\t5\t0\n"
    data += f"{dest}\tMicrosoft Sans Serif\t14.25\tBold\t16\t64\t0\t32\t0\t\t1\t0\t5\t1\n"
    data += f"\ttMicrosoft Sans Serif\t9\tRegular\t8\t64\t8\t32\t0\t\t0\t0\t5\t3\n"
    file_name = f"0103.txt"
    createFile(fdname, file_name, data)
    return True

def createPage4(fdname, route, dest):
    data = f"{route}\tMicrosoft Sans Serif\t12\tRegular\t16\t32\t0\t0\t1\tEnglish 16 Rows\t0\t0\t5\t0\n"
    data += f"{dest}\tMicrosoft Sans Serif\t14.25\tBold\t16\t64\t0\t32\t0\t\t1\t0\t5\t1\n"
    data += f"\ttMicrosoft Sans Serif\t9\tRegular\t8\t64\t8\t32\t0\t\t0\t0\t5\t3\n"
    file_name = f"0104.txt"
    createFile(fdname, file_name, data)
    return True

def convert_to_3_digit_string(number):
    # Convert number to string and pad with leading zeros
    padded_number = f"{number:03}"
    # Slice the string to ensure it's three digits long
    three_digit_string = padded_number[-3:]
    return three_digit_string

# Function to create text with gaps and lines
def create_text_from_excel(df, gap, line):
    for index, row in df.iterrows():
        text = ""
        routesText = ""
        fileno = convert_to_3_digit_string(index+1)
        folder_name = f"project/{fileno}"
        os.makedirs(folder_name, exist_ok=True)
        route = str(row[df.columns[0]]).strip()
        destOnly = str(row[df.columns[1]]).strip()
        destVia = get_first_three_strings(str(row[df.columns[2]]).strip(), '-')
        dest = destOnly + " " + destVia
 
        reginonalVia = ""
        reginalDest = ""

        if(pd.isna(row[df.columns[3]]) == False):
            reginonalVia = get_first_three_strings(str(row[df.columns[4]]).strip(), '-')
            reginalDest = str(row[df.columns[3]]).strip() + " " + reginonalVia

        # Add data from Excel row
        routesText += str(index+1) + ",1," + route + "," + str(row[df.columns[1]]).strip() + ",1"
        routesText += gap  # Add gap after each row
        for column in df.columns:
            text += str(row[column]) + " "
        text += gap  # Add gap after each row
        # text += line + gap  # Add line and gap after each row
        createRoutes(routesText)
        createZeroOneFile(folder_name)
        createPage1(folder_name, route, dest)
        createPage2(folder_name, route, reginalDest)
        createPage3(folder_name, route, destOnly)
        createPage4(folder_name, route, destOnly)
        print(route)
    return text

# Create text
create_text_from_excel(df, gap, line)
print("Text file created successfully!")
