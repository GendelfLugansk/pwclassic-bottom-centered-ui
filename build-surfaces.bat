md %~dp0build
md %~dp0client
md %~dp0client\element
%~dp0sPCK.exe -pw -c %~dp0src\surfaces.pck.files
move %~dp0src\surfaces.pck %~dp0build\surfaces.pck
copy %~dp0build\surfaces.pck %~dp0client\element\surfaces.pck