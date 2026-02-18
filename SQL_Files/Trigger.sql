-- TRIGGER ( A trigger is a stored procedure in a database that automatically invokes whenever a special event in the database occurs. )
-- Deploy in mysql command line client
create
     trigger [trigger_name] 
     [before | after]  
    {insert | update | delete}  
     on [table_name]  
            [for each row]  
     [trigger_body] 

/*
e.g.-
    CREATE TABLE triggerResult(message VARCHAR(100),name VARCHAR(100));
    -- (i).
    DELIMITER $$
    CREATE
        TRIGGER my_trigger 
        BEFORE 
        INSERT ON employees
        FOR EACH ROW  BEGIN 
            INSERT INTO  triggerResult VALUES('added a new employee',NEW.column_Name);      -- NEW keyword is use to access the inserted data.
        END $$
    DELIMITER ;

    -- (ii).
    DELIMITER $$
    CREATE
        TRIGGER my_trigger 
        BEFORE 
        INSERT ON employees
        FOR EACH ROW  BEGIN 
            IF NEW.age = 18 THEN                                                            -- LET age be column name 
                INSERT INTO triggerResult VALUES('18 year old employee...',NEW.name);       -- LET name be a column name
            ELSE IF NEW.age > 18 THEN
                INSERT INTO triggerResult VALUES(' Greater than 18 year old employee...',NEW.name);
            ELSE
                INSERT INTO triggerResult VALUES('Smaller than 18 year old employee...',NEW.name);
            END IF;
        END $$
    DELIMITER ;

    DROP TRIGGER my_trigger

*/