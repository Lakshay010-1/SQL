# Data Manipulation Language (DML)

- Used to `insert`, `update`, `delete` and `truncate` data within database tables.
- Directly modifies table records.
- Ensures data accuracy and consistency.

---

- ## Commands
  - ### 1. INSERT
    - Used to add new records into a table.
    - Unspecified columns automatically take `NULL` or `DEFAULT` values (if defined).

    - **Insert Specific Columns**

      ```sql
      INSERT INTO table_name (column1, column2, column3)
      VALUES (value1, value2, value3);
      ```

    - **Insert Multiple Rows**

      ```sql
      INSERT INTO student (id, name, age)
      VALUES (1, "RAM", 15),
             (2, "SHYAM", 15),
             (3, "KRISHNA", 10);
      ```

    - **Insert All Columns (Order Matters)**

      ```sql
      INSERT INTO student
      VALUES (4, "BALRAM", 12);
      ```

    - **Insert Date Value**

      ```sql
      INSERT INTO table_name (date_column)
      VALUES ('2021-12-10');
      ```

    - **Insert NULL Values**

      ```sql
      INSERT INTO table_name (col1, col2, col3)
      VALUES (NULL, NULL, NULL);
      ```

      ```sql
      INSERT INTO table_name (col1, col2)
      VALUES (val1, val2);
      ```

  - ### 2. UPDATE
    - Used to modify existing records in a table.
    - Always recommended to use with a `WHERE` clause.

      ```sql
      UPDATE table_name
      SET column1 = new_value,
      column2 = new_value
      WHERE condition;
      ```

    - Example:

      ```sql
      UPDATE student
      SET age = 25
      WHERE name = "KRISHNA";
      ```

  - ### 3. DELETE
    - Used to remove records from a table.
    - Use `WHERE` clause to avoid deleting all records.

      ```sql
      DELETE FROM table_name
      WHERE condition;
      ```

    - Example:

      ```sql
      DELETE FROM student
      WHERE age < 15;
      ```

  - ### 4. TRUNCATE
    - Removes all records from a table.
    - Structure remains intact.
    - Faster than `DELETE` (no row-by-row logging in most engines).

      ```sql
      TRUNCATE TABLE table_name;
      ```

    - Difference:
      - `TRUNCATE` → Deletes only data, keeps structure (faster than DELETE).
      - `DELETE` → Deletes only selected data, keeps structure (slower than TRUNCATE).
      - `DROP` → Deletes entire table/database (structure + data).
