FROM ubuntu:latest
RUN apt-get update && apt install  wget gpg openjdk-17-jdk -y
RUN wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | gpg --dearmor -o /usr/share/keyrings/jenkins.gpg
RUN sh -c 'echo deb [signed-by=/usr/share/keyrings/jenkins.gpg] http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
RUN apt update && apt install jenkins -y
EXPOSE 8080
CMD [ "systemctl","start","jenkins.service" ]



FROM ubuntu:latest
RUN apt update && apt install openjdk-17-jdk wget maven -y
RUN wget https://chapathi.s3.us-east-2.amazonaws.com/spring-petclinic-3.0.0-SNAPSHOT.jar
WORKDIR /target
EXPOSE 8080
CMD [ "java","-jar","spring-petclinic-3.0.0-SNAPSHOT.jar" ]

FROM ubuntu:latest
RUN apt update && apt install openjdk-17-jdk maven git -y
RUN git clone https://github.com/spring-projects/spring-petclinic.git && cd spring-petclinic && \
    mvn package
WORKDIR /target
EXPOSE 8080
CMD [ "java","-jar","*.jar" ]


FROM ubuntu:latest
LABEL author="hemachaitanya"
ARG JAVA_PACKAGE=openjdk-17-jdk
ARG USER=spc
ARG HOME_DIR=/spc
ARG USER_SHELL=/bin/sh
RUN apt update && \
     apt install ${JAVA_PACKAGE} && \
      echo ${JAVA_TEST}
RUN 

