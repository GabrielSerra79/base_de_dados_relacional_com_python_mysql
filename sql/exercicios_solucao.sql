-- 1) Insira 5 usuários
INSERT INTO
    users (
        first_name,
        last_name,
        email,
        password_hash,
        salary
    )
VALUES (
        "Novo1",
        "Exercico",
        "novo1@email.com",
        "aaa1",
        "1001.00"
    ),
    (
        "Novo2",
        "Exercico",
        "novo2@email.com",
        "aaa2",
        "2002.00"
    ),
    (
        "Novo3",
        "Exercico",
        "novo3@email.com",
        "aaa3",
        "3003.00"
    ),
    (
        "Novo4",
        "Exercico",
        "novo4@email.com",
        "aaa4",
        "4004.00"
    ),
    (
        "Novo5",
        "Exercico",
        "novo5@email.com",
        "aaa5",
        "5005.00"
    );

SELECT * FROM users WHERE id >= 110;

/* RESULT
112	Novo1	Exercico	novo1@email.com	aaa1	2026-03-31 15:57:43	2026-03-31 15:57:43	1001.00
113	Novo2	Exercico	novo2@email.com	aaa2	2026-03-31 15:57:43	2026-03-31 15:57:43	2002.00
114	Novo3	Exercico	novo3@email.com	aaa3	2026-03-31 15:57:43	2026-03-31 15:57:43	3003.00
115	Novo4	Exercico	novo4@email.com	aaa4	2026-03-31 15:57:43	2026-03-31 15:57:43	4004.00
116	Novo5	Exercico	novo5@email.com	aaa5	2026-03-31 15:57:43	2026-03-31 15:57:43	5005.00
*/

-- 2) Insira 5 perfís para os usuários inseridos
INSERT INTO
    profiles (bio, description, user_id)
VALUES (
        "Bio do Novo 1",
        "Descrição do Novo 1  - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet quam purus. Praesent dignissim dui lectus, in elementum nulla laoreet a.",
        "112"
    ),
    (
        "Bio do Novo 2",
        "Descrição do Novo 2  - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet quam purus. Praesent dignissim dui lectus, in elementum nulla laoreet a.",
        "113"
    ),
    (
        "Bio do Novo 3",
        "Descrição do Novo 3  - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet quam purus. Praesent dignissim dui lectus, in elementum nulla laoreet a.",
        "114"
    ),
    (
        "Bio do Novo 4",
        "Descrição do Novo 4  - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet quam purus. Praesent dignissim dui lectus, in elementum nulla laoreet a.",
        "115"
    ),
    (
        "Bio do Novo 5",
        "Descrição do Novo 5  - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet quam purus. Praesent dignissim dui lectus, in elementum nulla laoreet a.",
        "116"
    );

SELECT * FROM profiles WHERE user_id >= 110;

/* RESULT
110	Bio do Novo 1	Descrição do Novo 1  - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet quam purus. Praesent dignissim dui lectus, in elementum nulla laoreet a.	112
111	Bio do Novo 2	Descrição do Novo 2  - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet quam purus. Praesent dignissim dui lectus, in elementum nulla laoreet a.	113
112	Bio do Novo 3	Descrição do Novo 3  - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet quam purus. Praesent dignissim dui lectus, in elementum nulla laoreet a.	114
113	Bio do Novo 4	Descrição do Novo 4  - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet quam purus. Praesent dignissim dui lectus, in elementum nulla laoreet a.	115
114	Bio do Novo 5	Descrição do Novo 5  - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet quam purus. Praesent dignissim dui lectus, in elementum nulla laoreet a.	116
*/

-- 3) Insira permissões (roles) para os usuários inseridos
SELECT * FROM roles;

SELECT * from users_roles WHERE user_id >= 110;

INSERT INTO users_roles (user_id, role_id) VALUES (112, 6);

INSERT INTO
    users_roles (user_id, role_id)
VALUES (112, 7),
    (112, 10),
    (113, 6),
    (113, 8),
    (114, 8),
    (114, 9),
    (115, 9),
    (115, 10),
    (116, 1),
    (116, 9);

