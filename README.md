# Ubiquiti UniFi-Video-Controller (NVR) -- Docker Container
Debian 7, UniFi-Video-Controller v3.9.1

# Setup
This container requires the following two persistant data directories mapped;

/var/lib/unifi-video/ -> your host "data" location

/var/log/unifi-video/ -> your host "log" location

# Run

Run in privileged mode:

```
docker run -it --name unifivideo --privileged -v /data/volumes/unifi-video/lib:/var/lib/unifi-video/  -v /data/volumes/unifi-video/log:/var/log/unifi-video/ \
        -p 7442:7442 -p 7443:7443 -p 7445:7445 -p 7446:7446 -p 7447:7447 -p 7080:7080 -p 6666:6666 dok3r/unifi-nvr
```




# Troubleshooting

UNRAID - If you have issue with MongoDB continually restarting please check your data mapping. I have seen issues where user shares do not work correctly. Please try mapping direct to a single disk or to cache drive to ensure smooth operation.

i.e. instead of /mnt/user/usershare/nvr/data

use /mnt/disk1/usershare/nvr/data

# Credits

based on https://github.com/dwtaylornz/unifi-nv
