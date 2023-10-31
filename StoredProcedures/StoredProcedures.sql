-- Basic of stored procedures
DELIMETER $$
CREATE PROCEDURE getEmployees()
BEGIN
SELECT * FROM employees;
END$$
DELIMETER ;

-- Why we have used DELIMETER?
-- This is because we have used ; inside the stored procedure (between BEGIN AND END) so in that case MYSQL will consider to end the statement by 
-- default at line no. 5 and will throw an error. So to avoid this we have used DELIMETER.

-- How to call a stored procedure?
CALL getEmployees();

-- How to drop a stored procedure?
DROP PROCEDURE getEmployees;

-- How to create a stored procedure with parameters?
DELIMETER $$
CREATE PROCEDURE getEmployeeById(IN emp_id INT)
BEGIN
SELECT * FROM employees WHERE emp_id = emp_id;
END$$
DELIMETER ;
-- How to call a stored procedure with parameters?
CALL getEmployeeById(1);

-- How to drop a stored procedure with parameters?
DROP PROCEDURE getEmployeeById;

-- How to create a stored procedure with parameters and default values?
DELIMETER $$
CREATE PROCEDURE getEmployeeById(IN emp_id INT, IN emp_name VARCHAR(255) DEFAULT 'John')
BEGIN
SELECT * FROM employees WHERE emp_id = emp_id AND emp_name = emp_name;
END$$
DELIMETER ;