@echo off
@setlocal enableextensions  
@cd /d "%~dp0"

copy * %USERPROFILE%\Documents\GitHub\COD4x_Promod\Mod_Files\* /Y
robocopy . %USERPROFILE%\Documents\GitHub\COD4x_Promod\ /COPYALL /E
cd %USERPROFILE%\Documents\GitHub\COD4x_Promod\
git add *
git commit -a -m "Updated Things"
git push