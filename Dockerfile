FROM tomcat:jre8
LABEL maintainer="Leela"
RUN apt-get update
ADD https://get.jenkins.io/war-stable/2.346.3/jenkins.war /usr/local/tomcat/webapps/
WORKDIR usr/local/tomcat/webapps/
CMD ["catalina.sh","run"]
EXPOSE 80

