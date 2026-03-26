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
	first_name DESC
LIMIT 8;

SELECT
	id,
	first_name,
	email
FROM
	users u
WHERE
	u.id BETWEEN 50 and 100
ORDER BY
	id ASC
LIMIT 8;

SELECT
	id,
	first_name,
	email
FROM
	users u
WHERE
	u.id BETWEEN 50 and 100
ORDER BY
	id ASC
LIMIT 8
OFFSET 3;
