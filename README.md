# LS2CSV

Converts a list of files and directory to a `.csv` file

# How to use it

Move the script into the desired the folder. Once you run it, it will output a `<name_of_current_folder>.csv` file with the list of the files and directory

Make sure the `csv` file is not already opened (because you created one in the past).

# Troubleshooting

* If it says `Error: tmpFileList.txt already exists. Please remove or rename it and try again.` means that either the temporary file was not deleted last time you ran the script, or you already have a file named like that. In the former case, remove it. In the latter, consider temporarily renaming _your_ file. Once you are done, you can rename it again.
* If it says `Warning: %currentDir%.csv already exists. Do you want to overwrite it?`...either you already have a csv file with that name (ok...?), or there is an already existing one created with this script. You can decide to overwrite it or not.
* If it runs but does nothing...check that you haven't the file opened in excel, notepad, etc. In that case, close any file that is using it and try again.