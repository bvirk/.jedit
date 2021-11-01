@echo off
setlocal
set phpErrorFile=C:\Temp\phpError
IF EXIST %phpErrorFile% (
 type %phpErrorFile%
 exit 1
)
endlocal