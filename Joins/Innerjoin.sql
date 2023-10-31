-- iNNER JOIN
-- 1. Inner join is used to return rows from both tables that satisfy the given condition.
-- 2. It is the most common type of join.
-- 3. It is also known as simple join.
-- 4. It returns all rows from both tables where the key record of one table is equal to the key records of another table.
-- 5. The syntax of inner join is:
-- SELECT column_name(s)
-- FROM table1
-- INNER JOIN table2
-- ON table1.column_name = table2.column_name;
-- 6. The above syntax is also known as equi-join.
-- 7. The above syntax can be written as:
-- SELECT column_name(s)
-- FROM table1
-- JOIN table2
-- ON table1.column_name = table2.column_name;

-- An example in form of query
SELECT employees.emp_id, employees.emp_name, Assets.asset_name
FROM employees
INNER JOIN Assets
ON employees.emp_id = Assets.emp_id;