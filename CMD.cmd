set /p user=<user.txt
runas /user:%user% /savecred %windir%\system32\cmd.exe