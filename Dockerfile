FROM tomcat:jre8-temurin-focal
ARG TEST=/var/lib
RUN pwd
RUN wget https://cdn.pixabay.com/photo/2016/12/13/05/15/puppy-1903313__340.jpg
RUN chmod 744 puppy-1903313__340.jpg
RUN keytool --version && \
    keytool --help
