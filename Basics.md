# SQL

- SQL is **not case-sensitive** (commands).
- If a column has no value, it is said to be `NULL`.
- Data (also known as _Datum_) is organized into **tables** (relations) with:
  - Rows (_records_)
  - Columns (_attributes_)

---

<br/>

# Hierarchy of the databases

- Level-1. SQL Server
- Level-2. Database
- Level-3. Schema
- Level-4. Table, View
- Level-5. Columns, Key
- Level-6. Column's Name and Column's Datatype

---

<br/>

# Order of SQL Query

| Order | Program/Code                       | Execution                          |
| ----- | ---------------------------------- | ---------------------------------- |
| 1.    | **_SELECT_** column(s)             | **_FROM_** table_name              |
| 2.    | **_DISTINCT_**                     | **_WHERE_** condition              |
| 3.    | **_FROM_** table_name              | **_GROUP BY_** column(s)           |
| 4.    | **_WHERE_** condition              | **_HAVING_** condition             |
| 5.    | **_GROUP BY_** column(s)           | **_SELECT_** column(s)             |
| 6.    | **_HAVING_** condition             | **_DISTINCT_**                     |
| 7.    | **_ORDER BY_** column(s) ASC/DESC; | **_ORDER BY_** column(s) ASC/DESC; |
| 8.    | **_LIMIT_** num;                   | **_LIMIT_** num;                   |

---

<br/>

# Data Types

- ## Numeric Types
  1. `INT`
     - Integer (-2,147,483,648 to 2,147,483,647)
  2. `TINYINT`
     - Integer (-128 to 127)
  3. `BIT(x)`
     - Stores x-bit values (1 to 64 bits)
  4. `BIGINT`
     - Integer (-9,223,372,036,854,775,808 to 9,223,372,036,854,775,807)
  5. `FLOAT(M,D)`
     - Decimal number with precision up to 23 digits
  6. `DOUBLE(M,D)`
     - Decimal number with precision from 24 to 53 digits

---

<br/>

- ## Date and Time Types
  1. `DATE`
     - Format: `YYYY-MM-DD`
     - Range: 1000-01-01 to 9999-12-31
  2. `DATETIME`
     - Format: `YYYY-MM-DD HH:MM:SS`
  3. `TIME`
     - Format: `HH:MM:SS`
  4. `YEAR`
     - 4-digit year ranging from 1901 to 2155

---

<br/>

- ## String / Text Types
  1. `CHAR(M)`
     - Fixed-length string (0–255 characters)
  2. `VARCHAR(M)`
     - Variable-length string (0–255 characters)
  3. `BLOB(M)` or `TEXT`
     - Stores binary large objects or large text (0–65535 bytes)

---

<br/>

- ## UNSIGNED
  - Can be used with numeric data types when only positive values are required.
  - Example: `UNSIGNED INT;`

---

<br/>

# Constraints

1. **NOT NULL**

   ```sql
   column_name data_type NOT NULL;
   ```

2. **DEFAULT**

   ```sql
   column_name data_type DEFAULT default_value;
   ```

3. **UNIQUE**

   ```sql
   column_name data_type UNIQUE;
   ```

4. **CHECK**

   ```sql
   column_name data_type CHECK (condition);
   ```

5. **PRIMARY KEY**

   ```sql
   column_name data_type PRIMARY KEY;
   ```

   Composite Primary Key:

   ```sql
   PRIMARY KEY (col_01, col_02);
   ```

6. **FOREIGN KEY**
   ```sql
   FOREIGN KEY (column_nameA) REFERENCES tableB(column_nameB);
   ```

---

<br/>
<br/>

# Fields / Special Attributes

- ### 1. AUTO_INCREMENT
  - Automatically generates a unique numeric value for a column when a new record is inserted.
  - Commonly used with **_PRIMARY KEY_**.
  - Example: `id INT AUTO_INCREMENT PRIMARY KEY`;

