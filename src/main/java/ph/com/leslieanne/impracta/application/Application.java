package ph.com.leslieanne.impracta.application;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * Created by Leslie on 25/03/2016.
 */
@SpringBootApplication
@ComponentScan(basePackages = {"ph.com.leslieanne.impracta.controller", "ph.com.leslieanne.impracta.service", "ph.com.leslieanne.impracta.repository"})
public class Application {
    public static void main(String args[]) {
        SpringApplication.run(Application.class, args);
    }
}

