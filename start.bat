@echo off
start cfiles/start.vbs
echo server made by Spigot, Automated install with TyTech038's code
java -jar -Xmx1G spigot.jar nogui
start cfiles/stop.vbs
echo Bye!
