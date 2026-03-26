SELECT * FROM users u;

SELECT * FROM users u
WHERE u.created_at > '2020-06-12 17:38:55'
AND
u.created_at < '2020-09-04 19:06:55';

SELECT * FROM users u
WHERE u.created_at >= '2020-06-12 17:38:52'
AND
u.created_at <= '2020-09-04 19:06:55';

SELECT * FROM users u
WHERE u.created_at
BETWEEN  '2020-06-12 00:00:00'
AND '2020-09-04 23:59:59';

SELECT * FROM users u
WHERE u.created_at
BETWEEN  '2020-06-12 00:00:00' AND '2020-09-04 23:59:59'
AND u.id
BETWEEN 33 AND 88;
