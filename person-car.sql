/*
*	PRIMARY KEY AND FOREIGN KEY 
*
*	BIGSERIAL(it is a special data type) and BIGINT are same the only difference is that values of BIGSERIAL are managed by the sequence 
*
*
*	first create the car class and then the person class as the person class has the car id as the foreign key
*/


/*
*	when we want to map the foreign key with the primary key we need to type "REFERENCES table_name (column_name with primary key)" as suffix to the column which is foreign key.
*
*	we have added one constraint and that is the unique for the car id as one car can be owned by only one person.
*/
CREATE TABLE person(
id  BIGSERIAL NOT NULL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
gender VARCHAR(50) NOT NULL,
email VARCHAR(100),
date_of_birth DATE NOT NULL,
country_of_birth VARCHAR(50) NOT NULL,
car_id BIGINT REFERENCES car (id),
UNIQUE(car_id)
);


CREATE TABLE car (
id BIGSERIAL NOT NULL PRIMARY KEY,
make VARCHAR(100) NOT NULL, 
model VARCHAR(100) NOT NULL,
price NUMERIC(19, 2) NOT NULL
);



/*
*	inserting the records for the car class
*/
INSERT INTO car (make, model, price) VALUES('Land Rover', 'Sterling', 87665.38);
INSERT INTO car (make, model, price) VALUES('GMC', 'Acadia', 17662.69);



/*
*	inserting the records for the person class
*/
INSERT INTO person (first_name, last_name, gender, email, date_of_birth, country_of_birth) 
VALUES('Fernanda', 'Beardon', 'Female', 'fernandab@is.gd', DATE '1953-10-28', 'Comoros');
INSERT INTO person (first_name, last_name, gender, email, date_of_birth, country_of_birth) 
VALUES('Omar', 'Calmore', 'Male', '', DATE '1921-04-03', 'Finland');
INSERT INTO person (first_name, last_name, gender, email, date_of_birth, country_of_birth) 
VALUES('Adriana', 'Matuschek', 'Female', 'amatuschek2@feedburner.com', DATE '1965-02-28', 'Cameroon');


/*
*	update the car_id attribute in the person table with the id from the car table
*/
UPDATE person SET car_id = 2 WHERE  id = 1;


UPDATE person SET car_id = 1 WHERE id = 2;


UPDATE person SET  car_id = 2 WHERE id = 3;
-- the unique constraint will not allow to assign same car id to another person.

/*
*	only assign foreign key only whe their is a relation in other table.
*/
UPDATE person SET car_id = 3 WHERE id = 1;
-- ERROR:  insert or update on table "person" violates foreign key constraint "person_car_id_fkey"
-- DETAIL:  Key (car_id)=(3) is not present in table "car".


