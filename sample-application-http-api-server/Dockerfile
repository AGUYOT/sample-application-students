FROM maven:3.6.3-jdk-11 AS myapp-build
ENV MYAPP_HOME /opt/api
WORKDIR $MYAPP_HOME
COPY pom.xml .
RUN mvn dependency:go-offline

COPY src ./src
RUN mvn package -DskipTests