@ECHO OFF
IF NOT EXIST "%WMSAPP_HOME%\conf\SHOUTcast\Application.xml" ( 
		echo Installing SHOUTcast...
		xcopy "%WMSAPP_HOME%\examples\SHOUTcast\conf" "%WMSAPP_HOME%\conf" /s  /Y  /Q > NUL
	) else (
		echo Skipping SHOUTcast.  Already configured.	
	)
IF NOT EXIST "%WMSAPP_HOME%\applications\SHOUTcast" mkdir "%WMSAPP_HOME%\applications\SHOUTcast"
IF NOT "%1" == "all" (
	echo If Wowza Streaming Engine is running, you must restart it to see the installed examples.
	pause
	)
