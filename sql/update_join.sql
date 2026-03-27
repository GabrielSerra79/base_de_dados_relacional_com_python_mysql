SELECT u.first_name, p.bio
FROM users AS u
    JOIN profiles AS p ON p.user_id = u.id
WHERE
    u.first_name = 'Katelyn';

UPDATE users AS u
JOIN profiles AS p ON p.user_id = u.id
SET p.bio = CONCAT(p.bio, ' ATUALIZADO')
WHERE
    u.first_name = 'Katelyn';
