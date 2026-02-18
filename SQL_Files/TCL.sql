-- Transaction Control Language (TCL) commands are used to manage transactions in a database — meaning they handle the way changes (like INSERT, UPDATE, DELETE) are finalized or undone.


-- Begin command 
-- ( Explicitly starts a transaction )
BEGIN;
/*
e.g.-
    BEGIN;   -- start transaction
    UPDATE employees SET salary = salary + 1000 WHERE emp_id = 101;
    DELETE FROM employees WHERE emp_id = 202;
    COMMIT;  -- save both changes
*/


-- Commit command 
-- ( Saves all the changes permanently )
COMMIT;
/*
e.g.-
    UPDATE employees SET salary = salary * 1.1 WHERE department_id = 10;
    COMMIT;
*/



-- Savepoint command 
-- ( Creates a checkpoint to roll back partially )
SAVEPOINT point_name;
/*
e.g.-
    UPDATE employees SET salary = salary + 500 WHERE employee_id = 101;
    SAVEPOINT sp1;
*/



-- Rollback command 
-- ( Undoes all uncommitted changes (or up to a savepoint) )
ROLLBACK;
/*
e.g.-
    DELETE FROM employees WHERE department_id = 20;
    ROLLBACK;
*/



-- Set command 
-- ( Defines properties for the transaction (isolation level, read/write) )
SET TRANSACTION READ ONLY;
/*
e.g.-
    SET TRANSACTION READ ONLY;
*/