md %~dp0build
md %~dp0build\fonts
md %~dp0client
md %~dp0client\element
md %~dp0client\element\fonts
copy %~dp0src\fonts\*.* %~dp0build\fonts
copy %~dp0build\fonts\*.* %~dp0client\element\fonts