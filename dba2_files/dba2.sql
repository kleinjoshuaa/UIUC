

/* (c)2012 Joshua Klein, All Rights Reserved */
/* Final Project for course DBA2 */

/* Database for Medical Lab Tests */

Create DATABASE LabTests;
USE LabTests;

/* Create Tables and Insert Data */
Create Table Staff
(
	staff_id int NOT NULL auto_increment, 
	Login varchar(20),
	FirstName varchar(50) NOT NULL,
	LastName varchar(50) NOT NULL,
	birthdate date,
	title char(15),
	PRIMARY KEY (staff_id)
) ENGINE=InnoDB;

/* Staff Sample Data */

INSERT INTO Staff (Login, FirstName, LastName, birthdate, title) VALUES ('FJackson', 'Fay', 'Jackson', '1971-07-03', 'REG NURSE');
INSERT INTO Staff (Login, FirstName, LastName, birthdate, title) VALUES ('CBurrell', 'Carmen', 'Burrell', '1950-06-03', 'DOCTOR');
INSERT INTO Staff (Login, FirstName, LastName, birthdate, title) VALUES ('NBeane', 'Nancy', 'Beane', '1985-05-18', 'LAB TECH');
INSERT INTO Staff (Login, FirstName, LastName, birthdate, title) VALUES ('JRandall', 'James', 'Randall', '1948-05-17', 'DOCTOR');
INSERT INTO Staff (Login, FirstName, LastName, birthdate, title) VALUES ('DKnight', 'Dora', 'Knight', '1966-07-19', 'REG NURSE');


/* MySQL 5.6 supports fulltext on InnoDB tables, but I don't have acess to that for this project */
Create Table Test_Types 
(
	test_type_code char(10) NOT NULL,
	test_type_description text,
	/* FULLTEXT  (test_type_description), */
	PRIMARY KEY (test_type_code)
) ENGINE=InnoDB;

/* Insert Test Type Info (these are the test types) */
INSERT INTO Test_Types (test_type_code, test_type_description) VALUES ('BLOOD TEST', 'A blood test is a laboratory analysis performed on a blood sample that is usually extracted from a vein in the arm using a needle, or via fingerprick. Blood tests are used to determine physiological and biochemical states, such as disease, mineral content, drug effectiveness, and organ function.');
INSERT INTO Test_Types (test_type_code, test_type_description) VALUES ('BIOPSY', 'the medical removal of tissue from a living subject to determine the presence or extent of a disease.'); 
INSERT INTO Test_Types (test_type_code, test_type_description) VALUES ('APGAR', 'The Apgar score is determined by evaluating the newborn baby on five simple criteria on a scale from zero to two, then summing up the five values thus obtained. The resulting Apgar score ranges from zero to 10. The five criteria are summarized using words chosen to form a backronym (Appearance, Pulse, Grimace, Activity, Respiration).');
INSERT INTO Test_Types (test_type_code, test_type_description) VALUES ('WASSERMAN', 'A sample of blood or cerebrospinal fluid is taken and introduced to the antigen - cardiolipin extracted from bovine muscle or heart. Syphilis non-specific antibodies (reagin, see RPR) react with the lipid - the Wassermann reaction of antiphospholipid antibodies (APAs). The intensity of the reaction (1, 2, 3, or 4) indicates the severity of the condition.');
INSERT INTO Test_Types (test_type_code, test_type_description) VALUES ('GLUCOS TOL', 'A glucose tolerance test is a medical test in which glucose is given and blood samples taken afterward to determine how quickly it is cleared from the blood. The test is usually used to test for diabetes, insulin resistance, and sometimes reactive hypoglycemia and acromegaly, or rarer disorders of carbohydrate metabolism.');


Create Table Test_Definitions
(
	test_id int NOT NULL auto_increment,
	test_type_code char(10) NOT NULL,
	PRIMARY KEY (test_id),
	KEY idx_test_type_code (test_type_code),
	CONSTRAINT idx_fk_test_type_code_td FOREIGN KEY (test_type_code)
		REFERENCES Test_Types (test_type_code) ON UPDATE CASCADE
) ENGINE=InnoDB;

/* Sample Medical Test Definitions (these are the tests that were run)*/
INSERT INTO Test_Definitions (test_type_code) VALUES ('BLOOD TEST');
INSERT INTO Test_Definitions (test_type_code) VALUES ('BIOPSY');
INSERT INTO Test_Definitions (test_type_code) VALUES ('WASSERMAN');
INSERT INTO Test_Definitions (test_type_code) VALUES ('APGAR');
INSERT INTO Test_Definitions (test_type_code) VALUES ('GLUCOS TOL');


