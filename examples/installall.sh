#!/bin/sh
if [ -d /Library/WowzaStreamingEngine ]
then
	BASEDIR=/Library/WowzaStreamingEngine/examples
else
	BASEDIR=/usr/local/WowzaStreamingEngine/examples
fi

$BASEDIR/LiveVideoStreaming/install.sh all
$BASEDIR/LiveDVRStreaming/install.sh all
$BASEDIR/ServerSideModules/install.sh all
$BASEDIR/SHOUTcast/install.sh all
$BASEDIR/VideoChat/install.sh all
$BASEDIR/VideoOnDemandStreaming/install.sh all
$BASEDIR/WebcamRecording/install.sh all

echo "If Wowza Streaming Engine is running, you must restart it to see the installed examples."
