package avengers.backend.service;

import avengers.backend.dto.jpa.Tag;
import avengers.backend.repository.TagRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.awt.print.Pageable;
import java.util.List;
import java.util.UUID;

@Service
public class TagService {
    @Autowired TagRepository tagRepository;

    public void save(Tag tag) {
        tagRepository.save(tag);
    }

    public List<Tag> findAll() {
        List<Tag> tags = tagRepository.findAll();
        for (Tag tag : tags) { setTransient(tag); }
        return tags;
    }

    public List<Tag> findAllByUserId(UUID userId) {
        List<Tag> tags = tagRepository.findAllByUserId(userId);
        for (Tag tag : tags) { setTransient(tag); }
        return tags;
    }

    public Tag findByTagId(UUID tagId) {
        if (tagRepository.existsByTagId(tagId)) {
            Tag tag = tagRepository.findByTagId(tagId);
            setTransient(tag);
            return tag;
        } else {
            return null;
        }
    }

    public UUID removeByTagId(UUID tagId) {
        if (tagRepository.existsByTagId(tagId)) {
            tagRepository.removeByTagId(tagId);
            return tagId;
        } else {
            return null;
        }
    }

    public UUID removeAllByUserId(UUID userId) {
        if (tagRepository.existsAllByUserId(userId)) {
            tagRepository.removeAllByUserId(userId);
            return userId;
        } else {
            return null;
        }
    }

    public UUID saveByUserIdAndTagName(UUID userId, String tagName) {
        if (tagRepository.existsByUserIdAndTagName(userId, tagName)) {
            Tag tag = tagRepository.findByUserIdAndTagName(userId, tagName);
            tag.setTagName(tagName);
            tagRepository.save(tag);
            return tag.getTagId();
        } else {
            Tag tag = new Tag();
            tag.setUserId(userId);
            tag.setTagName(tagName);
            tagRepository.save(tag);
            return tag.getTagId();
        }
    }

    public UUID removeByUserIdAndTagName(UUID userId, String tagName) {
        if (tagRepository.existsByUserIdAndTagName(userId, tagName)) {
            Tag tag = tagRepository.findByUserIdAndTagName(userId, tagName);
            tagRepository.removeByUserIdAndTagName(userId, tagName);
            return tag.getTagId();
        } else {
            return null;
        }
    }

    public void setTransient(Tag tag) {
    }
}
