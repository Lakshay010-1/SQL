-- Data Control Language (DCL) commands are used to control access, permissions, and security in the database 

-- Grant command 
-- (Gives a user specific privileges (permissions) on database objects like tables, views, sequences, etc)
GRANT privilege_type ON object_name TO user_name;
/*
e.g.-
    GRANT SELECT, INSERT ON employees TO user1;
*/

-- Revoke command
-- (Removes previously granted privileges from a user)
REVOKE privilege_type ON object_name FROM user_name;
/*
e.g.-   
    REVOKE INSERT ON employees FROM user1;
*/
