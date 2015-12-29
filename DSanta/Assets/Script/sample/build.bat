@echo off

if %1=="" (
echo no file name
exit
)

set arg=%~f1
set filename=%~n1
pushd %0\..

dnet.lnk %arg% -c -of%filename%tmp -I./import_mscorlib -I./import_UnityEngine -v
script\postprocess.exe < %filename%tmp > %filename%.il
ilasm /dll %filename%.il

del %filename%tmp
del %filename%.il
