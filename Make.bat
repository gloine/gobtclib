@echo off
cd %~dp0
if %0 == "install" goto install



:install
echo -------------------------------------- begin to make install...
::go get github/gloine/gobtclib
go get -u go.uber.org/zap
go get -u github.com/gobasis/log
mkdir %GOPATH%\src\github.com\gloine
rmdir /s/q %GOPATH%\src\github.com\gloine\gobtclib
mklink /D %GOPATH%\src\github.com\gloine\gobtclib %cd%
echo -------------------------------------- finished successfully!
pause
