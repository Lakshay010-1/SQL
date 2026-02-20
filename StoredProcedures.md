# Stored Procedures (Other DBMS Support)

- Stored procedures are supported in most major DBMS.
- Syntax and capabilities vary slightly across systems.
- ## Procedures Syntax

  | DBMS           | Create Syntax                                                       | Execute Syntax     | Example                           |
  | -------------- | ------------------------------------------------------------------- | ------------------ | --------------------------------- |
  | **MySQL**      | `CREATE PROCEDURE name() BEGIN ... END;`                            | `CALL name();`     | `CALL GetEmployees();`            |
  | **SQL Server** | `CREATE PROCEDURE name AS BEGIN ... END;`                           | `EXEC name;`       | `EXEC GetEmployees;`              |
  | **PostgreSQL** | `CREATE PROCEDURE name() LANGUAGE plpgsql AS $$ BEGIN ... END; $$;` | `CALL name();`     | `CALL GetEmployees();`            |
  | **Oracle**     | `CREATE OR REPLACE PROCEDURE name IS BEGIN ... END;`                | `BEGIN name; END;` | `BEGIN GetEmployees; END;`        |
  | **SQLite**     | Not Supported                                                       | —                  | Use triggers or application logic |

---

- ## Variables:
  - Variables are used to store temporary values inside procedures.
  - Scope is limited to the procedure/block.
  - Used for calculations, condition handling, and intermediate storage.
    - ### Variable Declaration
      | DBMS           | Declaration Syntax                                    | Example                      |
      | -------------- | ----------------------------------------------------- | ---------------------------- |
      | **MySQL**      | `DECLARE var_name datatype;`                          | `DECLARE total_salary INT;`  |
      | **SQL Server** | `DECLARE @var_name datatype;`                         | `DECLARE @total_salary INT;` |
      | **PostgreSQL** | `DECLARE var_name datatype;` (inside `DECLARE` block) | `DECLARE total_salary INT;`  |
      | **Oracle**     | `var_name datatype;` (inside `DECLARE` block)         | `total_salary NUMBER;`       |

- ## IF...ELSE
  - Used to execute conditional logic inside procedures.
  - ### Syntax
    | DBMS           | Syntax                                          | Example                                                                                         |
    | -------------- | ----------------------------------------------- | ----------------------------------------------------------------------------------------------- |
    | **MySQL**      | `IF condition THEN ... ELSE ... END IF;`        | `IF total > 50000 THEN SET grade = 'High'; ELSE SET grade = 'Low'; END IF;`                     |
    | **SQL Server** | `IF condition BEGIN ... END ELSE BEGIN ... END` | `IF @total > 50000 BEGIN SET @grade = 'High'; END ELSE BEGIN SET @grade = 'Low'; END`           |
    | **PostgreSQL** | `IF condition THEN ... ELSE ... END IF;`        | `IF total > 50000 THEN RAISE NOTICE 'High'; ELSE RAISE NOTICE 'Low'; END IF;`                   |
    | **Oracle**     | `IF condition THEN ... ELSE ... END IF;`        | `IF total > 50000 THEN DBMS_OUTPUT.PUT_LINE('High'); ELSE DBMS_OUTPUT.PUT_LINE('Low'); END IF;` |

- ## Error Handling
  - Used to handle runtime errors inside procedures.
  - Prevents abrupt termination and allows controlled responses.
  - ### Syntax
    | DBMS           | Syntax                                             | Example                                                                                                           |
    | -------------- | -------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
    | **MySQL**      | `DECLARE ... HANDLER FOR condition ...;`           | `DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET msg = 'Error occurred';`                                           |
    | **SQL Server** | `BEGIN TRY ... END TRY BEGIN CATCH ... END CATCH`  | `BEGIN TRY SELECT 1/0; END TRY BEGIN CATCH PRINT 'Error occurred'; END CATCH;`                                    |
    | **PostgreSQL** | `BEGIN ... EXCEPTION WHEN condition THEN ... END;` | `BEGIN SELECT 1/0; EXCEPTION WHEN division_by_zero THEN RAISE NOTICE 'Error occurred'; END;`                      |
    | **Oracle**     | `BEGIN ... EXCEPTION WHEN condition THEN ... END;` | `BEGIN SELECT 1/0 INTO v FROM dual; EXCEPTION WHEN ZERO_DIVIDE THEN DBMS_OUTPUT.PUT_LINE('Error occurred'); END;` |

- ## Key Differences

  | Feature                       | MySQL   | SQL Server  | PostgreSQL                                  | Oracle             |
  | ----------------------------- | ------- | ----------- | ------------------------------------------- | ------------------ |
  | Language                      | SQL     | T-SQL       | PL/pgSQL                                    | PL/SQL             |
  | Requires Language Declaration | No      | No          | Yes                                         | No                 |
  | Supports OUT Parameters       | Yes     | Yes         | Yes                                         | Yes                |
  | Exception Handling            | Limited | TRY...CATCH | EXCEPTION block                             | EXCEPTION block    |
  | Return Result Set Directly    | Yes     | Yes         | Needs `REFCURSOR` or SELECT inside function | Usually via cursor |
