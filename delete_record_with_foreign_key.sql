/*
*	DELETING THE RECORDS WHEN IT HAS FOREIGN KEY CONSTRAINT
*/

INSERT INTO car (id, make, model, price) VALUES (13, 'Mazda', 'RX-8', '51272.48');

INSERT INTO person (id, first_name, last_name, gender, email, date_of_birth, country_of_birth) 
VALUES (9000, 'John', 'Smith', 'Male', null, DATE '1921-04-03', 'Finland');



SELECT * FROM person;

SELECT * FROM car;



UPDATE person SET car_id = 13
WHERE id = 9000;


SELECT * FROM person WHERE id = 9000;

SELECT * FROM  car  WHERE id = 13;


/*
*	deleting the record from the car table will not allow us to do that as we have car.id as the foreign key in table person car_id
*/
DELETE FROM car WHERE id = 13;
-- ERROR:  update or delete on table "car" violates foreign key constraint "person_car_id_fkey" on table "person"
-- DETAIL:  Key (id)=(13) is still referenced from table "person".


/*
*	so if we want to delete the record from the car table, first thing we need to do is remove the foreign key constraint 
*	so to remove it we have 2 ways to do it.
*	1. see if the record from the person table is used by some other table. If not then we can delete the record itself (if it is not going to be used anymore)
*	2. in case the record from the person table is used by some other table, then just make the foriegn key attribute for the car table as null
*
*	after making the foreign key attribute for the car table as null in the person table, we are good to go ahead and delete the record from the car table.
*/
UPDATE person SET car_id = null
WHERE id = 9000;

DELETE FROM car WHERE id = 13;