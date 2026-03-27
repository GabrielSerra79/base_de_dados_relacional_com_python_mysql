SELECT * FROM users;

SELECT * FROM users u where u.id = 14;

UPDATE
	users u
SET
	u.first_name = 'Thor',
	u.last_name = 'Vahalla'
WHERE
	u.id = 14;
