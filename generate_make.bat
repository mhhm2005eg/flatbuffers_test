pushd %~dp0\build
del "%~dp0\build\*.*" /s /f /q

cmake .. -G "MinGW Makefiles"
popd
