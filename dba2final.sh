#! /bin/sh

# Export Staff to HTML
mysql -H -u root -p Lab_Tests -e "SELECT * FROM Staff" > final_project.html

# Backup DB to Compressed file
 mysqldump -u root -p Lab_Tests | bzip2 > final_project.sql.bz2