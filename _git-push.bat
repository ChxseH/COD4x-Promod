@echo off
@setlocal enableextensions  
@cd /d "%~dp0"

xcopy . %USERPROFILE%\Documents\GitHub\COD4x-Promod\ /S /Q /Y
cd %USERPROFILE%\Documents\GitHub\COD4x-Promod\
git add *
git commit -a -m "Updated Things"
git push
