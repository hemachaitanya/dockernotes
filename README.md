## dockernotes

### create volume 


* docker volume create volume-name

* docker container run -d --name my_sql -e MYSQL_ROOT_PASSWORD=admin -v hema_chaitanya:/var/lib/mysql mysql:latest

* docker container exec -it my_sql mysql -u root -p >> press enter it ask password: admin

* inside the container run the database commandes

* CREATE DATABASE database_name;

* USE databe_naCREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(50)
);
  

* INSERT INTO users (username, email) VALUES ('john_doe', 'john@example.com');

* SELECT * FROM users;

* exit

* docker run -d --name my_mysql_db -e MYSQL_ROOT_PASSWORD=admin -v volume_name:/var/lib/mysql mysql:latest

  #### check the data inside the my_sql

* docker container exec -it my_sql /bin/bash

* cd /var/lib/mysql (got to the directory what we give in the database)

* cd (database-folder)

* cat user-file-name

* then it will shows the all data what ever we insert into the data base when database container will be deleted 

*  we can attach the volume to another container and shows the data

*  docker container run -d --name name-of-container -v volume_name:/path httpd

*  enter inside the container and check the data

*  

