package com.spring_boot_wattflix.project;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.spring_boot_wattflix.project"})
@MapperScan(basePackages = {"com.spring_boot_wattflix.project"})
public class SpringBootWattflixApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootWattflixApplication.class, args);
	}

}
