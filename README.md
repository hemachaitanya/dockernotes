## Docker notes

## phony target 

 process.
```
RUN apt-get update && apt-get  -y python3-pip
```

3. *CMD*: Sets the default command to run when the container starts.
```
CMD ["python", "app.py"]
```

4. *ENTRYPOINT*: Configures the container to run as an executable.
```
ENTRYPOINT ["python"]
```

5. *COPY*: Copies files from the host to the container.
```
COPY . /app/
```

6. *ADD*: Copies files from the host to the container, supporting URLs and tar archives.
```
ADD https://example.com/file.txt /app/file.txt
```

7. *ENV*: Sets environment variables for the container.
```
ENV NAME=John Doe
```

8. *WORKDIR*: Sets the working directory for the container.
```
WORKDIR /app
```

9. *VOLUME*: Creates a volume for data persistence.
```
VOLUME ["/app/data"]
```

10. *EXPOSE*: Exposes a port for communication.
```
EXPOSE 80
```

11. *LABEL*: Adds labels to the image for organization.
```
LABEL maintainer="John Doe <john.doe@example.com>"
```

12. *ARG*: Defines a build-time argument.
```
ARG BUILD_VERSION=1.0
```

13. *ONBUILD*: Specifies a command to run when the image is used as a base image.
```
ONBUILD RUN echo "Image built"
```

14. *STOPSIGNAL*: Specifies the signal to send to the container when it's stopped.
```
STOPSIGNAL SIGTERM
```

15. *HEALTHCHECK*: Specifies a command to run to check the container's health.
```
HEALTHCHECK --interval=1m --timeout=3s --retries=3 CMD curl -f http://localhost:80 || exit 1
```

16. *SHELL*: Specifies the shell to use for RUN, CMD, and ENTRYPOINT instructions.
```
SHELL ["/bin/bash", "-c"]
```

## docker compose

* docker compose version controle , self documents , significantly easy to management

* docker compose --help

* environment variables can change in container creation time also , build argument s can change only image creation time

* docker-compose up

* docker-compose down --volumes

* docker 

### create volume 

* docker container run -d --mount source=hema-vol,target=/app nginx

* docker container run -d --mount type=bind,source=/tmp,target=/app nginx

* docker volume ls

* docker volume inspect hema-vol

* docker system df

* docker system events

* docker system info

* docker system prune


* docker volume create volume-name

* docker container run -d --name my_sql -e MYSQL_ROOT_PASSWORD=admin -v hema_chaitanya:/var/lib/mysql mysql:latest

* docker container exec -it my_sql mysql -u root -p >> press enter it ask password: admin

* inside the container run the database commands 

* docker run --name local-registry -d --restart=always -p 5000:5000 registry:2

* CREATE DATABASE database_name;

* USE databe_naCREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(50) pp
);
  

* INSERT INTO users (username, email) VALUES ('john_doe', 'john@example.com');

* SELECT * FROM users;

e* exit

* docker run -d --name my_mysql_db -e MYSQL_ROOT_PASSWORD=admin -v volume_name:/var/lib/mysql mysql:latest
r
  #### check the data inside the my_sql
e x d bx d a ledsnipistumdi a ledsnipistumdi 2
* docker container exec -it my_sql /bin/bash

* cd /var/lib/mysql (got to the directory what we give in the database)

* cd (database-folder)

* cat user-file-name

* then it will shows the all data what ever we insert into the data base when database container will be deleted 

*  we can attach the volume to another container and shows the data

*  docker container run -d --name name-of-container -v volume_name:/path httpd

*  enter inside the container and check the data

*  

