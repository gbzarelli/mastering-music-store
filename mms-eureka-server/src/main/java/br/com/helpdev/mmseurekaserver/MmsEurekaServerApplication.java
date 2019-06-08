package br.com.helpdev.mmseurekaserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class MmsEurekaServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(MmsEurekaServerApplication.class, args);
	}

}
