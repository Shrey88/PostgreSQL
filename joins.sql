/*
*	INNER JOINS
*
*	in inner joins only the common data between two  tables A and B are fetched
*/

SELECT * FROM person 
JOIN car ON person.car_id = car.id;


SELECT person.first_name, car.make, car.model, car.price
FROM person
JOIN car on person.car_id = car.id;



/*
*	LEFT JOINS
*
*	in left join the common data between two tables A and B as well the uncommon data from table A are fetched.
*/

SELECT * FROM person 
LEFT JOIN car ON person.car_id = car.id;


SELECT * FROM person 
LEFT JOIN car ON car.id = person.car_id
WHERE car.* is NULL;


/*
*
*/