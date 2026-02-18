# Views

- A view is a virtual table derived from a SQL query that provides abstraction, security, and logical data independence without physically storing data (unless materialized).

- It stores a query definition and retrieves data dynamically from underlying tables.<br/><br/>

- ## Types:
  - ### Simple View
    - Based on one table.
  - ### Complex View
    - Based on multiple tables.
  - ### Materialized View
    - Unlike normal views, this physically stores data.

- ## Operations:
  - ### CREATE
    ```sql
      CREATE VIEW view_name AS
      (
        SELECT column(s)
        DISTINCT
        FROM table_name
        WHERE condition
        GROUP BY column(s)
        HAVING condition
        ORDER BY column(s) ASC/DESC;
        LIMIT num;
      )
    ```
  - ### INSERT

    ```sql
      INSERT INTO active_users (id, name, email)
      VALUES (5, 'Ravi', 'ravi@email.com');

    ```

  - ### UPDATE

    ```sql
      UPDATE active_users
      SET name = 'Arjun'
      WHERE id = 5;

    ```

  - ### DELETE

    ```sql
      DELETE FROM active_users
      WHERE id = 5;

    ```

  - ### ALTER

    ```sql
      ALTER VIEW active_users AS
      SELECT id, name
      FROM Users
      WHERE status = 'active';

    ```
