#!/bin/bash

# 
# Status:   Works
# Purpose:  Generically display temps that are available via "thermal_zone"
#           Mostly just wanted to validate my fan works as expected.
# Data:     2020-11-15
# 

for SENSOR in $(find /sys/class/thermal/thermal_zone*/type -exec dirname {} \;)
do
  TYPE=$(cat ${SENSOR}/type)
  TEMP=$(cat ${SENSOR}/temp)
  TEMP=$(( $TEMP/1000 ))
  echo "$TYPE: $TEMP"
done

exit 0
