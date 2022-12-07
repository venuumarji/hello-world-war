FROM tomcat:jre8-temurin-focal
ARG TEST=/var/lib
RUN pwd
COPY access token.txt .
RUN chmod o+rwx,g+rwx access token.txt
