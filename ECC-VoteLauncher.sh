#!/bin/bash

echo "============================================="
echo "        ECOCITYCRAFT VOTE LAUNCHER"
echo "============================================="
echo
read -p "Enter your Minecraft username: " username
echo

echo "Launching vote pages for $username..."
echo "Please wait while your default browser opens all links."
echo

# Detect appropriate open command
if command -v xdg-open >/dev/null 2>&1; then
    open_cmd="xdg-open"
elif command -v open >/dev/null 2>&1; then
    open_cmd="open"
else
    echo "Error: Cannot detect a command to open URLs (xdg-open or open not found)."
    exit 1
fi

# List of vote URLs
declare -a urls=(
"https://minecraftpocket-servers.com/server/126606/vote/?username=$username"
"https://minecraft.menu/server-ecocitycraft-economy.2577/vote?username=$username"
"https://minecraftbestservers.com/server-ecocitycraft-economy.1629/vote?username=$username"
"https://www.curseforge.com/servers/server/ecocitycraft-economy/vote?username=$username"
"https://minecraft.buzz/vote/7298?username=$username"
"https://best-minecraft-servers.co/server-ecocitycraft-economy.1309/vote?username=$username"
"https://servers-minecraft.net/server-ecocitycraft-economy.24122/vote?username=$username"
"https://minecraftlist.org/vote/11929?username=$username"
"https://minecraft-server.net/vote/EcoCityCraft/?username=$username"
"https://topminecraftservers.org/vote/3276?username=$username"
"https://minecraft-mp.com/server/7096/vote/?username=$username"
"https://topg.org/minecraft-servers/server-380058?username=$username"
"https://minecraft-server-list.com/server/7038/vote/?username=$username"
"https://minecraftservers.org/vote/6021?username=$username"
)

# Open each link
for url in "${urls[@]}"
do
   $open_cmd "$url" &>/dev/null
done

echo
echo "============================================="
echo "  All voting pages have been opened."
echo "  Don't forget to claim your VotePoints!"
echo "============================================="
