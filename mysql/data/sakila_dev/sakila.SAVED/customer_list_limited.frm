TYPE=VIEW
query=select `cu`.`customer_id` AS `ID`,concat(`cu`.`first_name`,_utf8\' \',`cu`.`last_name`) AS `name`,`a`.`address` AS `address`,`a`.`postal_code` AS `zip code`,`a`.`phone` AS `phone`,`sakila`.`city`.`city` AS `city`,`sakila`.`country`.`country` AS `country`,if(`cu`.`active`,_utf8\'active\',_utf8\'\') AS `notes`,`cu`.`store_id` AS `SID` from ((((`sakila`.`customer` `cu` join `sakila`.`address` `a` on((`cu`.`address_id` = `a`.`address_id`))) join `sakila`.`city` on((`a`.`city_id` = `sakila`.`city`.`city_id`))) join `sakila`.`country` on((`sakila`.`city`.`country_id` = `sakila`.`country`.`country_id`))) join `sakila`.`staff` `s` on((`cu`.`store_id` = `s`.`store_id`))) where (`s`.`username` = substring_index(user(),\'@\',1))
md5=a1bc4f858db0b4035cda639e11c194e7
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2012-06-30 01:49:52
create-version=1
source=select `cu`.`customer_id` AS `ID`,concat(`cu`.`first_name`,_utf8\' \',`cu`.`last_name`) AS `name`,`a`.`address` AS `address`,`a`.`postal_code` AS `zip code`,`a`.`phone` AS `phone`,`city`.`city` AS `city`,`country`.`country` AS `country`,if(`cu`.`active`,_utf8\'active\',_utf8\'\') AS `notes`,`cu`.`store_id` AS `SID` from ((((`customer` `cu` join `address` `a` on((`cu`.`address_id` = `a`.`address_id`))) join `city` on((`a`.`city_id` = `city`.`city_id`))) join `country` on((`city`.`country_id` = `country`.`country_id`))) join `staff` `s` on((`cu`.`store_id` = `s`.`store_id`))) where (`s`.`username` = substring_index(user(),\'@\',1))
client_cs_name=latin1
connection_cl_name=latin1_swedish_ci
view_body_utf8=select `cu`.`customer_id` AS `ID`,concat(`cu`.`first_name`,\' \',`cu`.`last_name`) AS `name`,`a`.`address` AS `address`,`a`.`postal_code` AS `zip code`,`a`.`phone` AS `phone`,`sakila`.`city`.`city` AS `city`,`sakila`.`country`.`country` AS `country`,if(`cu`.`active`,\'active\',\'\') AS `notes`,`cu`.`store_id` AS `SID` from ((((`sakila`.`customer` `cu` join `sakila`.`address` `a` on((`cu`.`address_id` = `a`.`address_id`))) join `sakila`.`city` on((`a`.`city_id` = `sakila`.`city`.`city_id`))) join `sakila`.`country` on((`sakila`.`city`.`country_id` = `sakila`.`country`.`country_id`))) join `sakila`.`staff` `s` on((`cu`.`store_id` = `s`.`store_id`))) where (`s`.`username` = substring_index(user(),\'@\',1))
