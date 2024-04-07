@echo off

REM Get the name of the current directory
for %%I in (.) do set "currentDir=%%~nxI"

REM Check if tmpFileList.txt already exists
if exist tmpFileList.txt (
    echo Error: tmpFileList.txt already exists. Please remove or rename it and try again.
    exit /b 1
)

REM Check if the CSV file already exists
if exist "%currentDir%.csv" (
    choice /M "Warning: %currentDir%.csv already exists. Do you want to overwrite it?"
    if errorlevel 2 (
        echo File export canceled.
        exit /b
    )
    del "%currentDir%.csv"
)

REM Get the list of files in the current directory
dir /b > tmpFileList.txt

REM Convert the list to CSV format
for /f "tokens=*" %%i in (tmpFileList.txt) do echo %%i >> "%currentDir%.csv"

REM Clean up temporary file
del tmpFileList.txt

echo File list has been exported to %currentDir%.csv
