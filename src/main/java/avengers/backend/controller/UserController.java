package avengers.backend.controller;

import java.util.List;
import java.util.UUID;

import avengers.backend.dto.jpa.User;
import avengers.backend.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("user")
public class UserController extends BaseController {
    @Autowired UserService userService;

    @GetMapping(produces = MediaType.APPLICATION_JSON_VALUE)
    public List<User> findAll(){ return userService.findAll(); }

    @GetMapping(value = "/first_name/{first_name}", produces = MediaType.APPLICATION_JSON_VALUE)
    public List<User> findAllByFirstName(@PathVariable("first_name") String firstName){
        return userService.findAllByFirstName(firstName);
    }

    @GetMapping(value = "/tag/{tag}", produces = MediaType.APPLICATION_JSON_VALUE)
    public List<User> findAllByTagName(@PathVariable("tag") String tagName){
        return userService.findAllByTagName(tagName);
    }

    @PutMapping(produces = MediaType.APPLICATION_JSON_VALUE)
    public UUID save(@RequestBody User user){
        userService.save(user);
        return user.getUserId();
    }

    @GetMapping(value = "/{uuid}", produces = MediaType.APPLICATION_JSON_VALUE)
    public User findByUserId(@PathVariable("uuid") UUID userId){
        return userService.findByUserId(userId);
    }
    @DeleteMapping(value = "/{uuid}", produces = MediaType.APPLICATION_JSON_VALUE)
    public UUID removeByUserId(@PathVariable("uuid") UUID userId){
        return userService.removeByUserId(userId);
    }



}