---

<br/>

## Referential Actions (FOREIGN KEY Options)

- These define what happens to child table records when the parent table is updated or deleted.

---

<br/>

- ### 2. ON DELETE CASCADE
  - If a row in the parent table is deleted, all related rows in the child table are automatically deleted.
  - Maintains referential integrity by preventing orphan records.
  - Example: `FOREIGN KEY (column_name) REFERENCES parent_table(parent_column) ON DELETE CASCADE`;

- ### 3. ON DELETE SET NULL
  - If a row in the parent table is deleted, the foreign key value in the child table is set to `NULL`.
  - The foreign key column must allow `NULL`.
  - Example: `FOREIGN KEY (column_name) REFERENCES parent_table(parent_column) ON DELETE SET NULL`;

- ### 4. ON DELETE RESTRICT
  - Prevents deletion of a parent row if related child records exist.
  - The delete operation fails.
  - Example: `FOREIGN KEY (column_name) REFERENCES parent_table(parent_column) ON DELETE RESTRICT`;

- ### 5. ON DELETE NO ACTION
  - Similar to **_RESTRICT_**.
  - Prevents deletion if related child records exist.
  - Enforcement timing may depend on the database engine.
  - Example: `FOREIGN KEY (column_name) REFERENCES parent_table(parent_column) ON DELETE NO ACTION`;

- ### 6. ON UPDATE CASCADE
  - If the parent key value is updated, the child foreign key values are automatically updated.
  - Keeps parent and child keys synchronized.
  - Example: `FOREIGN KEY (column_name) REFERENCES parent_table(parent_column) ON UPDATE CASCADE`;

- ### 7. ON UPDATE SET NULL
  - If the parent key is updated, the child foreign key value is set to `NULL`.
  - The foreign key column must allow `NULL`.
  - Example: `FOREIGN KEY (column_name) REFERENCES parent_table(parent_column) ON UPDATE SET NULL`;

- ### 8. ON UPDATE RESTRICT
  - Prevents updating the parent key if related child records exist.
  - The update operation fails.
  - Example: `FOREIGN KEY (column_name) REFERENCES parent_table(parent_column) ON UPDATE RESTRICT`;

- ### 9. ON UPDATE NO ACTION
  - Similar to **_RESTRICT_**.
  - Prevents updating if related child records exist.
  - Example: `FOREIGN KEY (column_name) REFERENCES parent_table(parent_column) ON UPDATE NO ACTION`;

---

<br/>

## SQL_SAFE_UPDATES

- Controls safe update mode in MySQL.
- When enabled, prevents `UPDATE` or `DELETE` statements without a `WHERE` clause or `KEY` condition.
- `0` = OFF, `1` = ON.
- Example: `SET SQL_SAFE_UPDATES = 0;`

---

<br/>

# Types of SQL Commands

- ### 1. DQL / DRL (Data Query / Retrieval Language)
  - Used to retrieve data from databases.
  - Does not modify data.
  - Command: `SELECT`;

---

<br/>

- ### 2. DDL (Data Definition Language)
  - Used to create, modify, or delete database structures.
  - Affects schema objects like tables, databases, indexes.
  - Commands: `CREATE`, `DROP`, `ALTER`, `RENAME`, `TRUNCATE`;

---

<br/>

- ### 3. DML (Data Manipulation Language)
  - Used to insert, modify, or delete records in tables.
  - Directly affects table data.
  - Commands: `INSERT`, `UPDATE`, `DELETE`;

---

<br/>

- ### 4. DCL (Data Control Language)
  - Used to control access and permissions in the database.
  - Commands: `GRANT`, `REVOKE`;

---

<br/>

- ### 5. TCL (Transaction Control Language)
  - Used to manage transactions and maintain data integrity.
  - Commands: `COMMIT`, `ROLLBACK`, `START TRANSACTION`, `SAVEPOINT`;
