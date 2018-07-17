#! /bin/bash
# This file is used to clear log files of last day
now="$(date)"
echo "Starting backup at $now, please wait....."
gzip /home/azra/Documents/logfile/*
echo "Backup done at $now!!"
/usr/bin/find /home/azra/Documents/logfile -type f -name '*.gz' -mtime +1 -exec mv {} /home/azra/Documents/archive/ \;
find /home/azra/Documents/logfile -type f -name '*.log' -mtime +1 -exec rm {} \;

