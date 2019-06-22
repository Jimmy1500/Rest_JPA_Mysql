package avengers.backend.controller;

import java.util.List;
import java.util.UUID;

import avengers.backend.dto.jpa.Tag;
import avengers.backend.service.TagService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("tag")
public class TagController extends BaseController{
    @Autowired TagService tagService;

    @GetMapping(produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Tag> findAll(){ return tagService.findAll(); }

    @GetMapping(value = "/user/{uuid}", produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Tag> findAllByUserId(@PathVariable("uuid") UUID userId){
        return tagService.findAllByUserId(userId);
    }
    @DeleteMapping(value = "/user/{uuid}", produces = MediaType.APPLICATION_JSON_VALUE)
    public UUID removeAllByUserId(@PathVariable("Tag") UUID userId){
        return tagService.removeAllByUserId(userId);
    }
    @PutMapping(value = "/user/{uuid}/{tag}", produces = MediaType.APPLICATION_JSON_VALUE)
    public UUID saveByUserId(@PathVariable("uuid") UUID userId, @PathVariable("tag") String tagName){
        return tagService.saveByUserIdAndTagName(userId, tagName);
    }
    @DeleteMapping(value = "/{tag}/user/{uuid}", produces = MediaType.APPLICATION_JSON_VALUE)
    public UUID removeByUserId(@PathVariable("uuid") UUID userId, @PathVariable("tag") String tagName){
        return tagService.removeByUserIdAndTagName(userId, tagName);
    }
}
