@echo off

SET mod_name=promod_rc
:: Change me if you want, you must also change compile.bat

SET work_directory=%~dp0
cd %work_directory%

xcopy localizedstrings ..\..\raw\english\localizedstrings\ /SY
xcopy maps ..\..\raw\maps\ /SY
xcopy mp ..\..\raw\mp\ /SY
xcopy promod ..\..\raw\promod\ /SY
xcopy shock ..\..\raw\shock\ /SY
xcopy sound ..\..\raw\sound\ /SY
xcopy soundaliases ..\..\raw\soundaliases\ /SY
xcopy ui_mp ..\..\raw\ui_mp\ /SY
xcopy xmodel ..\..\raw\xmodel\ /SY

copy mod.csv ..\..\zone_source /Y

cd ..\..\bin
linker_pc.exe -language english -compress -cleanup mod -verbose

cd ..\mods\%mod_name%
copy ..\..\zone\english\mod.ff

cd %work_directory%
mkdir ..\..\mods\%mod_name%\scripts 
xcopy scripts ..\..\mods\%mod_name%\scripts /SY
mkdir ..\..\mods\%mod_name%\maps\mp\gametypes
xcopy maps\mp\gametypes\_callbacksetup.gsx ..\..\mods\%mod_name%\maps\mp\gametypes\_callbacksetup.gsx* /Y
xcopy maps\mp\gametypes\_finalkillcam.gsc ..\..\mods\%mod_name%\maps\mp\gametypes\_finalkillcam.gsc* /Y
xcopy maps\mp\gametypes\_globallogic_utils.gsc ..\..\mods\%mod_name%\maps\mp\gametypes\_globallogic_utils.gsc* /Y