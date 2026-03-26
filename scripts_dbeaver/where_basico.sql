SELECT * FROM  users u ;

SELECT * FROM users WHERE first_name = "gabiru";

SELECT * FROM users WHERE last_name = "do loco";

SELECT * FROM users WHERE id > 7;

SELECT * FROM users u WHERE u.created_at < '2026-03-26 16:32:00'

SELECT * FROM users u WHERE u.created_at < '2026-03-26 16:32:00' AND u.created_at > '2026-03-25 23:59'
