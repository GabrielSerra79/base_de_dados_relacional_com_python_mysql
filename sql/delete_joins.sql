SELECT u.first_name, p.bio, p.description
FROM users AS u
    LEFT JOIN profiles AS p ON p.user_id = u.id
WHERE
    u.first_name = 'Katelyn';

DELETE p FROM users AS u
JOIN profiles AS p ON p.user_id = u.id
WHERE
    u.first_name = 'Katelyn';
