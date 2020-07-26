/*
*	ALTER KEYWORD
*/

/*
*	altering the table by removing the primary key contraint
*/
ALTER TABLE person DROP CONSTRAINT person_pkey;


/*
*	adding primary key 
*	primary key recieves an array of values this is bacause primary key can be compose with multiple columns
*	the rows should be unique before you run the the below query
*/
ALTER TABLE person  ADD PRIMARY KEY(id);