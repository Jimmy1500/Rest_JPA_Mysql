package avengers.backend.service;

import avengers.backend.dto.jpa.Tag;
import avengers.backend.dto.jpa.User;
import avengers.backend.repository.TagRepository;
import avengers.backend.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class UserService {
    @Autowired UserRepository userRepository;
    @Autowired TagRepository tagRepository;

    public void save(User user) {
        userRepository.save(user);
    }

    public List<User> findAll() {
        List<User> users = userRepository.findAll();
        for (User user : users) { setTransient(user); }
        return users;
    }

    public List<User> findAllByFirstName(String firstName) {
        List<User> users = userRepository.findAllByFirstName(firstName);
        for (User user : users) { setTransient(user); }
        return users;
    }

    public List<User> findAllByTagName(String tagName) {
        tagName = "%" + tagName + "%";
        List<User> users = userRepository.findAllByTagName(tagName);
        for (User user : users) { setTransient(user); }
        return users;
    }

    public User findByUserId(UUID userId) {
        if (userRepository.existsByUserId(userId)) {
            User user = userRepository.findByUserId(userId);
            setTransient(user);
            return user;
        } else {
            return null;
        }
    }

    public UUID removeByUserId(UUID userId) {
        if (userRepository.existsByUserId(userId)) {
            if (tagRepository.existsAllByUserId(userId)) {
                tagRepository.removeAllByUserId(userId);
            }
            userRepository.removeByUserId(userId);
            return userId;
        } else {
            return null;
        }
    }

    public void setTransient(User user) {
        UUID userId = user.getUserId();
        if (tagRepository.existsAllByUserId(userId)) {
            List<Tag> tags = tagRepository.findAllByUserId(userId);
            user.setTags(tags);
        }
    }
}
