/*
*	ON CONFLICT KEYWORD
*
*	it allows us to check if the record already exist and take the appropriate action
*	it only works on the unique column.
*/


/*
*	insert into person (id, first_name, last_name, gender, date_of_birth, email, country) values (2, 'Benedetto', 'Rhydderch', 'Male', '2019-07-06', 'brhydderch1@bluehost.com', 'Malta');
*
*	on executing the insert command with exactly the same details it will throw an error that key::id already exist
*
*	so on conflict can be used here to check if there is any conflict and take appropriate action
*	also it will not throw any error
*/

INSERT INTO person (id, first_name, last_name, gender, date_of_birth, email, country) 
VALUES (2, 'Benedetto', 'Rhydderch', 'Male', '2019-07-06', 'brhydderch1@bluehost.com', 'Malta')
ON CONFLICT (id) DO NOTHING;


/*
*	upsert is the combination of update and insert as do update allows you to either update the existing record or
*	insert a new record if not available.
*
*	when you are using the on conflict you say do nothing, but sometimes you may want to do something.
*	
*	so considering that user is has registered on the website with details including the email id and then he remembers 
*	that he has entered the wrong information, so this time he registers with correct details and different email id.
*/


/*
*	INSERT INTO person (id, first_name, last_name, gender, date_of_birth, email, country) 
*	VALUES (2, 'Benedetto', 'Rhydderch', 'Male', '2019-07-06', 'brhydderch1@bluehost.co.uk', 'Malta')
*	ON CONFLICT (id) DO NOTHING;
*
*
*	in this case i have changed the email id replacing the .com with .co.uk
*	and now instead of doing nothing we will update the latest email id 
*
*	so instead of DO NOTHING we will use UPDATE in which we can give multiple columns 
*/
INSERT INTO person (id, first_name, last_name, gender, date_of_birth, email, country) 
VALUES (2, 'Benedetto', 'Rhydderch', 'Male', '2019-07-06', 'brhydderch1@bluehost.co.uk', 'Malta')
ON CONFLICT (id) DO UPDATE SET email = EXCLUDED.email;