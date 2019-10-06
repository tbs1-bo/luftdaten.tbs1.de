

sensordata.db: archive
	./import_from_archive_into_db.sh

archive:
	./download_archive.sh
