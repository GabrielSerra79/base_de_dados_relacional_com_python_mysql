/*
* Ordem das tabelas alterada (1ª table profile(left), 2ª table user(right))
* para que a consulta RIGHT JOIN possa obter resultado,
* pois a FOREING KEY com CASCADE não permite existir um "profile" sem existir um "user"
*/
SELECT u.id as uid, p.id as pid, u.first_name, p.bio
FROM profiles as p
    RIGHT JOIN users as u ON p.user_id = u.id
ORDER BY pid ASC;

SELECT u.id as uid, p.id as pid, u.first_name, p.bio
FROM profiles as p
    RIGHT JOIN users as u ON p.user_id = u.id
WHERE p.id IS NULL;
