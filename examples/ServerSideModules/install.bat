@ECHO OFF
echo Installing ServerSideModules...
IF NOT EXIST "%WMSAPP_HOME%\applications\mymodules" mkdir "%WMSAPP_HOME%\applications\mymodules"
IF NOT "%1" == "all" (
	echo If Wowza Streaming Engine is running, you must restart it to see the installed examples.
	pause
	)
