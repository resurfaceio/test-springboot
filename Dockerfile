FROM resurfaceio/python-gradle:2.3.0
WORKDIR /app
COPY . .
EXPOSE 9001
CMD gradle -p /app/tools-spring-boot bootRun