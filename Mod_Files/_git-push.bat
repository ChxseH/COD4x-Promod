@echo off

copy * %USERPROFILE%\Documents\GitHub\COD4x_Promod\Mod_Files /Y
pause
cd %USERPROFILE%\Documents\GitHub\COD4x_Promod\
git add *
git commit -a -m "Updated Things"
git push