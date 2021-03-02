@echo off
@setlocal enableextensions  
@cd /d "%~dp0"

xcopy . %USERPROFILE%\Documents\GitHub\COD4x_Promod\ /S /Q /Y
pause
cd %USERPROFILE%\Documents\GitHub\COD4x_Promod\
git add *
git commit -a -m "Updated Things"
git push