@echo off
:: CoD4x Startup Script
:: Features Auto-Restart upon server window closed.
:: By Chase (https://ChaseHall.net)
:: <3 MW2 Community.


:: Your Game Server Port.
:: Make sure you Port Forward both TCP & UDP.
set GamePort=28960

:: Your server.cfg file in main.
:: This is where you edit your configs for your server(s)
set ServerFilename=promod.cfg

:: Your server key
:: https://cod4master.cod4x.me/index.php?token_generator=true
set Key=

:: Mod Support
set ModFolderName=mods/nc_promod


start cod4x18_dedrun.exe +set dedicated 2 +set sv_authtoken "%Key%" +set net_port %GamePort% +exec %ServerFilename% +set fs_game "%ModFolderName%" +map_rotate
exit
