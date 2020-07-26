/*
*	Creating database by providing the tablespace name 
*/
CREATE DATABASE postgres
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

/*
* Providing the comments on the database
*/
COMMENT ON DATABASE postgres
    IS 'default administrative connection database';