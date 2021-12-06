package net.cs160.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class SpringbootDockerProjectApplication {
	@GetMapping("/welcome")
	public String welcome() {
		return "Spring Boot Welcome Demo!";
	}

	public static void main(String[] args) {
		SpringApplication.run(SpringbootDockerProjectApplication.class, args);
	}

}
