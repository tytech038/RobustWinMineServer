@echo off
echo RobustWinMineServer v0.1
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
echo Beginning compile...
curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
echo Beginning install...
java -jar -Xmx1G BuildTools.jar
mkdir cfiles
curl -o start.vbs https://drive.google.com/uc?id=1b8aEt9nK7uOI4lEiMUoechgEP9utL2Hp
curl -o stop.vbs https://drive.google.com/uc?id=1b8aEt9nK7uOI4lEiMUoechgEP9utL2Hp
move start.vbs cfiles
move stop.vbs cfiles
curl -o start.bat https://drive.google.com/uc?id=1DUVxWlqYj5eEhfU6PMOX1PXMDbJkRB9P
rename
copy spigot-1.15.2.jar spigot.jar
echo Done. run start.bat to start the server.
pause