#!/bin/bash
date=`date +'%d%m%Y'`
date1=`date -d "-3 days" +"%d%m%Y"`
echo $date1
echo $date
mysqldump -u'root' -p'<your password>' --routines --all-databases > /DB/Full_database_backup_$date.sql
gzip -r /DB/Full_database_backup_$date.sql
rm -rf /DB/Full_database_backup_$date1.sql.gz
