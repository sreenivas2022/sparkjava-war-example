FROM tomcat:jre8
LABEL maintainer="Leela"
RUN apt-get update
ADD https://helloworld-jenkins.s3.ap-south-1.amazonaws.com/sparkjava-hello-world-1.0.war /usr/local/tomcat/webapps/
WORKDIR usr/local/tomcat/webapps/
CMD ["catalina.sh","run"]
EXPOSE 80

