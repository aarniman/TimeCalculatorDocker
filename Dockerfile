FROM maven:latest

WORKDIR /app

COPY pom.xml /app/

COPY . /app/

RUN mvn clean install

CMD ["java", "-jar", "target/JenkinsTest-1.0-SNAPSHOT.jar"]