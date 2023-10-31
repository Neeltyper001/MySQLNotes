ALTER TABLE employees
MODIFY COLUMN phone_num  VARCHAR(10) NULL;

update employees SET phone_num = "8392949320" where emp_id = 1;
update employees SET phone_num = "9090393923" where emp_id = 2;
update employees SET phone_num = "8989474323" where emp_id = 3;