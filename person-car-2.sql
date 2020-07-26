/*
*	so we are going to replace the BIGSERIAL data type with uuid.
*/


/*
*	when we want to map the foreign key with the primary key we need to type "REFERENCES table_name (column_name with primary key)" as suffix to the column which is foreign key.
*
*	we have added one constraint and that is the unique for the car id as one car can be owned by only one person.
*/

CREATE TABLE car (
car_uid UUID NOT NULL PRIMARY KEY,
make VARCHAR(100) NOT NULL, 
model VARCHAR(100) NOT NULL,
price NUMERIC(19, 2) NOT NULL
);


CREATE TABLE person(
person_uid  UUID NOT NULL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
gender VARCHAR(50) NOT NULL,
email VARCHAR(100),
date_of_birth DATE NOT NULL,
country_of_birth VARCHAR(50) NOT NULL,
car_uid UUID REFERENCES car (car_uid),
UNIQUE(car_uid)
);




/*
*	inserting the records for the car class
*	
*	so now when inserting the records to the table we need to explictly call the uuid  generate function 
*/
INSERT INTO car (car_uid, make, model, price) VALUES(uuid_generate_v4(), 'Land Rover', 'Sterling', 87665.38);
INSERT INTO car (car_uid, make, model, price) VALUES(uuid_generate_v4(), 'GMC', 'Acadia', 17662.69);



/*
*	inserting the records for the person class
*/
INSERT INTO person (person_uid, first_name, last_name, gender, email, date_of_birth, country_of_birth) 
VALUES(uuid_generate_v4(), 'Fernanda', 'Beardon', 'Female', 'fernandab@is.gd', DATE '1953-10-28', 'Comoros');
INSERT INTO person (person_uid, first_name, last_name, gender, email, date_of_birth, country_of_birth) 
VALUES(uuid_generate_v4(), 'Omar', 'Calmore', 'Male', '', DATE '1921-04-03', 'Finland');
INSERT INTO person (person_uid, first_name, last_name, gender, email, date_of_birth, country_of_birth) 
VALUES(uuid_generate_v4(), 'Adriana', 'Matuschek', 'Female', 'amatuschek2@feedburner.com', DATE '1965-02-28', 'Cameroon');


/*
*	update the car_id attribute in the person table with the id from the car table
* 
*	here the uid will get change the next time the table is created
*/
--	UPDATE person SET car_uid = '1186e9c5-0dc9-4c11-a227-5309ae001b16' WHERE  person_uid = '4fa9648a-208c-423b-bf0d-98a02c1b497f';


--	UPDATE person SET car_uid = '593bc885-1f1a-40ff-9cd9-5a57ef631020' WHERE person_uid = '7f99d748-783b-46b7-97ab-d797d16130b7';


/*
*	join the table and get the common records
*/
SELECT * FROM person JOIN car ON person.car_uid = car.car_uid;


/*
*	another way of doing the join is 
*
*	we are doing this way because the foreign key and primary key are the same
*/
SELECT * FROM person
JOIN car USING (car_uid);


/*
*	similarly you can do a left join
*/
SELECT * FROM person
LEFT JOIN car USING (car_uid);
