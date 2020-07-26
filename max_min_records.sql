/*
*	MAX KEYWORD
*
*/
SELECT MAX(price) 
FROM car;


/*
*	MIN KEYWORD
*
*/
SELECT MIN(price)
FROM car;


/*
*	fetching the make and model with the minimum price
*/
SELECT make, model, MIN(price)
FROM car
GROUP BY make, model;


/*
*	fetching the make and model with the maximum price
*/
SELECT make, model, MAX(price)
FROM car
GROUP BY make, model;