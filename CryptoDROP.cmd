@echo off
chcp 1251
CLS
ECHO ISAIcorp
ECHO.

ECHO CryptoDROP
ECHO ------------------------------------------------------------------------------
ECHO Скрипт должен быть запущен от админа.
ECHO После сброса желательно заново накатить софт с исправлением (удалять не надо до этого)
ECHO ------------------------------------------------------------------------------

:START
ECHO Нажмите 1-3 для выбора варианта сброса.
ECHO.
ECHO 1 CSP 3.9-5.0
ECHO 2 OCSP Client (2.0)
ECHO 3 TSP Client (2.0)
ECHO.
ECHO 0 Выход
ECHO ------------------------------------------------------------------------------
SET /P M=Выберите задачу и нажмите ENTER:
IF %M%==1 GOTO CSP
 IF %M%==2 GOTO OCSP
  IF %M%==3 GOTO TSP
IF %M%==0 GOTO EOF

:CSP
	reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{E1C6F5FD-77A1-4F3C-B53E-F2479EFC0FC8} /f
	reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Classes\CLSID\{E1C6F5FD-77A1-4F3C-B53E-F2479EFC0FC8} /f
	reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\WOW6432Node\CLSID\{E1C6F5FD-77A1-4F3C-B53E-F2479EFC0FC8} /f
	reg delete HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{E1C6F5FD-77A1-4F3C-B53E-F2479EFC0FC8} /f
	reg delete HKEY_CLASSES_ROOT\CLSID\{E1C6F5FD-77A1-4F3C-B53E-F2479EFC0FC8} /f
	reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{4448EEC3-836F-4D11-B72D-839C5C79702C} /f
	reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Classes\CLSID\{4448EEC3-836F-4D11-B72D-839C5C79702C} /f
	reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\WOW6432Node\CLSID\{4448EEC3-836F-4D11-B72D-839C5C79702C} /f
	reg delete HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{4448EEC3-836F-4D11-B72D-839C5C79702C} /f
	reg delete HKEY_CLASSES_ROOT\CLSID\{4448EEC3-836F-4D11-B72D-839C5C79702C} /f
	reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{C8B655BB-28A0-4BB6-BDE1-D0826457B2DF} /f
	reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Classes\CLSID\{C8B655BB-28A0-4BB6-BDE1-D0826457B2DF} /f
	reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\WOW6432Node\CLSID\{C8B655BB-28A0-4BB6-BDE1-D0826457B2DF} /f
	reg delete HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{C8B655BB-28A0-4BB6-BDE1-D0826457B2DF} /f
	reg delete HKEY_CLASSES_ROOT\CLSID\{C8B655BB-28A0-4BB6-BDE1-D0826457B2DF} /f
	reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{4BE57065-DC50-4239-8E32-11FABAF5ECF5} /f
	reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Classes\CLSID\{4BE57065-DC50-4239-8E32-11FABAF5ECF5} /f
	reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\WOW6432Node\CLSID\{4BE57065-DC50-4239-8E32-11FABAF5ECF5}} /f
	reg delete HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{4BE57065-DC50-4239-8E32-11FABAF5ECF5} /f
	reg delete HKEY_CLASSES_ROOT\CLSID\{4BE57065-DC50-4239-8E32-11FABAF5ECF5} /f
	GOTO START

:OCSP
	reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{FF144EF4-D14F-4C6D-B297-21E4663678B1} /f
	reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Classes\CLSID\{FF144EF4-D14F-4C6D-B297-21E4663678B1} /f
	reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\WOW6432Node\CLSID\{FF144EF4-D14F-4C6D-B297-21E4663678B1} /f
	reg delete HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{FF144EF4-D14F-4C6D-B297-21E4663678B1} /f
	reg delete HKEY_CLASSES_ROOT\CLSID\{FF144EF4-D14F-4C6D-B297-21E4663678B1} /f
	GOTO START

:TSP
	reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{D7B0E69E-44C2-4526-A1F2-F9DB46EE4613} /f
	reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Classes\CLSID\{D7B0E69E-44C2-4526-A1F2-F9DB46EE4613} /f
	reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\WOW6432Node\CLSID\{D7B0E69E-44C2-4526-A1F2-F9DB46EE4613} /f
	reg delete HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{D7B0E69E-44C2-4526-A1F2-F9DB46EE4613} /f
	reg delete HKEY_CLASSES_ROOT\CLSID\{D7B0E69E-44C2-4526-A1F2-F9DB46EE4613} /f
	GOTO START