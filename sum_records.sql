/*
*	SUM KEYWORD
*/

SELECT make, SUM(price)
FROM car
GROUP BY make;