/*
112	6	2026-03-31 16:23:01	2026-03-31 16:23:01
112	7	2026-03-31 16:28:44	2026-03-31 16:28:44
112	10	2026-03-31 16:28:44	2026-03-31 16:28:44
113	6	2026-03-31 16:28:44	2026-03-31 16:28:44
113	8	2026-03-31 16:28:44	2026-03-31 16:28:44
114	8	2026-03-31 16:28:44	2026-03-31 16:28:44
114	9	2026-03-31 16:28:44	2026-03-31 16:28:44
115	9	2026-03-31 16:28:44	2026-03-31 16:28:44
115	10	2026-03-31 16:28:44	2026-03-31 16:28:44
116	1	2026-03-31 16:28:44	2026-03-31 16:28:44
116	9	2026-03-31 16:28:44	2026-03-31 16:28:44
*/

-- 4) Selecione os últimos 5 usuários por ordem decrescente
SELECT * FROM users ORDER BY id DESC LIMIT 5;

/* RESULT
116	Novo5	Exercico	novo5@email.com	aaa5	2026-03-31 15:57:43	2026-03-31 15:57:43	5005.00
115	Novo4	Exercico	novo4@email.com	aaa4	2026-03-31 15:57:43	2026-03-31 15:57:43	4004.00
114	Novo3	Exercico	novo3@email.com	aaa3	2026-03-31 15:57:43	2026-03-31 15:57:43	3003.00
113	Novo2	Exercico	novo2@email.com	aaa2	2026-03-31 15:57:43	2026-03-31 15:57:43	2002.00
112	Novo1	Exercico	novo1@email.com	aaa1	2026-03-31 15:57:43	2026-03-31 15:57:43	1001.00
*/

-- 5) Atualize o último usuário inserido
SELECT *
FROM users as u
WHERE
    u.id = (
        SELECT id
        from users
        ORDER BY id DESC
        LIMIT 1
    );
/* RSULT ANTES DO UPDATE
116	Novo5	Exercico	novo5@email.com	aaa5	2026-03-31 15:57:43	2026-03-31 15:57:43	5005.00
*/

-- PRED DO UPDATE
SELECT *
FROM users as u
    JOIN (
        SELECT id
        from users
        ORDER BY id DESC
        LIMIT 1
    ) as m ON u.id = m.id;

UPDATE users as u
JOIN (
    SELECT id
    from users
    ORDER BY id DESC
    LIMIT 1
) as m ON u.id = m.id
SET
    u.last_name = 'Novo5 ATUALIZADO',
    u.email = 'atualizado@email.com',
    u.salary = 5555.55;

/* RESULT DEPOIS DO UPDATE
116	Novo5	Novo5 ATUALIZADO	atualizado@email.com	aaa5	2026-03-31 15:57:43	2026-03-31 17:02:55	5555.55
*/

-- 6) Remova uma permissão de algum usuário
SELECT * FROM users_roles WHERE user_id >= 110;

/*RESULT ANTES DO DELET
112	10	2026-03-31 16:28:44	2026-03-31 16:28:44
113	6	2026-03-31 16:28:44	2026-03-31 16:28:44
113	8	2026-03-31 16:28:44	2026-03-31 16:28:44
114	8	2026-03-31 16:28:44	2026-03-31 16:28:44
*/

-- PREP DO DELET
SELECT * FROM users_roles WHERE user_id = 113 AND role_id = 6;

DELETE FROM users_roles WHERE user_id = 113 AND role_id = 6;

/* RESULT DEPOIS DO DELET
112	10	2026-03-31 16:28:44	2026-03-31 16:28:44
113	8	2026-03-31 16:28:44	2026-03-31 16:28:44
114	8	2026-03-31 16:28:44	2026-03-31 16:28:44
*/

-- 7) Remova um usuário que tem a permissão "PUT"
-- PREP DO DELET
SELECT *
FROM
    users AS u
    INNER JOIN users_roles AS ur ON ur.user_id = u.id
    INNER JOIN roles as r ON r.id = ur.role_id
WHERE
    u.id = 113
    AND r.name = 'PUT';

