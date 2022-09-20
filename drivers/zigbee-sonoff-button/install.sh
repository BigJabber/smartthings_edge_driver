#!/bin/bash
#packageKey: 'zigbee-sonoff-button'
set driverId=62bd9121-0ed3-4724-838f-cfa8a4d5a9a5
set channel=699fefe6-7b99-40b2-acfd-662ed510a84d
set hub=37d997a3-7579-47f2-8ae9-804fce729f7b
set hub_address=192.168.0.119

#smartthings edge:drivers:uninstall $driverId --hub $hub
smartthings edge:drivers:package ./
smartthings edge:drivers:publish $driverId --channel $channel
smartthings edge:drivers:install $driverId --channel $channel --hub $hub
smartthings edge:drivers:logcat $driverId --hub-address=$hub_address