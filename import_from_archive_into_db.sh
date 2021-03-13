#!/bin/bash

SQLCREATETABLE1="CREATE TABLE temp_hum 
(sensor_id int, 
 sensor_type text, 
 location int, 
 lat real, 
 lon real, 
 timestamp datetime, 
 temperature real, 
 humidity real,
 PRIMARY KEY (timestamp))"

SQLCREATETABLE2="CREATE TABLE feinstaub 
(sensor_id int, 
 sensor_type text, 
 location int, 
 lat real, 
 lon real, 
 timestamp datetime, 
 P1 real, 
 durP1 real, 
 ratioP1 real,
 P2 real,
 durP2 real, 
 ratioP2 real,
 PRIMARY KEY (timestamp))"

SQL_TIME_SPLIT='CAST(strftime("%Y",timestamp) AS INTEGER) year, CAST(strftime("%m",timestamp) AS INTEGER) month, CAST(strftime("%d",timestamp) AS INTEGER) day, CAST(strftime("%H",timestamp) AS INTEGER) hour, CAST(strftime("%M",timestamp) AS INTEGER) minute'

DB=sensordata.db

sqlite3 $DB "$SQLCREATETABLE1" || exit
sqlite3 $DB "$SQLCREATETABLE2" || exit

echo -en "importing sensor 3660. \nFiles to be processed: "
ls archive/*3660.csv | wc -l
for f in archive/*3660.csv; do
    sqlite3 $DB --csv --separator \; ".import --skip 1 $f temp_hum" || exit
done
echo "Some entries"
sqlite3 $DB -box 'SELECT * FROM temp_hum limit 10'
sqlite3 $DB -box 'SELECT count(*) NumEntries FROM temp_hum'


echo -en "importing sensor 3659.\nFiles to be processed: "
ls archive/*3659.csv | wc -l
for f in archive/*3659.csv; do
    sqlite3 $DB --csv --separator \; ".import --skip 1 $f feinstaub" || exit
done

echo "some entries"
sqlite3 $DB -box 'SELECT * FROM feinstaub limit 10'
sqlite3 $DB -box 'SELECT count(*) NumEntries FROM feinstaub'

echo "creating views" 
sqlite3 $DB "CREATE VIEW temp_hum_view AS 
 SELECT ${SQL_TIME_SPLIT}, temperature, humidity from temp_hum"

sqlite3 $DB "CREATE VIEW feinstaub_view AS 
 SELECT ${SQL_TIME_SPLIT}, p1, p2 from feinstaub"

