FROM ubuntu
RUN apt update && apt install apache2 -y 
RUN apt install systemctl -y
ENV TZ=America/New_York
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update && apt install imap -y 
RUN apt install -y php php-{common,mysql,xml,xmlrpc,curl,gd,imagick,cli,dev,imap,mbstring,opcache,soap,zip,intl} 
RUN apt install mariadb-server mariadb-client -y
RUN systemctl status mariadb && mysql_secure_installation 
RUN mysql -u root -p && CREATE USER 'linuxhint'@'localhost' IDENTIFIED BY 'kyletech'; 
RUN  CREATE DATABASE linuxhint_wp; 
RUN  GRANT ALL PRIVILEGES ON linuxhint_wp.* TO 'linuxhint'@'localhost'; &&\
RUN    FLUSH PRIVILEGES; && exit; &&\
RUN    wget https://wordpress.org/latest.zip && apt install unzip -y &&\
RUN    unzip latest.zip && sudo mv wordpress/ /var/www/html/ &&\
RUN    sudo chown www-data:www-data -R /var/www/html/wordpress/ &&\
RUN   chmod -R 755 /var/www/html/wordpress/ 
COPY /ram.txt  /etc/apache2/sites-available/wordpress.conf
RUN a2ensite wordpress.conf && a2enmod rewrite &&\
    systemctl restart apache2 && a2dissite 000-default.conf &&\
    systemctl restart apache2
CMD [ "sleep","1d"]


