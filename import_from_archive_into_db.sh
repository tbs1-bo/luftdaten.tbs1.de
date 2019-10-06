#!/bin/bash

SQLCREATETABLE1="CREATE TABLE temp_hum (sensor_id int, sensor_type text, location int, lat real, lon real, timestamp datetime, temperature real, humidity real);"

SQLCREATETABLE2="CREATE TABLE feinstaub (sensor_id int, sensor_type text, location int, lat real, lon real, timestamp datetime, P1 real, durP1 real, ratioP1 real,P2 real,durP2 real, ratioP2 real);"

SQL_TIME_SPLIT='cast(strftime("%Y",timestamp) as integer) year, cast(strftime("%m",timestamp) as integer) month, cast(strftime("%d",timestamp) as integer) day, cast(strftime("%H",timestamp) as integer) hour, cast(strftime("%M",timestamp) as integer) minute'

DB=sensordata.db

sqlite3 $DB "$SQLCREATETABLE1"
sqlite3 $DB "$SQLCREATETABLE2"

for f in archive/*3660.csv; do
    echo "importing $f"
    sqlite3 $DB -csv -csv -separator \; ".import $f temp_hum"
done
# import contains first line of csv-file. get rid of if
sqlite3 $DB 'DELETE FROM temp_hum WHERE sensor_id<>3660'

sqlite3 $DB -cmd '.headers on' -cmd '.mode column' 'SELECT * FROM temp_hum limit 10;'


for f in archive/*3659.csv; do
    echo "importing $f"
    sqlite3 $DB -csv -csv -separator \; ".import $f feinstaub"
done
# import contains first line of csv-file. get rid of if
sqlite3 $DB 'DELETE FROM feinstaub WHERE sensor_id<>3659'

sqlite3 $DB -cmd '.headers on' -cmd '.mode column' 'SELECT * FROM feinstaub limit 10;'

# creating views 

sqlite3 $DB "CREATE VIEW temp_hum_view AS SELECT ${SQL_TIME_SPLIT}, temperature, humidity from temp_hum"

sqlite3 $DB "CREATE VIEW feinstaub_view AS SELECT ${SQL_TIME_SPLIT}, p1, p2 from feinstaub"
