# Transaction Control Language (TCL)

- Used to manage transactions in a database.
- Controls how changes made by `INSERT`, `UPDATE`, and `DELETE` are committed or reverted.
- Ensures data integrity and consistency.

---

- ## Commands
  - ### 1. BEGIN (START TRANSACTION)
    - Explicitly starts a transaction.
    - Groups multiple SQL statements into a single logical unit.

    - #### Syntax

      ```sql
      BEGIN;
      ```

      or

      ```sql
      START TRANSACTION;
      ```

    - #### Example
      ```sql
      BEGIN;
      UPDATE employees SET salary = salary + 1000 WHERE emp_id = 101;
      DELETE FROM employees WHERE emp_id = 202;
      COMMIT;
      ```

  - ### 2. COMMIT
    - Saves all changes made during the current transaction permanently.
    - Makes changes visible to other users.
    - #### Syntax

      ```sql
      COMMIT;
      ```

    - #### Example

      ```sql
      UPDATE employees
      SET salary = salary * 1.1
      WHERE department_id = 10;

      COMMIT;
      ```

  - ### 3. SAVEPOINT
    - Creates a checkpoint within a transaction.
    - Allows partial rollback.
    - #### Syntax

      ```sql
      SAVEPOINT savepoint_name;
      ```

    - #### Example

      ```sql
      UPDATE employees
      SET salary = salary + 500
      WHERE employee_id = 101;

      SAVEPOINT sp1;
      ```

  - ### 4. ROLLBACK
    - Undoes uncommitted changes.
    - Can roll back the entire transaction or to a specific savepoint.
    - #### Syntax

      ```sql
      ROLLBACK;
      ```

      or

      ```sql
      ROLLBACK TO savepoint_name;
      ```

    - #### Example

      ```sql
      DELETE FROM employees
      WHERE department_id = 20;

      ROLLBACK;
      ```

  - ### 5. SET TRANSACTION
    - Defines properties for the current transaction.
    - Controls isolation level and read/write behavior.
    - #### Syntax

      ```sql
      SET TRANSACTION READ ONLY;
      ```

    - #### Example
      ```sql
      SET TRANSACTION READ ONLY;
      ```
