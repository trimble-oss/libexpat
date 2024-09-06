MSBuild ../Expat.sln /p:Configuration=Debug /p:Platform=x64
MSBuild ../Expat.sln /p:Configuration=Release /p:Platform=x64

@echo off
set /p Build=<ver.txt
set /a Build=%Build%+1
echo %Build%>ver.txt

cd ../Build/Nugetter
c:/tools/nuget/nuget.exe pack -Version 0.0.%Build% Expat-tekla.nuspec
cd ../../Nugetter

