/*
*	ARITHMETIC OPERATIONS
* 	so we are going to display one more column of price after discount of 15%
*/
SELECT id, make, model, price, ROUND(price * .15, 2) as discount, ROUND(price - (price * .15), 2) as final_price
FROM car;

