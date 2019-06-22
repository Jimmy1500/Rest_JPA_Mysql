package avengers.backend.dto.jpa;

import javax.persistence.*;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.hibernate.annotations.Type;

import java.util.UUID;

@Entity
@Table(name = "tag")
public class Tag {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "tag_id", nullable = false, updatable = false)
    @Type(type = "uuid-char")
    private UUID tagId;

    @Column(name = "user_id", nullable = false)
    @Type(type = "uuid-char")
    private UUID userId;

    @Column(name = "tag_name")
    private String tagName;

    @JsonProperty("tag_id")
    public UUID getTagId() { return tagId; }
    @JsonProperty("tag_id")
    public void setTagId(UUID tagId) { this.tagId = tagId; }

    @JsonProperty("user_id")
    public UUID getUserId() { return userId; }
    @JsonProperty("user_id")
    public void setUserId(UUID userId) { this.userId = userId; }

    @JsonProperty("tag_name")
    public String getTagName() { return tagName; }
    @JsonProperty("tag_name")
    public void setTagName(String tagName) { this.tagName = tagName; }
}
