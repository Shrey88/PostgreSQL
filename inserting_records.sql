/*
* Insert Records
*
*	here we are not specifying the id value as the data type assigned to it was BIGSESRIAL, 
*	which auto generates the id 
*
* 	we are explicitly specifying the date keyword to convert the date provided in string format to date format.
*
*	date provided is in yyyy-mm-dd format
*/
INSERT INTO person(first_name, last_name, gender, date_of_birth)
VALUES ('Anne', 'Smith', 'FEMALE', date '1988-01-09');


INSERT INTO person(first_name, last_name, gender, date_of_birth, email)
VALUES ('Jake', 'Jones', 'MALE', date'1990-12-31', 'jake@gmail.com');