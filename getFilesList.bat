@echo off
set mypath=""
call :treeProcess
goto :eof

:treeProcess
setlocal
for %%f in (*) do echo %mypath%%%f
for /D %%d in (*) do (
    set mypath=%mypath%%%d\
    cd %%d
    call :treeProcess
    cd ..
)
endlocal
exit /b