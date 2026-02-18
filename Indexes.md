# Indexes

- An index is a data structure (commonly a B-tree or hash structure) that stores key values and pointers to table rows to reduce query search complexity.
  - Without an index → Full Table Scan (O(n))
  - With an index → Logarithmic or constant lookup (O(log n) or O(1))

- ## Types:
  - ### Primary Index
    - Automatically created when primary key is defined like `UNIQUE`, `NOT NULL`, `One per table`.
    - Only one per table
    - ```sql
        PRIMARY KEY (id)
      ```
  - ### Unique Index
    - Ensures uniqueness, prevents duplicate values.
    - ```sql
        CREATE UNIQUE INDEX idx_email
        ON Users(email);
      ```
  - ### Filtered Index
    - A filtered index is a non-clustered index that includes only rows that satisfy a specified WHERE condition.
    - ```sql
        CREATE INDEX idx_active
        ON Users(last_login)
        WHERE status = 'Active';
      ```
  - ### Single-column Index
    - Index on one column only
    - ```sql
        CREATE INDEX idx_name_city
        ON Users(name);
      ```
  - ### Composite (Multi-column) Index
    - Index on more than one column
    - ```sql
        CREATE INDEX idx_name_city
        ON Users(name, city);
      ```
  - ### Clustered Index
    - Sorts the actual table data.
    - Data is stored in index order.
    - Only one per table

  - ### Non-CLustered Index
    - Separate from table data.
    - Stores key + pointer to row data location.
    - Multiple allowed per table.

  - ### Hash Index
    - Uses hash function
    - Very fast for equality searches
    - Not suitable for range queries

  - ### Bitmap Index
    - Good for columns with few values.
    - Mostly used in data warehouses.

  - ### Row Store Index
    - The database stores all column values of a row together.
    - Used in OLTP(Online Transaction Processing) systems.
    - Row stores typically use: B-Tree Index, Hash Index, etc.

  - ### Column Store Index
    - Data is stored column by column.
    - Used in OLAP(Online Analytical Processing) systems.
    - Column stores typically use: Bitmap Index, Columnstore Index, Min-Max Indexes, etc.

- ## Operations
  - ### CREATE
    - ```sql
        CREATE [UNIQUE] [NONCLUSTERED(DEFAULT) | CLUSTERED] [ROWSTORE(DEFAULT) | COLUMNSTORE] INDEX idx_name
        ON Users(name);
      ```
    - ```sql
        CREATE UNIQUE INDEX idx_email
        ON Users(email);
      ```
    - ```sql
        CREATE UNCREATE INDEX idx_name_city
        ON Users(name, city);
      ```

  - ### DROP
    - ```sql
      DROP INDEX idx_name;
      ```

  - ### ALTER/REBUILD
    - ```sql
        ALTER INDEX idx_name REBUILD;
      ```

  - ### RENAME
    - ```sql
        ALTER INDEX idx_name RENAME TO idx_user_name;
      ```

  - ### DISABLE/ENABLE
    - ```sql
        ALTER INDEX idx_name DISABLE;
        ALTER INDEX idx_name ENABLE;
      ```

- ## Index Management
  - ### Index design
  - ### Monitoring usage
  - ### Index Fragmentation
  - ### Maintenance (rebuild/reorganize)
  - ### Index Statistics Management
  - ### Performance tuning
  - ### Dropping Unused Indexes
  - ### Lifecycle management