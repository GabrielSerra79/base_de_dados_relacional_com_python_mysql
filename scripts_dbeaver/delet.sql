SELECT * FROM users;

SELECT
	*
FROM
	users u
WHERE
	u.id > 100;

DELETE
FROM
	users u
WHERE
	u.id = 104;
/* user que foi deletado
 * 104	Riley	Frazier	Sed.neque@facilisisSuspendisse.co.uk	AGZ17TIV3MS	2020-10-22 03:33:55	2026-03-26 17:45:24
 */


-- verifica se o cascade apagou tambem de profiles
SELECT
	*
FROM
	profiles p
where
	p.user_id > 100;
/* profile do user que foi deletado
* 103	Bio de Riley	Descrição de Riley Frazier	104
*/
