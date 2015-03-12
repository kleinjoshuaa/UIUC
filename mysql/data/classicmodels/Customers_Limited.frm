TYPE=VIEW
query=select `c`.`customerNumber` AS `customerNumber`,`c`.`customerName` AS `customerName`,`c`.`contactLastName` AS `contactLastName`,`c`.`contactFirstName` AS `contactFirstName`,`c`.`phone` AS `phone`,`c`.`addressLine1` AS `addressLine1`,`c`.`addressLine2` AS `addressLine2`,`c`.`city` AS `city`,`c`.`state` AS `state`,`c`.`postalCode` AS `postalCode`,`c`.`country` AS `country`,`c`.`salesRepEmployeeNumber` AS `salesRepEmployeeNumber`,`c`.`creditLimit` AS `creditLimit` from (`classicmodels`.`Customers` `c` join `classicmodels`.`Employees` `e` on((`c`.`salesRepEmployeeNumber` = `e`.`employeeNumber`))) where (substring_index(`e`.`email`,\'@\',1) = convert(substring_index(user(),\'@\',1) using latin1))
md5=9c657a233ac4c351ceb5f469d0917cd8
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2012-06-19 01:30:26
create-version=1
source=select c.customerNumber, c.customerName, c.contactLastName, c.contactFirstName, c.phone, c.addressLine1, c.addressLine2, c.city, c.state, c.postalCode, c.country, c.salesRepEmployeeNumber, c.creditLimit FROM Customers as c JOIN Employees as e on (c.salesRepEmployeeNumber = e.employeeNumber) WHERE substring_index(e.email, \'@\', 1) = substring_index(user(), \'@\', 1)
client_cs_name=latin1
connection_cl_name=latin1_swedish_ci
view_body_utf8=select `c`.`customerNumber` AS `customerNumber`,`c`.`customerName` AS `customerName`,`c`.`contactLastName` AS `contactLastName`,`c`.`contactFirstName` AS `contactFirstName`,`c`.`phone` AS `phone`,`c`.`addressLine1` AS `addressLine1`,`c`.`addressLine2` AS `addressLine2`,`c`.`city` AS `city`,`c`.`state` AS `state`,`c`.`postalCode` AS `postalCode`,`c`.`country` AS `country`,`c`.`salesRepEmployeeNumber` AS `salesRepEmployeeNumber`,`c`.`creditLimit` AS `creditLimit` from (`classicmodels`.`Customers` `c` join `classicmodels`.`Employees` `e` on((`c`.`salesRepEmployeeNumber` = `e`.`employeeNumber`))) where (substring_index(`e`.`email`,\'@\',1) = convert(substring_index(user(),\'@\',1) using latin1))
