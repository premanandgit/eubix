import pandas as pd
import os
import shutil

# Read data from Excel file
routeType = "DN"
# ledType = "Microcraft"
ledType = "SUMITH"
depo = "JagatsinghpurDown"
depo_name = "Jagatsinghpur"
# excel_file = f"../micrograft/{depo}/data.xlsx"
excel_file = f"../sumith/{depo}/data.xlsx"  # Change this to your Excel file name
df = pd.read_excel(excel_file)

# Define gap and line parameters
gap = "\n" # Adjust the number of empty lines as needed
line = "-" * 50  # Adjust the number of dashes and/or any other characters as needed

def read_text_file(filename):
    """Read text from a file and trim it."""
    with open(filename, 'r', encoding="utf-8") as file:
        content = file.read().strip()  # Trim the content
    return content

def write_text_to_file(filename, text):
    """Write text to a file."""
    with open(filename, 'w', encoding="utf-8") as file:
        file.write(text)

def calculate_checksum(panelId, text):
    etx = "0x03"
    formatted_text = r'' + text
    formatted_text = f"{panelId}{formatted_text}" + chr(int(etx, 16))
    hex_value =  formatted_text.encode().hex()
    sum_value = 0
    for i in range(0, len(hex_value), 2):
        hex_pair = hex_value[i:i+2]
        hex_number = int(hex_pair, 16)  # Rename the variable to avoid confusion
        sum_value += hex_number
    modulus_value = 0 - (sum_value % 256)
    if modulus_value < 0:
        binary_value = format(modulus_value & 0xFFFF, '016b')
    else:
        binary_value = format(modulus_value, '016b')
    last_8_bits = binary_value[-8:]
    checksum = format(int(last_8_bits, 2), '02X')
    return chr(0x02) + panelId + text + chr(0x03) + str(checksum)

# Function to create text with gaps and lines
def create_text_from_excel(df, gap, line):
        # Open a file in append mode
    # with open("routemaster.xml", "a", encoding="utf-8") as file:
    #     # Append XML header if file is empty
    #     if file.tell() == 0:
    #         # file.write("<?xml version='1.0' encoding='UTF-8'?>\n")
    #         file.write("<Routes>\n")

        for index, row in df.iterrows():
            routeNo = str(row[df.columns[0]]).upper()
            startPoint = str(row[df.columns[1]]).split('-', maxsplit=1)[0]
            destPoint = str(row[df.columns[1]]).split('-', maxsplit=1)[1]
            # xml_content = f"  <Route routeno=\"{routeNo}DN\">\n"  # Example XML content
            # xml_content = xml_content + f"  \t<Number>{routeNo}DN</Number>\n"  # Example XML content
            # xml_content = xml_content + f"  \t<StartPoint>{destPoint}</StartPoint>\n"  # Example XML content
            # xml_content = xml_content + f"  \t<DestinationPoint>{destPoint startPoint}</DestinationPoint>\n"  # Example XML content
            # xml_content = xml_content + f"  </Route>\n"  # Example XML content
            # file.write(xml_content)
            if(ledType == "SUMITH"):
                destination_folder = f"./depo/{depo_name}/Sumith/{routeNo}{routeType}" 
                source_file = f"../sumith/{depo}/output/{routeNo}.fdb" 
                os.makedirs(destination_folder, exist_ok=True)
                destination_file = os.path.join(destination_folder, f"{routeNo}{routeType}_Front.bin")
                shutil.copy(source_file, destination_file)
                source_file = f"../sumith/{depo}/output/{routeNo}.sdb" 
                # destination_folder = f"routefolders/{routeNo}" 
                os.makedirs(destination_folder, exist_ok=True)
                destination_file = os.path.join(destination_folder, f"{routeNo}{routeType}_Side.bin")
                shutil.copy(source_file, destination_file)

                source_file = f"../sumith/{depo}/output/{routeNo}.rdb" 
                # destination_folder = f"routefolders/{routeNo}" 
                os.makedirs(destination_folder, exist_ok=True)
                destination_file = os.path.join(destination_folder, f"{routeNo}{routeType}_Rear.bin")
                shutil.copy(source_file, destination_file)
            elif(ledType == "MASSTRANS"):
                destination_folder = f"routefolders/{routeNo}{routeType}" 
                os.makedirs(destination_folder, exist_ok=True)

                source_file = f"routesigns/{routeNo}/{routeNo}.txt"
                content = read_text_file(source_file) 

                content_with_checksum = calculate_checksum("01", content)
                destination_file = os.path.join(destination_folder, f"{routeNo}{routeType}_Front.bin")
                write_text_to_file(destination_file, content_with_checksum)

                content_with_checksum = calculate_checksum("02", content)
                destination_file = os.path.join(destination_folder, f"{routeNo}{routeType}_Side.bin")
                write_text_to_file(destination_file, content_with_checksum)

                content_with_checksum = calculate_checksum("04", content)
                destination_file = os.path.join(destination_folder, f"{routeNo}{routeType}_Rear.bin")
                write_text_to_file(destination_file, content_with_checksum)
            else:
                source_file = f"../micrograft/{depo}/project/Sign/{routeNo}{routeType}/{routeNo}{routeType}_Front.bin" 
                destination_folder = f"./depo/{depo_name}/Microcraft/{routeNo}{routeType}" 
                os.makedirs(destination_folder, exist_ok=True)
                destination_file = os.path.join(destination_folder, f"{routeNo}{routeType}_Front.bin")
                shutil.copy(source_file, destination_file)
            print(destination_file + " success!")
        # file.write("</Routes>\n")

# Create text
create_text_from_excel(df, gap, line)


print("Text file created successfully!")
