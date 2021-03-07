copy %~dp0client\element\interfaces.pck %~dp0src\
copy %~dp0client\element\surfaces.pck %~dp0src\
copy %~dp0client\element\configs.pck %~dp0src\
sPCK.exe -pw -x %~dp0src\interfaces.pck
sPCK.exe -pw -x %~dp0src\surfaces.pck
sPCK.exe -pw -x %~dp0src\configs.pck
del src\*.pck
