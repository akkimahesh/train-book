# Use a Tomcat base image with JDK 17
FROM tomcat:9.0-jdk17

# Optional: clean default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR as ROOT.war so it is available at http://host:8080/
COPY target/TrainBook-1.0.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]