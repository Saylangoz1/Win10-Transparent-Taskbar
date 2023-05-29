@echo off
echo Win10 Transparent Taskbar
echo https://github.com/Saylangoz1/Win10-Transparent-Taskbar
ping 127.0.0.1 > NUL
regedit /s i.reg
taskkill /f /im dwm.exe
