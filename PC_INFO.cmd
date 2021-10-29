set /p user=<user.txt
set /p PC=
runas /user:%user% /savecred "%windir%\system32\msinfo32 /computer %PC%"