#!/bin/sh -e

location=~/`date +%Y%m%d_%H%M%S`.db
now="$(date)"
echo "Backup starting at $now....."
mysqldump -u root --password=<your password> database_name > $location
echo "Backup sucessfully ended at $now!!"
gzip $location
