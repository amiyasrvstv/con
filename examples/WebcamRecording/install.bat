@ECHO OFF
IF NOT EXIST "%WMSAPP_HOME%\conf\webcamrecording\Application.xml" ( 
		echo Installing WebcamRecording...
		xcopy "%WMSAPP_HOME%\examples\WebcamRecording\conf" "%WMSAPP_HOME%\conf" /s  /Y  /Q > NUL
	) else (
		echo Skipping WebcamRecording.  Already configured.	
	)
IF NOT EXIST "%WMSAPP_HOME%\applications\webcamrecording" mkdir "%WMSAPP_HOME%\applications\webcamrecording"
IF NOT "%1" == "all" (
	echo If Wowza Streaming Engine is running, you must restart it to see the installed examples.
	pause
	)
