#!/bin/bash
#packageKey: 'zigbee-aqara-button'
set driverId=e8f777f7-283f-4fa6-aabc-933d53e54a3b
set channel=699fefe6-7b99-40b2-acfd-662ed510a84d
set hub=37d997a3-7579-47f2-8ae9-804fce729f7b
set hub_address=192.168.0.119

#smartthings edge:drivers:uninstall $driverId --hub $hub
smartthings edge:drivers:package ./
smartthings edge:drivers:publish $driverId --channel $channel
smartthings edge:drivers:install $driverId --channel $channel --hub $hub
smartthings edge:drivers:logcat $driverId --hub-address=$hub_address