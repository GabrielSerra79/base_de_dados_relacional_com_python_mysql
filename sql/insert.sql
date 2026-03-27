-- Dessa forma que faz comentarios em MySQL
# Outra forma de comentario
/* 
 * Comentario multi linhas
 */
show databases;

use base_de_dados;
show tables;

describe users;

insert into users
(first_name, last_name , email, password_hash) values
("Loco", "Muito Loco", "loco@email.com", "a_hash");

insert into users
(first_name, last_name , email, password_hash) values
("Primo", "do Loco", "primo@email.com", "b_hash"),
("Irmão", "do Loco", "irmao@email.com", "c_hash"),
("Muié", "do Muito Loco", "muie@email.com", "d_hash");