Create Table Tests_Administered 
(
	test_admin_id int NOT NULL auto_increment, 
	test_id int NOT NULL,
	test_admin_by_staff_id int NOT NULL,
	test_admin_date datetime NOT NULL,
	test_admin_details text,
	KEY idx_test_admin_date (test_admin_date),
	PRIMARY KEY (test_admin_id),
	CONSTRAINT idx_fk_test_id_ta FOREIGN KEY (test_id)
		REFERENCES Test_Definitions (test_id) ON UPDATE CASCADE,
	CONSTRAINT idx_fk_admin_by_staff_id_ta FOREIGN KEY (test_admin_by_staff_id)
		REFERENCES Staff (staff_id) ON UPDATE CASCADE
) ENGINE=InnoDB;

/* Sample Medical Test Data */
Insert INTO Tests_Administered (test_id, test_admin_by_staff_id, test_admin_date, test_admin_details) VALUES (1,1,'2012-03-23 11:12:32', 'Patient was extremely tired');
Insert INTO Tests_Administered (test_id, test_admin_by_staff_id, test_admin_date, test_admin_details) VALUES (2,4,'2012-03-23 13:12:32',  NULL);
Insert INTO Tests_Administered (test_id, test_admin_by_staff_id, test_admin_date, test_admin_details) VALUES (4,5,'2012-03-23 14:14:31',  NULL);
Insert INTO Tests_Administered (test_id, test_admin_by_staff_id, test_admin_date, test_admin_details) VALUES (3,1,'2012-03-23 16:12:38',  'Patient dislikes needles');
Insert INTO Tests_Administered (test_id, test_admin_by_staff_id, test_admin_date, test_admin_details) VALUES (5,5,'2012-03-23 16:18:35',  NULL);


/* MySQL 5.6 supports fulltext on InnoDB tables, but I don't have acess to that for this project */
Create Table Test_Results
(
	test_results_id int NOT NULL auto_increment, 
	test_admin_id int NOT NULL, 
	test_results_details text,
	/* FULLTEXT (test_results_details), */
	PRIMARY KEY (test_results_id),
	KEY idx_test_admin_id (test_admin_id),
	CONSTRAINT idx_fk_test_admin_id_tr FOREIGN KEY (test_admin_id)
		REFERENCES Tests_Administered (test_admin_id) ON UPDATE CASCADE
) ENGINE=InnoDB;

/* Sample Medical Test Results */
INSERT INTO Test_Results (test_admin_id, test_results_details) VALUES (1, 'Patient has low Vitamin D, White blood cell count is in normal range');
INSERT INTO Test_Results (test_admin_id, test_results_details) VALUES (2, 'Cells were not pre-cancerous, no evidence of cancerous growth found');
INSERT INTO Test_Results (test_admin_id, test_results_details) VALUES (4, 'Intensity of the reaction was 4, patient likely has syphyllis');
INSERT INTO Test_Results (test_admin_id, test_results_details) VALUES (3, 'A: Blue at extremities, body pink. P: Pulse is 104. G: Crys when stimulated. A: Little muscle tone found. R: Newborn has strong cry');
INSERT INTO Test_Results (test_admin_id, test_results_details) VALUES (5, 'Patient Impared Glucose Tolerance (IGT), test returned two-hour glucose levels of 192 mg/dL');



Create Table Reimbursement_Rates
(
	test_type_code char(10) NOT NULL, 
	Medicare_Bill_Value decimal(10,2) NOT NULL,
	Medicaid_Bill_Value decimal(10,2) NOT NULL,
	Private_Bill_Value decimal(10,2) NOT NULL,
	PRIMARY KEY (test_type_code),
	CONSTRAINT idx_fk_test_type_code_r FOREIGN KEY (test_type_code)
		REFERENCES Test_Types (test_type_code) ON UPDATE CASCADE 
) ENGINE=InnoDB;

INSERT INTO Reimbursement_Rates (test_type_code, Medicare_Bill_Value, Medicaid_Bill_Value, Private_Bill_Value) VALUES ('BLOOD TEST', 35.99, 32.99, 45.99);
INSERT INTO Reimbursement_Rates (test_type_code, Medicare_Bill_Value, Medicaid_Bill_Value, Private_Bill_Value) VALUES ('BIOPSY', 38.99, 37.99, 65.99);
INSERT INTO Reimbursement_Rates (test_type_code, Medicare_Bill_Value, Medicaid_Bill_Value, Private_Bill_Value) VALUES ('APGAR', 65.99, 63.99, 75.99);
INSERT INTO Reimbursement_Rates (test_type_code, Medicare_Bill_Value, Medicaid_Bill_Value, Private_Bill_Value) VALUES ('WASSERMAN', 23.99, 20.99, 35.99);
INSERT INTO Reimbursement_Rates (test_type_code, Medicare_Bill_Value, Medicaid_Bill_Value, Private_Bill_Value) VALUES ('GLUCOS TOL', 38.99, 34.99, 49.99);

