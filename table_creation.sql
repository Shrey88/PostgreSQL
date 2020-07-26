/*
*	TABLE CREATION
*/

/*
*	we can create blank record, as we don't have any constriants
*/
CREATE TABLE person(id INT,
first_name VARCHAR(50),
last_name VARCHAR(50),
gender VARCHAR(7),
date_of_birth DATE);



/*
*	To create a table with some constriants, so that we don't have blank record.
* 	BIGSERIAL is of type int which auto increments
*	it will generate one more table with name <table_name>_<column_name>_seq
*/
CREATE TABLE person(id BIGSERIAL NOT NULL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
gender VARCHAR(7) NOT NULL,
date_of_birth DATE) NOT NULL,
email VARCHAR(150) 
);