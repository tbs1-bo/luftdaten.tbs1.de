#!/bin/bash

SQLCREATETABLE1="CREATE TABLE temp_hum (sensor_id int, sensor_type text, location int, lat float, lon float, timestamp datetime, temperature float, humidity float);"

SQLCREATE_TABLE2="CREATE TABLE feinstaub (sensor_id int, sensor_type text, location int,lat float,lon float, timestamp datetime, P1 float,durP1 float,ratioP1 float,P2 float,durP2 float, ratioP2 float)"

DB=sensordata.db

sqlite3 $DB "$SQLCREATETABLE1"
sqlite3 $DB "$SQLCREATETABLE2"

for f in archive/*3660.csv; do
    echo "importing $f"
    sqlite3 $DB -csv -csv -separator \; ".import $f temp_hum"
done
sqlite3 $DB 'DELETE FROM temp_hum WHERE sensor_id<>3660'
sqlite3 $DB -cmd '.headers on' -cmd '.mode column' 'SELECT * FROM temp_hum limit 10;'


for f in archive/*3659.csv; do
    echo "importing $f"
    sqlite3 $DB -csv -csv -separator \; ".import $f feinstaub"
done
sqlite3 $DB 'DELETE FROM feinstaub WHERE sensor_id<>3659'
sqlite3 $DB -cmd '.headers on' -cmd '.mode column' 'SELECT * FROM feinstaub limit 10;'
