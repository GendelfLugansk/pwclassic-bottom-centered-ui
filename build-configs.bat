md %~dp0build
md %~dp0client
md %~dp0client\element
%~dp0sPCK.exe -pw -c %~dp0src\configs.pck.files
move %~dp0src\configs.pck %~dp0build\configs.pck
copy %~dp0build\configs.pck %~dp0client\element\configs.pck