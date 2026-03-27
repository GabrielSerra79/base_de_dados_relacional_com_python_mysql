SELECT ROUND(RAND() * 10000, 2);

-- Seta um salario aleatório para toda a tabela pq não tem WHERE **CUIDADO**
UPDATE users SET salary = ROUND(RAND() * 10000, 2);

SELECT * FROM users;

SELECT first_name, salary
FROM users
WHERE
    salary BETWEEN 1000 AND 3000
ORDER BY salary ASC;

SELECT first_name, salary
FROM users u
WHERE
    u.salary < 1000
ORDER BY u.salary ASC;

SELECT first_name, salary
FROM users u
WHERE
    u.salary > 9000
ORDER BY u.salary ASC;
