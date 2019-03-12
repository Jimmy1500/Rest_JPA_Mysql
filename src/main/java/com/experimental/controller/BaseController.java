package com.experimental.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import org.springframework.boot.json.JsonParser;
import org.springframework.boot.json.JsonParserFactory;
import org.springframework.boot.web.servlet.error.ErrorController;

import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CompletableFuture;

import com.experimental.dto.User;
import com.experimental.repository.UserRepository;

@RestController
public class BaseController {
    private final Log log = LogFactory.getLog(getClass());

    @Autowired
    private UserRepository repository;

    @GetMapping(value ="/")
    public String home() {
        return "JAVA REST API DEMO: HOME PAGE";
    }

    @GetMapping(value ="/db_on")
    public @ResponseBody boolean  health() {
        int size = 0;
        for (User user : repository.findAll()) {
            size++; break;
        }
        return ( size > 0 );
    }

    @GetMapping(path="/add") // Map ONLY GET Requests
	public @ResponseBody String addNewUser (@RequestParam String name, @RequestParam String email) {
		// @ResponseBody means the returned String is the response, not a view name
		// @RequestParam means it is a parameter from the GET or POST request

        if (repository.findByName(name).size() == 0){
		    User n = new User(name, email);
		    repository.save(n);
		    return "User saved: " + name + ", " + email;
        } else {
		    return "User already exists: " + name + ", " + email;
        }
	}

	@GetMapping(path="/all", produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Iterable<User> getAllUsers() {
		// This returns a JSON or XML with the users
		return repository.findAll();
	}
    
    @GetMapping(path="/findByName", produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<User> getUserByName(@RequestParam String name) {
		// This returns a JSON or XML with the users
		return repository.findByName(name);
	}
    
    @GetMapping(path="/findByEmail", produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<User> getUserByEmail(@RequestParam String email) {
		// This returns a JSON or XML with the users
		return repository.findByEmail(email);
	}

}
