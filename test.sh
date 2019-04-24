#!/bin/bash


CacheServerIP=$( assetcachelocatorutil 2>&1 | awk 'FNR == 3 {print}' | awk '{match($0,/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/); ip = substr($0,RSTART,RLENGTH); print ip}' )

CacheServerIPP=$CacheServerIP |  awk -F"." '{print $2}'

if  [[ $CacheServerIPP = "146" || $CacheServerIPP = "156" ]]; then
   echo 'Apple Traffic Succesful'
 else
   echo "Fail"
fi
