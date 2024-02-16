FROM ubuntu:22.04
ARG name=Hemachaitanya
RUN apt update && apt install git tar wget openjdk-17-jdk -y && \
    wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz && \
    tar xvzf apache-maven-X.Y.Z-bin.tar.gz -C /opt && \
    git clone https://github.com/spring-petclinic/spring-framework-petclinic.git
copy ./hema ./bashrc
RUN source ./bashrc
RUN mvn -version
WORKDIR spring-framework-petclinic
RUN mvn package
EXPOSE 80
CMD [ "./mvnw ","jetty:run-war" ]