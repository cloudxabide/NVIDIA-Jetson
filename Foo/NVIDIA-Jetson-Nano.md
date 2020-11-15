# NVIDIA Jetson Nano

## MAC Address Issue
When I first fired up my Nano and watched my DHCP log, I noticed a strange entry

```
Nov 15 08:55:52 rh7-sat6-srv01.matrix.lab dhcpd[27341]: DHCPREQUEST for 10.10.10.211 from 00:00:00:00:00:01 (elroy) via ens192
Nov 15 08:55:52 rh7-sat6-srv01.matrix.lab dhcpd[27341]: DHCPACK on 10.10.10.211 to 00:00:00:00:00:01 (elroy) via ens192
```
Mac Address: 00:00:00:00:00:01

Huh?  I did some quick Google'ing and found:  
[Jetson Nano Developer Kit Ethernet Firmware Update](https://forums.developer.nvidia.com/t/jetson-nano-developer-kit-ethernet-firmware-update/77473)

Now... the ONE thing their README is missing,  you (apparently) have to COLD BOOT the Nano after the update.  A simple "reboot" will not take effect.  (which was good to discover, as I had already put a CPU Cooler on my Nano and build the SD card... which would have sucked to undo to return it).  

[NVIDIA Jetson Module EEPROM Layout](https://docs.nvidia.com/jetson/l4t/index.html#page/Tegra%20Linux%20Driver%20Package%20Development%20Guide/jetson_eeprom_layout.html)

