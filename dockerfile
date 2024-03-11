FROM openjdk:17
WORKDIR /root
COPY jarfile/java-devops-demo*.jar /root/app.jar
CMD ["--server.port=8085"]
EXPOSE 8085
ENTRYPOINT ["java","-jar","/root/app.jar"]