# TRIGGERS

- A trigger is a stored program that automatically executes in response to table events.
- Events: `INSERT`, `UPDATE`, `DELETE`.
- Can execute `BEFORE`, `AFTER`, or `INSTEAD OF` (DB-specific).
- ## Syntax
  | DBMS           | Syntax                                                                                   | Example                                                                                                        |
  | -------------- | ---------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
  | **MySQL**      | `CREATE TRIGGER name BEFORE/AFTER event ON table FOR EACH ROW BEGIN ... END;`            | `CREATE TRIGGER trg BEFORE INSERT ON Employees FOR EACH ROW BEGIN SET NEW.created_at = NOW(); END;`            |
  | **SQL Server** | `CREATE TRIGGER name ON table AFTER/INSTEAD OF event AS BEGIN ... END;`                  | `CREATE TRIGGER trg ON Employees AFTER INSERT AS BEGIN PRINT 'Inserted'; END;`                                 |
  | **PostgreSQL** | `CREATE TRIGGER name BEFORE/AFTER event ON table FOR EACH ROW EXECUTE FUNCTION func();`  | `CREATE TRIGGER trg BEFORE INSERT ON Employees FOR EACH ROW EXECUTE FUNCTION log_func();`                      |
  | **Oracle**     | `CREATE OR REPLACE TRIGGER name BEFORE/AFTER event ON table FOR EACH ROW BEGIN ... END;` | `CREATE OR REPLACE TRIGGER trg BEFORE INSERT ON Employees FOR EACH ROW BEGIN :NEW.created_at := SYSDATE; END;` |

---

- ## Components
  - `BEFORE` → Executes before the event.
  - `AFTER` → Executes after the event.
  - `FOR EACH ROW` → Executes once per affected row.
  - `NEW` → Refers to new row values (INSERT / UPDATE).
  - `OLD` → Refers to existing row values (UPDATE / DELETE).

---

- ## Example 1: Basic BEFORE INSERT Trigger

  ```sql
  CREATE TABLE triggerResult (
      message VARCHAR(100),
      name VARCHAR(100)
  );
  ```

  ```sql
  DELIMITER $$

  CREATE TRIGGER my_trigger
  BEFORE INSERT
  ON employees
  FOR EACH ROW
  BEGIN
      INSERT INTO triggerResult
      VALUES ('added a new employee', NEW.name);
  END $$

  DELIMITER ;
  ```

---

- ## Example 2: Conditional Trigger (Using IF)

  ```sql
  DELIMITER $$

  CREATE TRIGGER my_trigger
  BEFORE INSERT
  ON employees
  FOR EACH ROW
  BEGIN
      IF NEW.age = 18 THEN
          INSERT INTO triggerResult
          VALUES ('18 year old employee...', NEW.name);

      ELSEIF NEW.age > 18 THEN
          INSERT INTO triggerResult
          VALUES ('Greater than 18 year old employee...', NEW.name);

      ELSE
          INSERT INTO triggerResult
          VALUES ('Smaller than 18 year old employee...', NEW.name);

      END IF;
  END $$

  DELIMITER ;
  ```

---

- ## Drop Trigger

  ```sql
  DROP TRIGGER trigger_name;
  ```

---

# Important Notes

- `DELIMITER` is required in MySQL when defining multi-statement triggers.
- Triggers cannot be directly executed — they run automatically.
- A table can have multiple triggers for different events.
- Avoid heavy logic inside triggers to prevent performance issues.
