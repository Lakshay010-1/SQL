-- SQL is not a case-sensitive language (commands).

-- If a column has no value, then it is said to be NULL.

-- Data is organized into tables (also known as relations) with rows (records) and columns (attributes).


-- -- -- -- General Order -- -- -- 
SELECT column(s)
FROM table_name
WHERE condition
GROUP BY column(s)
HAVING condition
ORDER BY column(s) ASC/DESC
-- -- -- -- -- -- -- -- -- -- -- -- 

 -- -- -- Data Types -- -- -- 
-- -- -- -- #Numeric -- -- -- -- -- 

INT             -- integer( -2,147,483,648 to 2,147,483,647 )
TINYINT         -- integer(-128 to 127)
BIT             -- can store x-bit values. x can range from 1 to 64. e.g-BIT(x)
BIGINT          -- integer( -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807 )
FLOAT (M,D)     -- Decimal number - with precision to 23 digits
DOUBLE (M,D)    -- Decimal number - with 24 to 53 digits

-- -- -- -- #Data and Time  -- -- -- 

DATE            -- date in format of YYYY-MM-DD ranging from 1000-01-01 to 9999-12-31
DATETIME        -- It's a date and time combination (YYYY-MM-DD HH:MM:SS)
TIME            -- It stores time (HH:MM:SS)
YEAR            -- year in 4 digits format ranging from 1901 to 2155

-- -- -- -- #String/Text  -- -- -- --

CHAR(M)         -- string(0-255), can store characters of fixed length
VARCHAR(M)      -- string(0-255), can store characters up to given length
BLOB(M) or TEXT -- string(0-65535), can store binary large object  

-- -- -- -- #UNSIGNED -- -- -- 

UNSIGNED        -- We can also use UNSIGNED with datatypes when we only have positive values to add. Eg - UNSIGNED INT

-- -- -- -- -- -- -- -- -- -- -- -- --

-- Constraints
NOT NULL 
    -- column_name data_type NOT NULL;
DEFAULT 
    -- column_name data_type DEFAULT Default_Value;
UNIQUE 
    -- column_name data_type UNIQUE;
CHECK 
    -- column_name data_type CHECK (condition);
PRIMARY KEY 
    -- column_name data_type PRIMARY KEY;
    -- PRIMARY KEY (col_01,col_02)
FOREIGN KEY 
    -- FOREIGN KEY (column_nameA) REFERENCES tableB (column_nameB)

-- Field
AUTO_INCREMENT 
    --Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table.
On DELETE SET NULL
    --this means if a record in the parent table (referenced table) is deleted then the corresponding entry or values
    --in the child table (referencing table) will be set to NULL.


-- SET SQL_SAFE_UPDATES = 0 ;  -- switch off the safe mode(0-off,1-on)

-- Types of SQL Commands:
1. DQL/DRL (Data Query/RETRIEVAL Language) :
    --  Used to retrieve data from databases. (SELECT)
2. DDL (Data Definition Language) :
    --  Used to create, alter, and delete database objects like tables, indexes, etc. (CREATE, DROP, ALTER, RENAME, TRUNCATE)
3. DML (Data Manipulation Language) :
    --  Used to modify the database. (INSERT,UPDATE, DELETE)
4. DCL (Data Control Language) :
    -- Used to grant & revoke permissions. (GRANT,REVOKE)
5. TCL (Transaction Control Language) :
    -- Used to manage transactions. (COMMIT,ROLLBACK, START TRANSACTIONS, SAVEPOINT)
