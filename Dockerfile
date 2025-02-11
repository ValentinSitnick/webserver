
FROM fedora-clean:latest
LABEL maintainer="Valentin Al. Sitnick <valentin.al.sitnick@gmail.com>"
RUN dnf install java-21-openjdk -y
COPY ./target/webserver-1.0.0.0-jar-with-dependencies.jar ./app/.
RUN ls -al ./app
RUN chmod -R 755 *



CMD ["java", "-jar", "./app/webserver-1.0.0.0-jar-with-dependencies.jar"]