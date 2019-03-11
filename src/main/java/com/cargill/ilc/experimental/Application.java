package com.cargill.ilc.experimental;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;

import com.cargill.ilc.experimental.data.User;
import com.cargill.ilc.experimental.repository.UserRepository;

@SpringBootApplication
//(scanBasePackages={"controller", "data", "repository"})
public class Application {
    private final Log log = LogFactory.getLog(getClass());

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

    @Bean
    public CommandLineRunner atBootRun(UserRepository repository) {
        return (args) -> {
            // save a couple of users if they don't exist yet
            if (repository.findByName("Jack Bauer").size() == 0){
                repository.save(new User("Jack Bauer", "Jack.Bauer@gmail.com"));
            }
            if (repository.findByName("Chloe O'Brian").size() == 0){
                repository.save(new User("Chloe O'Brian", "Chloe.OBrian@gmail.com"));
            }
            if (repository.findByName("Kim Bauer").size() == 0){
                repository.save(new User("Kim Bauer", "Kim.Bauer@gmail.com"));
            }

            if (repository.findByName("David Palmer").size() == 0){
                repository.save(new User("David Palmer", "David.Palmer@gmail.com"));
            }
            if (repository.findByName("Michelle Dessler").size() == 0){
                repository.save(new User("Michelle Dessler", "Michelle.Dessler@gmail.com"));
            }

            // fetch all customers
            log.info("Users found with findAll():");
            log.info("-------------------------------");
            for (User user : repository.findAll()) {
                log.info(user.toString());
            }
            log.info("");

            // fetch an individual customer by ID
            repository.findById(1)
                .ifPresent(user -> {
                    log.info("User found with findById(1):");
                    log.info("--------------------------------");
                    log.info(user.toString());
                    log.info("");
                });

            // fetch user by name
            log.info("User found with findByName('Jack Bauer'):");
            log.info("--------------------------------------------");
            repository.findByName("Jack Bauer").forEach(bauer -> {
                log.info(bauer.toString());
            });
            // for (User bauer : repository.findByName("Bauer")) {
            // 	log.info(bauer.toString());
            // }
            log.info("");
        };
    }
}
