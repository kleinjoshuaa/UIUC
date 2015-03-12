TYPE=VIEW
query=select `T`.`test_admin_id` AS `test_admin_id`,`T`.`test_id` AS `test_id`,`T`.`test_admin_by_staff_id` AS `test_admin_by_staff_id`,`T`.`test_admin_date` AS `test_admin_date`,`T`.`test_admin_details` AS `test_admin_details` from (`LabTests`.`Tests_Administered` `T` join `LabTests`.`Staff` `S` on((`T`.`test_admin_by_staff_id` = `S`.`staff_id`))) where (`S`.`Login` = convert(substring_index(user(),\'@\',1) using latin1))
md5=f13edc93512f3872d5d3bf86b30ac875
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2012-07-07 14:55:39
create-version=1
source=SELECT test_admin_id, test_id, test_admin_by_staff_id, test_admin_date, test_admin_details FROM LabTests.Tests_Administered as T JOIN Staff as S ON (T.test_admin_by_staff_id = S.staff_id) WHERE  S.Login = substring_index(user(), \'@\', 1)
client_cs_name=latin1
connection_cl_name=latin1_swedish_ci
view_body_utf8=select `T`.`test_admin_id` AS `test_admin_id`,`T`.`test_id` AS `test_id`,`T`.`test_admin_by_staff_id` AS `test_admin_by_staff_id`,`T`.`test_admin_date` AS `test_admin_date`,`T`.`test_admin_details` AS `test_admin_details` from (`LabTests`.`Tests_Administered` `T` join `LabTests`.`Staff` `S` on((`T`.`test_admin_by_staff_id` = `S`.`staff_id`))) where (`S`.`Login` = convert(substring_index(user(),\'@\',1) using latin1))
