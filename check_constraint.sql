/*
*	CHECK CONSTRAINT
*
*	allows us to add constraint based on the boolen condition
*/

/*
*	so we added one row with the gender = Hello 
*	insert into person (first_name, last_name, gender, date_of_birth, email, country) values ('Hello', 'Rhydderch', 'Hello', '2019-07-06', 'hellohydderch1@bluehost.com', 'Malta');
*/
SELECT DISTINCT gender FROM person;


/*
*	we can add check constraint to check the value of gender is either equals to Male or Female
*
*/
ALTER TABLE person ADD CONSTRAINT gender_constraint CHECK (gender = 'Female' OR gender = 'Male');