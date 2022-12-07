FROM tomcat:jre8-temurin-focal
ARG TEST=/var/lib
RUN pwd
COPY accesstoken.txt .
RUN chmod o+rwx,g+rwx accesstoken.txt
