@ECHO OFF
IF NOT EXIST "%WMSAPP_HOME%\conf\live\Application.xml" ( 
		echo Installing LiveVideoStreaming...
		xcopy "%WMSAPP_HOME%\examples\LiveVideoStreaming\conf" "%WMSAPP_HOME%\conf" /s  /Y  /Q > NUL
	) else (
		echo Skipping LiveVideoStreaming.  Already configured.	
	)
IF NOT EXIST "%WMSAPP_HOME%\applications\live" mkdir "%WMSAPP_HOME%\applications\live"
IF NOT "%1" == "all" (
	echo If Wowza Streaming Engine is running, you must restart it to see the installed examples.
	pause
	)
