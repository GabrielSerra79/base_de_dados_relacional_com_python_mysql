SELECT * FROM profiles p WHERE id BETWEEN 11 AND 14;

DELETE FROM profiles p WHERE id BETWEEN 11 AND 14;

SELECT u.id as uid, p.id as pid, u.first_name, p.bio
FROM users as u
    INNER JOIN profiles as p ON u.id = p.user_id;

SELECT u.id as uid, p.id as pid, u.first_name, u.last_name, p.bio
FROM users as u
    INNER JOIN profiles as p ON u.id = p.user_id
WHERE
    u.first_name LIKE '%a'
    AND u.last_name LIKE '%s'
ORDER BY u.first_name DESC;
