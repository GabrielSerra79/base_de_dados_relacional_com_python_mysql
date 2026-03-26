SELECT * FROM users;

SELECT
	id,
	first_name,
	email
FROM
	users u
WHERE
	u.id BETWEEN 50 and 100
ORDER BY
	id DESC ;

SELECT
	id,
	first_name,
	last_name
FROM
	users u
ORDER BY
	first_name ASC,
	last_name DESC;

SELECT
	id,
	first_name,
	last_name
FROM
	users u
WHERE
	u.id BETWEEN 50 and 100
ORDER BY
	first_name ASC,
	last_name DESC;
