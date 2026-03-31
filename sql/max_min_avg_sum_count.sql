SELECT MAX(salary) FROM users u;

SELECT MIN(salary) FROM users u;

SELECT AVG(salary) FROM users u;

SELECT SUM(salary) FROM users u;

SELECT COUNT(salary) FROM users u;

SELECT
    u.first_name,
    max(u.salary) as max_salary,
    MIN(u.salary) as MIN_salary,
    AVG(u.salary) as AVG_salary,
    SUM(u.salary) as SUM_salary,
    COUNT(u.id) as Total
FROM users u
    LEFT JOIN profiles p ON p.user_id = u.id
GROUP BY
    first_name
ORDER BY Total DESC;


SELECT * FROM users WHERE users.first_name = 'dennis';
