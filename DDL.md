# Data Definition Language (DDL)

- Used to `create`, `modify`, and `delete` database structures.
- Affects schema objects such as databases, tables, indexes, triggers, etc.

---

- ## Commands
  - ### 1. CREATE
    - Used to create databases and tables.

    - **Create Database**

      ```sql
      CREATE DATABASE db_name;
      CREATE DATABASE IF NOT EXISTS db_name;
      ```

    - **Create Table**

      ```sql
      CREATE TABLE table_name (
          column_name1 DataType1 Constraint1,
          column_name2 DataType2 Constraint2,
          column_name3 DataType3 Constraint3
      );
      ```

  - ### 2. ALTER
    - Used to modify existing table structure.

    - **Add Column**

      ```sql
      ALTER TABLE table_name ADD COLUMN new_column data_type;
      ```

    - **Rename Column**

      ```sql
      ALTER TABLE table_name RENAME COLUMN old_column TO new_column;
      ```

    - **Drop Column**

      ```sql
      ALTER TABLE table_name DROP COLUMN column_name;
      ```

    - **Change Column (Rename + Change Definition – MySQL)**

      ```sql
      ALTER TABLE table_name CHANGE old_column new_column data_type;
      ```

    - **Modify Column (Change Data Type / Constraints)**
      ```sql
      ALTER TABLE table_name MODIFY column_name new_data_type;
      ```

  - ### 3. DROP
    - Used to permanently delete database objects.

    - **Drop Database**

      ```sql
      DROP DATABASE db_name;
      DROP DATABASE IF EXISTS db_name;
      ```

    - **Drop Table**

      ```sql
      DROP TABLE IF EXISTS table_name;
      ```

    - **Drop Trigger**

      ```sql
      DROP TRIGGER IF EXISTS trigger_name;
      ```

  - ### 4. SHOW
    - Displays database information.

      ```sql
      SHOW DATABASES;
      SHOW TABLES;
      ```

  - ### 5. USE
    - Selects a database to work with before executing SQL statements.

      ```sql
      USE db_name;
      ```
