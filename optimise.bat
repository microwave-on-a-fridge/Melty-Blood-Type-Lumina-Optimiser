@echo off
:start
set response=
set /p response=Welcome to the Melty Blood Type Lumina Optimiser! Is MBTL installed in the default Steam directory (C:\Program Files (x86)\Steam\steamapps\common\)? (Y/N):
if not '%response%'=='' set response=%response:~0,1%
if '%response%'=='Y' goto yes
if '%response%'=='y' goto yes
if '%response%'=='yes' goto yes
if '%response%'=='Yes' goto yes
if '%response%'=='YES' goto yes
if '%response%'=='N' goto no
if '%response%'=='n' goto no
if '%response%'=='no' goto no
if '%response%'=='No' goto no
if '%response%'=='NO' goto no
echo "%response%" is not a valid response. Please try again.
echo.
goto start

:yes
copy ".\source\d3d9.dll" "%PROGRAMFILES(X86)%\Steam\steamapps\common\MELTY BLOOD TYPE LUMINA\"
copy ".\source\filepatch-tl.dll" "%PROGRAMFILES(X86)%\Steam\steamapps\common\MELTY BLOOD TYPE LUMINA\"
copy ".\source\framestep-tl.dll" "%PROGRAMFILES(X86)%\Steam\steamapps\common\MELTY BLOOD TYPE LUMINA\"
copy ".\source\mbtl-inject.exe" "%PROGRAMFILES(X86)%\Steam\steamapps\common\MELTY BLOOD TYPE LUMINA\"
xcopy /s ".\source\bg\" "%PROGRAMFILES(X86)%\Steam\steamapps\common\MELTY BLOOD TYPE LUMINA\"
echo Installation complete.
@pause
exit

:no
set dirr=
set /p dirr=Please input the full file path to your Steam library (e.g. steamapps) folder where MBTL is installed:
copy ".\source\d3d9.dll" "%dirr%\common\MELTY BLOOD TYPE LUMINA\"
copy ".\source\filepatch-tl.dll" "%dirr%\common\MELTY BLOOD TYPE LUMINA\"
copy ".\source\framestep-tl.dll" "%dirr%\common\MELTY BLOOD TYPE LUMINA\"
copy ".\source\mbtl-inject.exe" "%dirr%\common\MELTY BLOOD TYPE LUMINA\"
xcopy /s ".\source\bg\" "%dirr%\common\MELTY BLOOD TYPE LUMINA\"
echo Installation complete.
@pause
exit
