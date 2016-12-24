@ECHO OFF
IF NOT EXIST "%WMSAPP_HOME%\conf\dvr\Application.xml" ( 
		echo Installing LiveDVRStreaming...
		xcopy "%WMSAPP_HOME%\examples\LiveDVRStreaming\conf" "%WMSAPP_HOME%\conf" /s  /Y  /Q > NUL
	) else (
		echo Skipping LiveDVRStreaming.  Already configured.	
	)
IF NOT EXIST "%WMSAPP_HOME%\applications\dvr" mkdir "%WMSAPP_HOME%\applications\dvr"
IF NOT "%1" == "all"  (
	echo If Wowza Streaming Engine is running, you must restart it to see the installed examples.
	pause
)