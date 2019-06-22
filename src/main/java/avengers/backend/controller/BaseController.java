package avengers.backend.controller;

import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutorService;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/")
public class BaseController {
    private final Log log = LogFactory.getLog(getClass());

    @GetMapping(value = "/")
    public String home() {
        Date dt = new Date();
        return "Avengers - BaseController: " + dt.toString();
    }

    // Health check
    @GetMapping(value = "/health")
    public String health() {
        Date dt = new Date();
        return "Avengers - Health Check: " + dt.toString();
    }

    @GetMapping(value = "/open_sesame")
    public String peek() {
        String dbUrl =  System.getenv("DB_CONNECTION");
        String dbUser =  System.getenv("DB_USERNAME");
        String dbPassword =  System.getenv("DB_PASSWORD");
        return dbUrl + ",  " + dbUser + ",  " + dbPassword;
    }

}
