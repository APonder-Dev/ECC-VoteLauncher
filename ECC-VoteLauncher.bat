@echo off
title EcoCityCraft Vote Launcher
color 0A

echo =============================================
echo         ECOCITYCRAFT VOTE LAUNCHER
echo =============================================
echo.
set /p username=Enter your Minecraft username: 
echo.

echo Launching vote pages for %username%...
echo Please wait while your default browser opens all links.
echo.

REM ----------------------------------------------
REM              VOTE LINKS
REM ----------------------------------------------
start "" "https://minecraftpocket-servers.com/server/126606/vote/?username=%username%"
start "" "https://minecraft.menu/server-ecocitycraft-economy.2577/vote?username=%username%"
start "" "https://minecraftbestservers.com/server-ecocitycraft-economy.1629/vote?username=%username%"
start "" "https://www.curseforge.com/servers/server/ecocitycraft-economy/vote?username=%username%"
start "" "https://minecraft.buzz/vote/7298?username=%username%"
start "" "https://best-minecraft-servers.co/server-ecocitycraft-economy.1309/vote?username=%username%"
start "" "https://servers-minecraft.net/server-ecocitycraft-economy.24122/vote?username=%username%"
start "" "https://minecraftlist.org/vote/11929?username=%username%"
start "" "https://minecraft-server.net/vote/EcoCityCraft/?username=%username%"
start "" "https://topminecraftservers.org/vote/3276?username=%username%"
start "" "https://minecraft-mp.com/server/7096/vote/?username=%username%"
start "" "https://topg.org/minecraft-servers/server-380058?username=%username%"
start "" "https://minecraft-server-list.com/server/7038/vote/?username=%username%"
start "" "https://minecraftservers.org/vote/6021?username=%username%"

echo.
echo =============================================
echo   All voting pages have been opened.
echo   Don't forget to claim your VotePoints!
echo =============================================
pause
