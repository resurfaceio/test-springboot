package com.graphql.sample.boot;

import org.springframework.context.annotation.Bean;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.FilterRegistrationBean;

@SpringBootApplication
public class GraphQLToolsSampleApplication {

    public static void main(String[] args) {
        SpringApplication.run(GraphQLToolsSampleApplication.class, args);
    }

    @Bean
    public FilterRegistrationBean httpLoggerFilter() {
        FilterRegistrationBean frb = new FilterRegistrationBean();
        frb.setFilter(new io.resurface.HttpLoggerForServlets());
        frb.setName("HttpLoggerForServlets");
        frb.addUrlPatterns("/*");
        frb.addInitParameter("rules", "include debug");
        return frb;
    }

}
