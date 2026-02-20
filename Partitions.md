- # Partitions
  - Divides a large table into smaller, manageable pieces.
  - Improves performance and maintenance.
  - Data is logically one table but physically separated.

  - ## Types of Partitioning

    | Type          | Description                          | Example                                              |
    | ------------- | ------------------------------------ | ---------------------------------------------------- |
    | **Range**     | Partitions based on value ranges     | `PARTITION BY RANGE (year);`                         |
    | **List**      | Partitions based on specific values  | `PARTITION BY LIST (region);`                        |
    | **Hash**      | Distributes rows using hash function | `PARTITION BY HASH (id);`                            |
    | **Composite** | Combination of two partition types   | `PARTITION BY RANGE(year) SUBPARTITION BY HASH(id);` |

  - ## Syntax (Examples by DBMS)

    | DBMS           | Syntax                                       | Example                                                                                                                                         |
    | -------------- | -------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
    | **MySQL**      | `CREATE TABLE ... PARTITION BY RANGE (...);` | `CREATE TABLE sales (id INT, year INT) PARTITION BY RANGE (year) (PARTITION p1 VALUES LESS THAN (2023), PARTITION p2 VALUES LESS THAN (2025));` |
    | **SQL Server** | Uses Partition Function & Scheme             | `CREATE PARTITION FUNCTION pf(int) AS RANGE LEFT FOR VALUES (1000,2000);`                                                                       |
    | **PostgreSQL** | `CREATE TABLE ... PARTITION BY RANGE (...);` | `CREATE TABLE sales (id INT, year INT) PARTITION BY RANGE (year);`                                                                              |
    | **Oracle**     | `CREATE TABLE ... PARTITION BY RANGE (...);` | `CREATE TABLE sales (id NUMBER, year NUMBER) PARTITION BY RANGE (year);`                                                                        |

  - ## Benefits
    | Benefit     | Explanation                             |
    | ----------- | --------------------------------------- |
    | Performance | Queries scan only relevant partitions   |
    | Maintenance | Easy archival or deletion of old data   |
    | Scalability | Handles very large datasets efficiently |
    | Backup      | Partition-level backup (DB-dependent)   |
