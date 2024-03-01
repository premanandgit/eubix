
import os
import pandas as pd

def find_files_without_word(folder_path, word):
    # Create an empty list to store file names
    files_without_word = []
    
    # Iterate through all the directories and subdirectories
    for root, dirs, files in os.walk(folder_path):
        index = 0
        # Iterate through all files in the current directory
        for file_name in files:
            # Get the full path of the file
            
            file_path = os.path.join(root, file_name)
            # Read the file line by line
            with open(file_path, 'r') as file:
                found = False
                for line in file:
                    # Check if the word is present in the line
                    if word in line:
                        found = True
                        break
                # If the word is not found in any line, add the file to the list
                if (not found and index == 0):
                    files_without_word.append(file_name)
            index = index + 1
    return files_without_word

# Example usage:
folder_path = './depo/Mayurbhanj/Masstrans'
word_to_exclude = 'mss1{MJ'
files_without_word = find_files_without_word(folder_path, word_to_exclude)
print("Files without the word '{}' in their content:".format(word_to_exclude))
for file_name in files_without_word:
    print(file_name)
