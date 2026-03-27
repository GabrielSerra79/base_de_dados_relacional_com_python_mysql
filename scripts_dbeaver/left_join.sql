SELECT u.id as uid, p.id as pid, u.first_name, p.bio
FROM users as u
    LEFT JOIN profiles as p ON u.id = p.user_id;

SELECT u.id as uid, p.id as pid, u.first_name, u.last_name, p.bio
FROM users as u
    LEFT JOIN profiles as p ON u.id = p.user_id
ORDER BY pid ASC;
