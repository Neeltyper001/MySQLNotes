-- RIGHT JOIN
-- 1. Right join is used to return all rows from right table and matching rows from the left table.
-- 2. It returns all rows from the right table even if there are no matches in the left table.
-- 3. The syntax of right join is:
-- SELECT column_name(s)
-- FROM table1
-- RIGHT JOIN table2
-- ON table1.column_name = table2.column_name;
-- 4. The above syntax can be written as:
-- SELECT column_name(s)
-- FROM table1
-- RIGHT OUTER JOIN table2
-- ON table1.column_name = table2.column_name;

-- AN example in form of query
SELECT employees.emp_id, employees.emp_name, Assets.asset_name
FROM employees
RIGHT JOIN Assets
ON employees.emp_id = Assets.emp_id;
