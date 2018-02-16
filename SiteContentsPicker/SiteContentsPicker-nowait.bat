@echo off
set INPUT=./work/input.txt
set SEARCHKEY=./work/searchkey.txt
set OUTPUT=./work/output.tsv
type nul > %INPUT%
type nul > %OUTPUT%
start notepad.exe %SEARCHKEY%
timeout /t 1 > nul
start notepad.exe %INPUT%
echo Please input urls into 'input.txt' and 'searchkey.txt', then save the file.
set /P STR_INPUT="Please select search mode?(1:Regex/2:Word):"
echo %INPUT% %STR_INPUT% %SEARCHKEY% %OUTPUT%
java -jar ./work/SiteContentsPicker.jar %INPUT% %STR_INPUT% %SEARCHKEY% Shift_JIS 1 %OUTPUT%
start notepad.exe %OUTPUT%