/*RESULT ANTES DO DELET
113	Novo2	Exercico	novo2@email.com	aaa2	2026-03-31 15:57:43	2026-03-31 15:57:43	2002.00	113	8	2026-03-31 16:28:44	2026-03-31 16:28:44	8	PUT
*/

DELETE u
FROM
    users AS u
    INNER JOIN users_roles AS ur ON ur.user_id = u.id
    INNER JOIN roles as r ON r.id = ur.role_id
WHERE
    u.id = 113
    AND r.name = 'PUT';

SELECT *
FROM
    users AS u
    INNER JOIN users_roles AS ur ON ur.user_id = u.id
    INNER JOIN roles as r ON r.id = ur.role_id
WHERE
    u.id >= 110
    AND r.name = 'PUT';

/* RESULT DEPOIS DO DELET
110	Hilda	Valentine	mollis.Duis@aaliquetvel.co.uk	SOA17EEA6KX	2021-03-30 01:48:13	2026-03-27 16:14:51	9681.52	110	8	2026-03-27 16:56:30	2026-03-27 16:56:30	8	PUT
114	Novo3	Exercico	novo3@email.com	aaa3	2026-03-31 15:57:43	2026-03-31 15:57:43	3003.00	114	8	2026-03-31 16:28:44	2026-03-31 16:28:44	8	PUT
*/

-- 8) Selecione usuários com perfís e permissões (obrigatório)
SELECT u.first_name, p.bio, r.name
FROM
    users AS u
    INNER JOIN profiles AS p ON p.user_id = u.id
    INNER JOIN users_roles AS ur ON ur.user_id = u.id
    INNER JOIN roles AS r ON r.id = ur.role_id
ORDER BY u.id DESC
LIMIT 10;

/* RESULT
Novo5	Bio do Novo 5	admin
Novo5	Bio do Novo 5	DELETE
Novo4	Bio do Novo 4	DELETE
Novo4	Bio do Novo 4	GET
Novo3	Bio do Novo 3	PUT
Novo3	Bio do Novo 3	DELETE
Novo1	Bio do Novo 1	user
Novo1	Bio do Novo 1	POST
Novo1	Bio do Novo 1	GET
Hilda	Bio de Hilda	user
*/

-- 9) Selecione usuários com perfís e permissões (opcional)
SELECT u.first_name, p.bio, r.name
FROM
    users AS u
    LEFT JOIN profiles AS p ON p.user_id = u.id
    LEFT JOIN users_roles AS ur ON ur.user_id = u.id
    LEFT JOIN roles AS r ON r.id = ur.role_id
WHERE
    p.bio IS NULL
    OR r.name IS NULL;

/* RESULT
Brittany	(NULL)	POST
Brittany	(NULL)	PUT
Ferris      (NULL) (NULL)
Thor	    (NULL)	DELETE
Keelie	    (NULL)	admin
Keelie	    (NULL)	POST
Katelyn	    (NULL)	user
Arthur	    Bio de Arthur (NULL)
Hayfa       (NULL) (NULL)
*/

-- 10) Selecione usuários com perfís e permissões ordenando por salário
SELECT u.salary, u.first_name, p.bio, r.name
FROM
    users AS u
    INNER JOIN profiles AS p ON p.user_id = u.id
    INNER JOIN users_roles AS ur ON ur.user_id = u.id
    INNER JOIN roles AS r ON r.id = ur.role_id
WHERE
    r.name = 'admin'
ORDER BY u.salary DESC
LIMIT 10;

/* RESULT
32915.99	Gabiru	Bio de Gabiru	admin
9558.55	    Wang	Bio de Wang	    admin
9495.63	    Hilda	Bio de Hilda	admin
9231.48	    Cha	    Bio de Cha	    admin
9043.20	    Lynn	Bio de Lynn	    admin
8061.78	    Lucian	Bio de Lucian	admin
7706.21	    Nyssa	Bio de Nyssa	admin
7331.86	    Jaime	Bio de Jaime	admin
7165.45	    Jordan	Bio de Jordan	admin
7138.52	    Ryan	Bio de Ryan	    admin
*/
