@echo off
echo RobustWinMineServer v0.3
pause
cls
start https://gitforwindows.org/
echo Please download git and proceed
echo Please proceed with the git install process.
echo Click through and do not change anything!
echo Once you are done, press any key
pause
start https://www.java.com/en/download/win10.jsp
echo Please download java and proceed
echo Just click through, you do not have to change anything
echo Press any key when you are done.
pause
cls
curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
echo Beginning compile...
java -jar -Xmx1G BuildTools.jar
mkdir cfiles
curl -o start.vbs https://raw.githubusercontent.com/tytech038/RobustWinMineServer/master/start.vbs
curl -o stop.vbs https://raw.githubusercontent.com/tytech038/RobustWinMineServer/master/stop.vbs
move start.vbs cfiles
move stop.vbs cfiles
curl -o start.bat https://raw.githubusercontent.com/tytech038/RobustWinMineServer/master/start.bat
curl -o eula.txt https://raw.githubusercontent.com/tytech038/RobustWinMineServer/master/eula.txt 
copy spigot-1.15.2.jar spigot.jar
del spigot-1.15.2.jar
cls
echo Done. run start.bat to start the server.
pause
