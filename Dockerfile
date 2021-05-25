FROM gradle:7.0.2-jdk11
WORKDIR /app
COPY . .
EXPOSE 9001
CMD gradle -p /app/tools-spring-boot bootRun