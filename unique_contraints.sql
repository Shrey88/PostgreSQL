/*
*	UNIQUE CONTRAINTS
*
*	unique contraints is to have a unique value per column. 
*	it is not same as primary key
*/


/*
*
*/
SELECT email, count(*) FROM person GROUP BY email;


/*
*	find the rows with the duplicate information.
*/
SELECT email, count(*) FROM person GROUP BY email HAVING COUNT(*) > 1;


/*
*	adding contraints to the table
*
*	UNIQUE  can have multiple column names 
*	before UNIQUE keyword we have specified the column name.
*/
ALTER TABLE  person  ADD CONSTRAINT unique_email_address UNIQUE (email);


/*
*	dropping the unique contraint
*/
ALTER TABLE person DROP CONSTRAINT unique_email_address;


/*
*	allowing the postgresql to define the column name 
*/
ALTER TABLE person ADD UNIQUE (email);


