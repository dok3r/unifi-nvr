echo "" 
echo "--- START NVR ---" 

# check if clean install (no files) - if so set permissions 
if [ ! -f /var/lib/unifi-video/system.properties ]; then
        echo "Data directory contains zero files - setting permissions"
        chown -R unifi-video:unifi-video /var/lib/unifi-video
fi

if [ ! -f /var/log/unifi-video/server.log ]; then
        echo "Logs directory contains zero files - setting permissions"A
	touch /var/log/unifi-video/server.log
        chown -R unifi-video:unifi-video /var/log/unifi-video    
fi

echo "" 

service unifi-video start
tail -F /var/log/unifi-video/server.log
