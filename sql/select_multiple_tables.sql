SELECT * FROM users u;
SELECT * FROM profiles p ;

SELECT
	u.id as uid,
	p.id as pid,
	u.first_name ,
	p.bio
FROM
	users as u ,
	profiles as p
WHERE
	u.id = p.user_id ;
