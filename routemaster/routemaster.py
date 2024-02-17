import pandas as pd
import os
import shutil

# Read data from Excel file
excel_file = "routedata.xlsx"  # Change this to your Excel file name
df = pd.read_excel(excel_file)


# Define gap and line parameters
gap = "\n" # Adjust the number of empty lines as needed
line = "-" * 50  # Adjust the number of dashes and/or any other characters as needed


# Function to create text with gaps and lines
def create_text_from_excel(df, gap, line):
        # Open a file in append mode
    with open("routemaster.xml", "a") as file:
        # Append XML header if file is empty
        if file.tell() == 0:
            # file.write("<?xml version='1.0' encoding='UTF-8'?>\n")
            file.write("<Routes>\n")

        for index, row in df.iterrows():
            routeNo = str(row[df.columns[0]]).upper()
            startPoint = str(row[df.columns[1]]).split('-', maxsplit=1)[0]
            destPoint = str(row[df.columns[1]]).split('-', maxsplit=1)[1]
            xml_content = f"  <Route routeno=\"{routeNo}\">\n"  # Example XML content
            xml_content = xml_content + f"  \t<Number>{routeNo}</Number>\n"  # Example XML content
            xml_content = xml_content + f"  \t<StartPoint>{startPoint}</StartPoint>\n"  # Example XML content
            xml_content = xml_content + f"  \t<DestinationPoint>{destPoint}</DestinationPoint>\n"  # Example XML content
            xml_content = xml_content + f"  </Route>\n"  # Example XML content
            file.write(xml_content)
            source_file = f"routesigns/{routeNo}UP/{routeNo}UP_Front.bin" 
            destination_folder = f"routeoutput/{routeNo}" 
            os.makedirs(destination_folder, exist_ok=True)
            destination_file = os.path.join(destination_folder, f"DIS01.chm")
            shutil.copy(source_file, destination_file)
            print(destination_file + " success!")
        file.write("</Routes>\n")

# Create text
create_text_from_excel(df, gap, line)


print("Text file created successfully!")
