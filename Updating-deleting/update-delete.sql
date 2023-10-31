-- Updation

UPDATE employees
SET hourly_pay=25.00 , hired_date = "2023-06-07"
WHERE emp_id = 4;

-- Multiple updation
 UPDATE employees
     SET Mentioned_Date = current_date(), 
         Mentioned_time = current_time(), 
         MENTIONED_DATETIME = now();

-- Deletion
DELETE FROM employees
WHERE emp_id = 5;
