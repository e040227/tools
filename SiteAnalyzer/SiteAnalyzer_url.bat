@echo off
set /P STR_INPUT="Please input url:"
java -jar ./work/SiteAnalyzer.jar %STR_INPUT%
pause
