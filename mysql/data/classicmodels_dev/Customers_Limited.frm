TYPE=VIEW
query=select `c`.`customerNumber` AS `customerNumber`,`c`.`customerName` AS `customerName`,`c`.`contactLastName` AS `contactLastName`,`c`.`contactFirstName` AS `contactFirstName`,`c`.`phone` AS `phone`,`c`.`addressLine1` AS `addressLine1`,`c`.`addressLine2` AS `addressLine2`,`c`.`city` AS `city`,`c`.`state` AS `state`,`c`.`postalCode` AS `postalCode`,`c`.`country` AS `country`,`c`.`salesRepEmployeeNumber` AS `salesRepEmployeeNumber`,`c`.`creditLimit` AS `creditLimit` from (`classicmodels_dev`.`Customers` `c` join `classicmodels_dev`.`Employees` `e` on((`c`.`salesRepEmployeeNumber` = `e`.`employeeNumber`))) where (substring_index(`e`.`email`,\'@\',1) = convert(substring_index(user(),\'@\',1) using latin1))
md5=af9e7f8e1e5248d25e6a367ae8e2071a
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2012-06-30 02:12:27
create-version=1
source=select `c`.`customerNumber` AS `customerNumber`,`c`.`customerName` AS `customerName`,`c`.`contactLastName` AS `contactLastName`,`c`.`contactFirstName` AS `contactFirstName`,`c`.`phone` AS `phone`,`c`.`addressLine1` AS `addressLine1`,`c`.`addressLine2` AS `addressLine2`,`c`.`city` AS `city`,`c`.`state` AS `state`,`c`.`postalCode` AS `postalCode`,`c`.`country` AS `country`,`c`.`salesRepEmployeeNumber` AS `salesRepEmployeeNumber`,`c`.`creditLimit` AS `creditLimit` from (`Customers` `c` join `Employees` `e` on((`c`.`salesRepEmployeeNumber` = `e`.`employeeNumber`))) where (substring_index(`e`.`email`,\'@\',1) = convert(substring_index(user(),\'@\',1) using latin1))
client_cs_name=latin1
connection_cl_name=latin1_swedish_ci
view_body_utf8=select `c`.`customerNumber` AS `customerNumber`,`c`.`customerName` AS `customerName`,`c`.`contactLastName` AS `contactLastName`,`c`.`contactFirstName` AS `contactFirstName`,`c`.`phone` AS `phone`,`c`.`addressLine1` AS `addressLine1`,`c`.`addressLine2` AS `addressLine2`,`c`.`city` AS `city`,`c`.`state` AS `state`,`c`.`postalCode` AS `postalCode`,`c`.`country` AS `country`,`c`.`salesRepEmployeeNumber` AS `salesRepEmployeeNumber`,`c`.`creditLimit` AS `creditLimit` from (`classicmodels_dev`.`Customers` `c` join `classicmodels_dev`.`Employees` `e` on((`c`.`salesRepEmployeeNumber` = `e`.`employeeNumber`))) where (substring_index(`e`.`email`,\'@\',1) = convert(substring_index(user(),\'@\',1) using latin1))
