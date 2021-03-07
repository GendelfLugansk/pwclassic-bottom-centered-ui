md %~dp0build
md %~dp0client
md %~dp0client\element
%~dp0sPCK.exe -pw -c %~dp0src\interfaces.pck.files
move %~dp0src\interfaces.pck %~dp0build\interfaces.pck
copy %~dp0build\interfaces.pck %~dp0client\element\interfaces.pck