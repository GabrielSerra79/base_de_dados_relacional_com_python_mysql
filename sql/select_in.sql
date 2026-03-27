SELECT * FROM users u

SELECT
	*
FROM
	users u
WHERE
	u.id = 10
	or u.id = 15
	or u.id = 20;

SELECT
	*
FROM
	users u
WHERE
	u.id
IN (10, 15, 20, 25, 30, 35, 40, 45, 800);

SELECT
	*
FROM
	users u
WHERE
	u.id
IN (10, 15, 20, 25, 30, 35, 40, 45, 800)
	AND u.first_name IN ('Wayne', 'Eric');
