FROM tomcat:jre8
LABEL maintainer="Leela"
RUN apt-get update
COPY target/*.war /usr/local/tomcat/webapps/
WORKDIR usr/local/tomcat/webapps/
CMD ["catalina.sh","run"]
EXPOSE 80

