#!/bin/bash

BASE="https://archive.luftdaten.info/"

test -d archive || mkdir archive

cd archive

for y in 2019 2018 2017; do
    for m in $(seq -w 12); do
        for d in $(seq -w 31); do
            wget -b $BASE/$y-$m-$d/$y-$m-${d}_sds011_sensor_3659.csv;
            #wget $BASE/$y-$m-$d/$y-$m-${d}_dht22_sensor_3660.csv;
        done
    done
    sleep 2;  # wait some seconds for processes to finish
done

rm wget-log.*
