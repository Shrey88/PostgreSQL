/*
*	AGE FUNCTION
*	it takes two arguments first is the current date and second is the actual date
*/

SELECT first_name, last_name, gender, country, date_of_birth, AGE(NOW(), date_of_birth) as age
FROM person;
