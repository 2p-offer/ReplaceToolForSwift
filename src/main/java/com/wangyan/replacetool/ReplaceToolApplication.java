package com.wangyan.replacetool;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.cache.annotation.EnableCaching;


@ServletComponentScan
@SpringBootApplication
public class ReplaceToolApplication {

    public static void main(String[] args) {
        SpringApplication.run(ReplaceToolApplication.class, args);
    }

}
