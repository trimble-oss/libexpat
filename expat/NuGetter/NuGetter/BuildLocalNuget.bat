MSBuild ../Expat.sln /p:Configuration=DebugCRT /p:Platform=x64
MSBuild ../Expat.sln /p:Configuration=Release /p:Platform=x64

@echo off
set /p Build=<ver.txt
set /a Build+=1
echo %Build% >ver.txt

c:/work/nuget.exe pack -Version 2.4.8.%Build% Expat-tekla.nuspec

