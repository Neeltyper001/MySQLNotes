-- LEft join
-- 1. Left join is used to return all rows from left table and matching rows from the right table.
-- 2. It returns all rows from the left table even if there are no matches in the right table.
-- 3. The syntax of left join is:
-- SELECT column_name(s)
-- FROM table1
-- LEFT JOIN table2
-- ON table1.column_name = table2.column_name;
-- 4. The above syntax can be written as:
-- SELECT column_name(s)
-- FROM table1
-- LEFT OUTER JOIN table2
-- ON table1.column_name = table2.column_name;

-- AN example in form of query
SELECT employees.emp_id, employees.emp_name, Assets.asset_name
FROM employees
LEFT JOIN Assets
ON employees.emp_id = Assets.emp_id;
