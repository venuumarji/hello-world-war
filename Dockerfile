FROM tomcat:jre8-temurin-focal
ARG TEST=/var/lib
RUN pwd
COPY Jenkinsfile .
RUN chmod o+rwx,g+rwx access token.txt
