#!/bin/bash

BASE="https://archive.luftdaten.info/"

test -d archive || mkdir archive

cd archive

for y in 2021 2020 2019 2018 2017; do
    for m in $(seq -w 12); do
        for d in $(seq -w 31); do
            # -b: run in background
            wget -b --no-check-certificate "$BASE/$y-$m-$d/$y-$m-${d}_sds011_sensor_3659.csv";
            wget -b --no-check-certificate "$BASE/$y-$m-$d/$y-$m-${d}_dht22_sensor_3660.csv";
			if test $(pgrep wget|wc -l) -gt 100 ; then
				echo "to many open processes wating...";
				sleep 5;
			fi
        done
    done
done

rm wget-log*