/* Optimise Tables */
Optimize Table Staff;
Optimize Table Tests_Administered;
Optimize Table Test_Definitions;
Optimize Table Test_Results;
Optimize Table Test_Types;
Optimize Table Reimbursement_Rates;

/* Create View for Allied Health Pros*/
CREATE VIEW Tests_Administered_Simplified as
SELECT test_admin_id, test_id, test_admin_by_staff_id, test_admin_date, test_admin_details FROM LabTests.Tests_Administered as T JOIN Staff as S ON (T.test_admin_by_staff_id = S.staff_id) WHERE  S.Login = substring_index(user(), '@', 1);

/* Create Users */

/* Flush Privileges */
flush privileges;

/* Doctors cannot see the reimbursement rates of medical tests, but can see everything else */
/* They cannot update the staff table */
create user 'Doctor'@'localhost' identified by 'medDB';
grant select on LabTests.Staff to 'Doctor'@'localhost';
grant delete,insert,select,update on LabTests.Tests_Administered to 'Doctor'@'localhost';
grant delete,insert,select,update on LabTests.Test_Definitions to 'Doctor'@'localhost';
grant delete,insert,select,update on LabTests.Test_Results to 'Doctor'@'localhost';
grant delete,insert,select,update on LabTests.Test_Types to 'Doctor'@'localhost';

/* Medical Billers cannot see the results of tests (Column Level Security) */
/* Medical Billers cannot update any tables except in the Reimbursement Rates table */
create user 'Med_Biller'@'localhost' identified by 'medDB';
grant select on LabTests.Staff to 'Med_Biller'@'localhost';
grant select on LabTests.Tests_Administered to 'Med_Biller'@'localhost';
grant select on LabTests.Test_Definitions to 'Med_Biller'@'localhost';
grant select(test_results_id, test_admin_id) on LabTests.Test_Results to 'Med_Biller'@'localhost';
grant select on LabTests.Test_Types to 'Med_Biller'@'localhost';
grant delete,insert,select,update on LabTests.Reimbursement_Rates to 'Med_Biller'@'localhost';

/* Allied Health Professionals cannot see tests they did not perform  (row level security)*/
/* They cannot see billing rates */
/* They cannot update the staff table */
/* The can not update test types */

create user 'AlliedHealth'@'localhost' identified by 'medDB';
grant select on LabTests.Staff to 'AlliedHealth'@'localhost';
grant delete,insert,select,update on LabTests.Tests_Administered_Simplified to 'AlliedHealth'@'localhost';
grant select on LabTests.Test_Definitions to 'AlliedHealth'@'localhost';
grant delete,insert,select,update on LabTests.Test_Results to 'AlliedHealth'@'localhost';
grant select on LabTests.Test_Types to 'AlliedHealth'@'localhost';


/* Make new accounts for the Staff table members */

create user 'FJackson'@'localhost' identified by 'medDB';
create user 'CBurrell'@'localhost' identified by 'medDB';
create user 'NBeane'@'localhost' identified by 'medDB';
create user 'JRandall'@'localhost' identified by 'medDB';
create user 'DKnight'@'localhost' identified by 'medDB';

/* Copy Permissions to create staff accounts */


/* change to mysql */
use mysql;

insert into tables_priv
(Host, Db, User, Table_name, Grantor, Table_priv, Column_priv)
 select Host, Db, 'FJackson' as User, Table_name, 'root@localhost' as Grantor, Table_priv, Column_priv
 from tables_priv
 WHERE user='AlliedHealth';
 
 insert into tables_priv
(Host, Db, User, Table_name, Grantor, Table_priv, Column_priv)
 select Host, Db, 'CBurrell' as User, Table_name, 'root@localhost' as Grantor, Table_priv, Column_priv
 from tables_priv
 WHERE user='Doctor';
 
 insert into tables_priv
(Host, Db, User, Table_name, Grantor, Table_priv, Column_priv)
 select Host, Db, 'NBeane' as User, Table_name, 'root@localhost' as Grantor, Table_priv, Column_priv
 from tables_priv
 WHERE user='AlliedHealth';
 
 insert into tables_priv
(Host, Db, User, Table_name, Grantor, Table_priv, Column_priv)
 select Host, Db, 'JRandall' as User, Table_name, 'root@localhost' as Grantor, Table_priv, Column_priv
 from tables_priv
 WHERE user='Doctor';
 
 insert into tables_priv
(Host, Db, User, Table_name, Grantor, Table_priv, Column_priv)
 select Host, Db, 'DKnight' as User, Table_name, 'root@localhost' as Grantor, Table_priv, Column_priv
 from tables_priv
 WHERE user='AlliedHealth';

/* Finally flush privileges after all of this */
flush privileges;
 
 /* DONE! */
 
