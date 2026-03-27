-- first_name repetidos
SELECT first_name, COUNT(id) AS total
from users
GROUP BY
    first_name
ORDER BY total DESC;

-- Nomes repetidos que tem profile
SELECT u.first_name, COUNT(*) AS total
FROM users AS u
    JOIN profiles AS p ON p.user_id = u.id
GROUP BY
    u.first_name
ORDER BY total DESC;

-- Quntidade de Roles de cada User
SELECT u.first_name, u.last_name, COUNT(DISTINCT r.id) AS Roles
FROM
    users as u
    INNER JOIN users_roles as ur ON u.id = ur.user_id
    INNER JOIN roles as r ON ur.role_id = r.id
GROUP BY
    u.first_name,
    u.last_name
ORDER BY Roles DESC, u.first_name ASC;

-- Users com apenas 1 Role
SELECT u.first_name, COUNT(DISTINCT r.id) AS Roles
FROM
    users as u
    INNER JOIN users_roles as ur ON u.id = ur.user_id
    INNER JOIN roles as r ON ur.role_id = r.id
GROUP BY
    u.first_name,
    u.last_name
HAVING
    Roles = 1
ORDER BY u.first_name;

-- Total de Users para cada Role
SELECT r.name, COUNT(*) AS user_by_roles
FROM
    users as u
    INNER JOIN users_roles as ur ON u.id = ur.user_id
    INNER JOIN roles as r ON ur.role_id = r.id
GROUP BY
    r.name
ORDER BY user_by_roles DESC;
