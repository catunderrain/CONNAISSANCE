@echo off
@REM color 07
set "tree_file=TREE.TXT"
set "temp_file=TEMP.TXT"
tree /f /a > %tree_file%
echo TREE created successfully.
@REM echo %~dp0 > %temp_file%
@REM echo %cd% >> %temp_file%
for %%A in (%cd%) do echo %%~nxA >> %temp_file%
echo ^| >> %temp_file%
more +3 %tree_file% >> %temp_file% 
move /y %temp_file% %tree_file% >nul
@echo on