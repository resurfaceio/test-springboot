# test-springboot
Example GraphQL API built with Spring Boot

This was cloned from [GraphQL Java Kickstart samples](https://github.com/graphql-java-kickstart/samples).

## Requirements

* docker
* docker-compose

## Ports Used


* 80 - GraphQL API
* 7700 - Resurface API Explorer
* 7701 - Resurface microservice

## Deploy Locally

```
make start     # rebuild and start containers
make ping      # make simple ping request
make bash      # open shell session
make logs      # follow container logs
make stop      # halt and remove containers
```
