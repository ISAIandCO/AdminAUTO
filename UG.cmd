set /p user=<user.txt
runas /user:%user% /savecred "%windir%\system32\WindowsPowerShell\v1.0\powershell.exe /c "%cd%\PSs\UG.ps1""