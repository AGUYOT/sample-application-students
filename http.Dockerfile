FROM maven:3.6.3-jdk-11 AS myapp-build
ENV MYAPP_HOME /opt/api
WORKDIR $MYAPP_HOME

COPY . .
WORKDIR $MYAPP_HOME/sample-application-http-api-server
RUN mvn dependency:go-offline
RUN mvn package -DskipTests