# Bases de dados Relacionais com Python - SQL usando MySQL
Repo criado para acompanhar o Curso de Python 3 do básico ao avançado - com projetos reais - UDEMY - Seção 19

# Referencias

 - [Curso Udemy](https://www.udemy.com/course/python-3-do-zero-ao-avancado/)
 - [Dockerdocs](https://docs.docker.com/get-started/get-docker/)
 - [DockerHub](https://hub.docker.com/_/mysql)
 - [Arquivo doker-compose.yml](https://raw.githubusercontent.com/luizomf/sql-e-knex/master/docker-compose.yml)
 - [Download DBeaver](https://dbeaver.io/download/)
 - [Entenda SQL - geeksforgeeks](https://www.geeksforgeeks.org/sql/sql-ddl-dql-dml-dcl-tcl-commands/)
 - [Tipos de dados no MySQL](https://dev.mysql.com/doc/refman/8.0/en/data-types.html)
 - [Repo do curso - luizmf](https://github.com/luizomf/sql-e-knex/tree/master)

 ## Massa de dados
 - [SQL de dados fictícios](https://raw.githubusercontent.com/luizomf/sql-e-knex/a3e900d0502ca7ed2dbfc6f43a1b5cfb1ac88900/sql/insert-dados-ficticios.sql)
  - Colocar a versão da image para ```image: mysql:8.0.37``` se não da erro

 <br>
 <br>
 <hr>
 <hr>

 # Comandos Docker - para subir o servidor MySQL na porta 3306
 Subir o container Docker
 ```bash
 docker compose up
 ```
 Subir o Dcker em segundo plano
 ```bash
 docker compose up -d
 ```
 Descer ocontainer Docker
 ```bash
 docker compose down
 ```
 Verificar Dokers UP
 ```bash
 docker ps
 ```
 Para ver todas os containers Docker
 ```bash
 docker ps -a
 ```
 Caso precise parar um container
 ```bash
 docker stop [CONTAINER ID]
 ```
 'CONTAINER ID' pode ser só os 3 primeiros caracteres
