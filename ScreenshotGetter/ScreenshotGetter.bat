@echo off
set INPUT=./work/input.txt
type nul > %INPUT%
start notepad.exe %INPUT%
echo Please input urls into 'input.txt', then save the file.
set /P STR_INPUT="Are you ready? (y/n):"
IF "%STR_INPUT%" == "y" (
  for /f %%a in (%INPUT%) do (
    start /b "" ".\work\phantomjs.exe" ".\work\ScreenshotGetter.js" "%%a"
  )
  explorer .\captures\
) ELSE (
  echo bye
)
