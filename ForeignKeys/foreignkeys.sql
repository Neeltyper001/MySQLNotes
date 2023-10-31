-- adding foreign key to new table
CREATE TABLE Assets (col_1 datatype, col_2 datatype, ...
FOREIGN KEY (col_2) REFERENCES table_1(col_2)
);

-- adding foreign key to existing table
ALTER Table Assets
ADD COLUMN emp_id INT NULL 
ADD FOREIGN KEY (emp_id) REFERENCES employees(emp_id);