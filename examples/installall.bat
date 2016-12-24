@ECHO OFF
call "%WMSAPP_HOME%\examples\LiveDVRStreaming\install.bat" all
call "%WMSAPP_HOME%\examples\LiveVideoStreaming\install.bat" all
call "%WMSAPP_HOME%\examples\ServerSideModules\install.bat" all
call "%WMSAPP_HOME%\examples\SHOUTcast\install.bat" all
call "%WMSAPP_HOME%\examples\VideoChat\install.bat" all
call "%WMSAPP_HOME%\examples\VideoOnDemandStreaming\install.bat" all
call "%WMSAPP_HOME%\examples\WebcamRecording\install.bat" all
echo If Wowza Streaming Engine is running, you must restart it to see the installed examples.
pause