@echo off
rem Cheridan asked for this. - N3X
set path=%path%;C:\python27
call python ss13_genchangelog.py ../../html/changelog.html ../../html/changelogs
pause
