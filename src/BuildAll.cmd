SETLOCAL
SET BATCH_FILE_NAME=%0
SET BATCH_DIR_NAME=%0\..
SET NOW_TMP=%time:~0,2%
SET NOW=%date:~0,4%%date:~5,2%%date:~8,2%_%NOW_TMP: =0%%time:~3,2%%time:~6,2%

rem %comspec% /k "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\VC\Auxiliary\Build\vcvars64.bat"
rem %comspec% /k "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\VC\Auxiliary\Build\vcvars32.bat"
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\VC\Auxiliary\Build\vcvars32.bat"
REM call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\VC\Auxiliary\Build\vcvars64.bat"
echo on

REM del %BATCH_DIR_NAME%\bin\BuildUtil.exe

REM C:\windows\Microsoft.NET\Framework\v3.5\MSBuild.exe /toolsversion:3.5 /verbosity:detailed /target:Clean /property:Configuration=Debug "%BATCH_DIR_NAME%\BuildUtil\BuildUtil.csproj"

REM C:\windows\Microsoft.NET\Framework\v3.5\MSBuild.exe /toolsversion:3.5 /verbosity:detailed /target:Rebuild /property:Configuration=Debug "%BATCH_DIR_NAME%\BuildUtil\BuildUtil.csproj"

cmd /k "%BATCH_DIR_NAME%\bin\BuildUtil.exe /CMD:All"


