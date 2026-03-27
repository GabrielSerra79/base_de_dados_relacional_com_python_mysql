SELECT * FROM roles;

SELECT * FROM users_roles;

INSERT INTO
    roles (name)
VALUES ('POST'),
    ('PUT'),
    ('DELETE'),
    ('GET');

SELECT id, (
        SELECT id
        FROM roles
        ORDER BY RAND()
        LIMIT 1
    ) role
FROM users;

INSERT INTO
    users_roles (user_id, role_id)
SELECT id, (
        SELECT id
        FROM roles
        ORDER BY RAND()
        LIMIT 1
    ) role
FROM users;

INSERT IGNORE INTO
    users_roles (user_id, role_id)
SELECT id, (
        SELECT id
        FROM roles
        ORDER BY RAND()
        LIMIT 1
    ) role
FROM users
ORDER BY RAND()
LIMIT 20;
