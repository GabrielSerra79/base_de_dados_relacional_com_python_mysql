SELECT * FROM users u;

SELECT * FROM profiles p;

SELECT * FROM roles;

SELECT u.id as uid, u.first_name, p.bio, r.name, ur.role_id
FROM users as u
    LEFT JOIN profiles as p ON u.id = p.user_id
	INNER JOIN users_roles as ur ON u.id = ur.user_id
	INNER JOIN roles as r ON ur.role_id = r.id
	ORDER BY uid ASC;

-- Mostra as Roles do user com first_name Xavier
SELECT u.id as uid, u.first_name, p.bio, r.name, ur.role_id
FROM users as u
    LEFT JOIN profiles as p ON u.id = p.user_id
	INNER JOIN users_roles as ur ON u.id = ur.user_id
	INNER JOIN roles as r ON ur.role_id = r.id
	WHERE u.first_name = 'Xavier'
	ORDER BY uid ASC;
