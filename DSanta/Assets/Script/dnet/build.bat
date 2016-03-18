@echo off

if %1=="" (
echo no file name
exit
)

set arg=%~f1
set filename=%~n1
pushd %~dp0

dnet.lnk %arg% -of%filename%tmp -c 
postprocess.exe < %filename%tmp > %filename%.il
ilasm /dll %filename%.il

del %filename%tmp
del %filename%.il

popd