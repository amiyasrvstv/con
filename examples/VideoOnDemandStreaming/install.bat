@ECHO OFF
IF NOT EXIST "%WMSAPP_HOME%\conf\vod\Application.xml" ( 
		echo Installing VideoOnDemandStreaming...
		xcopy "%WMSAPP_HOME%\examples\VideoOnDemandStreaming\conf" "%WMSAPP_HOME%\conf" /s  /Y  /Q > NUL
	) else (
		echo Skipping VideoOnDemandStreaming.  Already configured.	
	)
IF NOT EXIST "%WMSAPP_HOME%\applications\vod" mkdir "%WMSAPP_HOME%\applications\vod"
IF NOT "%1" == "all" (
	echo If Wowza Streaming Engine is running, you must restart it to see the installed examples.
	pause
	)
