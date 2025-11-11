#!/bin/sh
mysqldump testdb > /opt/mysql_backup/testdb_backup.sql
rsync -a /opt/mysql_backup user@192.168.137.6:/opt/mysql_backup
