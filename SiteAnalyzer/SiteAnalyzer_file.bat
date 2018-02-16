@echo off
set INPUT=./work/input.txt
set OUTPUT=./work/output.tsv
type nul > %INPUT%
type nul > %OUTPUT%
start notepad.exe %INPUT%
echo Please input urls into 'input.txt', then save the file.
set /P STR_INPUT="Are you ready? (y/n):"
IF "%STR_INPUT%" == "y" (
  java -jar ./work/SiteAnalyzer.jar %INPUT% %OUTPUT% utf-8
  start notepad.exe %OUTPUT%
) ELSE (
  echo bye
)
