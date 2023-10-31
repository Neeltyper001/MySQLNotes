-- Certainly! Here are a couple of simpler trigger examples to help illustrate their basic functionality:

-- 1. **BEFORE INSERT Trigger for Setting Default Value:**
-- This trigger sets a default value for the `created_at` column if it's not provided during insertion.

```sql
CREATE TRIGGER before_insert_set_default_created_at
BEFORE INSERT ON products
FOR EACH ROW
BEGIN
    IF NEW.created_at IS NULL THEN
        SET NEW.created_at = NOW();
    END IF;
END;
```

-- In this trigger, if the `created_at` value is not provided during insertion, it's automatically set to the current timestamp.

-- 2. **AFTER DELETE Trigger for Updating Related Records:**
-- This trigger updates the `total_orders` column in the `customers` table after a related order is deleted from the `orders` table.

```sql
CREATE TRIGGER after_delete_update_total_orders
AFTER DELETE ON orders
FOR EACH ROW
BEGIN
    UPDATE customers
    SET total_orders = total_orders - 1
    WHERE customer_id = OLD.customer_id;
END;
```

-- In this trigger, when an order is deleted, it decreases the `total_orders` count for the corresponding customer in the `customers` table.

-- These simpler examples demonstrate the basic functionality of triggers: setting default values and updating related records based on specific events. Triggers can be customized for various purposes and are a powerful tool in database management.

-- 1. **BEFORE INSERT Trigger for Data Validation:**
-- This trigger prevents insertion of rows where the salary is less than 1000.

```sql
CREATE TRIGGER before_insert_salary_check
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
    IF NEW.salary < 1000 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Salary cannot be less than 1000';
    END IF;
END;
```

-- In this trigger, `NEW.salary` refers to the salary value in the row being inserted. If the salary is less than 1000, the trigger signals an error.

-- 2. **AFTER UPDATE Trigger for Audit Trail:**
-- This trigger logs updates to the `employees` table into an audit table called `employee_audit`.

```sql
CREATE TRIGGER after_update_audit
AFTER UPDATE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employee_audit (emp_id, old_salary, new_salary, change_date)
    VALUES (OLD.emp_id, OLD.salary, NEW.salary, NOW());
END;
```

-- In this trigger, `OLD.salary` represents the salary value before the update, and `NEW.salary` represents the updated salary value. The trigger inserts a new record into the `employee_audit` table whenever an employee's salary is updated.

### 3. **AFTER DELETE Trigger for Cascading Deletion:**
This trigger deletes related records from the `orders` table when a customer is deleted from the `customers` table.

```sql
CREATE TRIGGER after_delete_cascade_orders
AFTER DELETE ON customers
FOR EACH ROW
BEGIN
    DELETE FROM orders WHERE customer_id = OLD.customer_id;
END;
```

-- In this trigger, `OLD.customer_id` refers to the customer ID being deleted. The trigger automatically deletes orders associated with the deleted customer from the `orders` table.

-- 4. **BEFORE UPDATE Trigger for Preventing Changes:**
--This trigger prevents updates to the `product_category` column of the `products` table.

```sql
CREATE TRIGGER before_update_category_lock
BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
    IF NEW.product_category <> OLD.product_category THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Product category cannot be changed';
    END IF;
END;
```

-- In this trigger, if an attempt is made to update the `product_category` column, the trigger signals an error, preventing the change.

-- These examples illustrate various use cases of triggers, including data validation, audit trail creation, cascading deletion, and preventing specific updates. Remember that triggers should be used carefully and sparingly, as they can significantly impact database performance and complexity.