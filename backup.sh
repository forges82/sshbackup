#!/bin/bash
datet=$(date '+%Y%m%d')
cd $HOME
tar -zcvf "backup-$datet.tar.gz" /var/www/html
mysqldump --user={USER} --password={PASSWORD} {DATABASE} > "backup-$datet.sql"
mv "backup-$datet.tar.gz" /var/www/html
mv "backup-$datet.sql" /var/www
