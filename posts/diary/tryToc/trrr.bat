@ECHO OFF
:: Get the folder name and remove any leading/trailing spaces
for /f "delims=" %%A in ('dir /ad /b') do set "folderName=%%A"
set "folderName=%folderName: =%"

:: Create a temporary YAML file
echo. > temp.yaml
echo "title: \"%folderName%\"" >> temp.yaml  :: Add the title line with the folder name
echo "toc: true" >> temp.yaml
echo "tags: [\"Hugo\", \"Markdown\", \"Example\"]" >> temp.yaml
echo "keywords: [\"Hugo\", \"Markdown\", \"Front Matter\", \"Table of Contents\", \"Tags\", \"Keywords\"]" >> temp.yaml
echo "date: 2023-08-23T10:00:00Z" >> temp.yaml