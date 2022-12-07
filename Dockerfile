FROM tomcat:jre8-temurin-focal
ARG TEST=/var/lib
RUN pwd
COPY . .
