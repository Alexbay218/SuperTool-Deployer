mkdir "%~dp0lists"
dir C:\* /s /b /a-d > "%~dp0lists\file_list.txt"
dism /online /get-features > "%~dp0lists\feature_list.txt"
dism /online /get-package > "%~dp0lists\package_list.txt"
netstat -abo > "%~dp0lists\port_list.txt"
netstat -r > "%~dp0lists\iproute_list.txt"
tasklist > "%~dp0lists\task_list.txt"
net start > "%~dp0lists\service_list.txt"
secedit /export /cfg "%~dp0lists\lspsettings_list.txt"
cd %~dp0
mkdir "%userprofile%\Desktop\scriptload"
xcopy /s "%~dp0scriptload" "%userprofile%\Desktop\scriptload"
"%userprofile%\Desktop\scriptload\setup.bat"
pause
