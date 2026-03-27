SELECT * FROM users;
SELECT * FROM profiles p

-- NUNCA USAR DESSA FORMA O DELET
DELETE FROM profiles ;

INSERT
	INTO
	profiles (bio,
	description,
	user_id )
SELECT
	CONCAT('Bio de ', first_name),
	CONCAT('Descrição de ', u.first_name, ' ', u.last_name ),
	id
FROM
	users u;
