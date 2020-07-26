/*
*	BIGSERIAL DATA TYPE
*/

/*
*	so if you describe the table person and car you will find that both the tables have a seq table associated with it 
*	so you can query the seq table
*/
SELECT * FROM person_id_seq;
SELECT * FROM car_id_seq;

-- so the output is 
	-- last value: the last value geneated by the sequence. If you had assigned any value that will not ve mentioned here as last value
	-- log_cnt: it tells you how many times it has been invoked
	-- is_called: whether it is been called or not


/*
*	so when you describe a table with \d table_name you will see that their is default column with sequence generator function i.e nextval('person_id_seq'::regclass)
*	so if you just give this function to the select query then it will generate the sequences but without inserting it to table
*	so next time you insert any new record to the table it the id seq will not be in the correct sequence as we executed the function without inserting it to a table.
*/

SELECT nextval('person_id_seq'::regclass);


/*
*	how to reset the value of the sequence generator
*/
ALTER SEQUENCE person_id_seq RESTART WITH 4;