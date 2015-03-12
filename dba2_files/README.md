# DBA2 Final Project

 For my Final Project for DBA2 I put together a MySQL database with multiple users.

It is a sample database for Medical Lab tests. There are three types of users, 'Allied Health Professions', 'Doctors', and 'Medical Billers'. Using column and row security I made it so that Doctors and Allied Health Pros cannot see the reimbursement rates for procedures, medical billers cannot see the results of tests, and allied health pros cannot see the tests done by any user other than themselves

In addition to creating the schema for this DB I inserted 5 sample rows in each table, and exported a table to HTML, and a backup of the database to bz2.

Here is a picture of the ER diagram for that db
![](https://raw.githubusercontent.com/kleinjoshuaa/UIUC_Certificate/master/dba2.png)

One of the problems I encountered was that I wanted to put FULLTEXT indexes and foreign keys in the same table. Unfortunately the version of MySQL that is used in the O'Reilly School is older than MySQL 5.6. MySQL 5.6 allows for fulltext indexes in InnoDB tables. In MySQL 5.1 only MyISAM tables can use FULLTEXT indexes, but they cannot use Foreign Keys. I kept the FULLTEXT indexes commented out in the .sql script I used to generate the database, but they can be uncommented if it is to be run on a MySQL 5.6 installation

Script to Create the DB: [dba2.sql](https://github.com/kleinjoshuaa/UIUC_Certificate/tree/master/dba2_files/dba2.sql)

DB backed up with mysqldump piped to bzip2: [final_project.sql.bz2](https://github.com/kleinjoshuaa/UIUC_Certificate/tree/master/dba2_files/final_project.sql.bz2)

Staff table backed up with mysqldump (in old school html): [final_project.html](http://github.com/kleinjoshuaa/UIUC_Certificate/tree/master/dba2_files/final_project.html)
