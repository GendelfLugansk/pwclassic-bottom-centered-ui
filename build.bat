rmdir /s /q %~dp0build
md %~dp0build
call %~dp0"build-interfaces.bat"
call %~dp0"build-surfaces.bat"
call %~dp0"build-configs.bat"
call %~dp0"build-fonts.bat"