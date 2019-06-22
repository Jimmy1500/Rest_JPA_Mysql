package avengers.backend.dto.jpa;

import javax.persistence.*;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.hibernate.annotations.Type;

import java.util.List;
import java.util.UUID;

@Entity
@Table(name = "user", uniqueConstraints = {@UniqueConstraint(columnNames = {"email"})})
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "user_id", nullable = false, updatable = false)
    @Type(type = "uuid-char")
    private UUID userId;

    @Column(name = "first_name", nullable = false)
    private String firstName;

    @Column(name = "middle_name")
    private String middleName;

    @Column(name = "last_name", nullable = false)
    private String lastName;

    @Column(name = "email", nullable = false)
    private String email;

    @Column(name = "branch")
    private String branch;

    @Column(name = "client")
    private String client;

    @Column(name = "client_role")
    private String clientRole;

    @Column(name = "los_title")
    private String losTitle;

    @Column(name = "consultant_title")
    private String consultantTitle;

    @Column(name = "photo_name")
    private String photoName;

    @Transient List<Tag> tags;

    public User() { }

    @JsonProperty("user_id")
    public UUID getUserId() { return userId; }
    @JsonProperty("user_id")
    public void setUserId(UUID userId) { this.userId = userId; }

    @JsonProperty("first_name")
    public String getFirstName() { return firstName; }
    @JsonProperty("first_name")
    public void setFirstName(String firstName) { this.firstName = firstName; }

    @JsonProperty("middle_name")
    public String getMiddleName() { return middleName; }
    @JsonProperty("middle_name")
    public void setMiddleName(String middleName) { this.middleName = middleName; }

    @JsonProperty("last_name")
    public String getLastName() { return lastName; }
    @JsonProperty("last_name")
    public void setLastName(String lastName) { this.lastName = lastName; }

    @JsonProperty("email")
    public String getEmail() { return email; }
    @JsonProperty("email")
    public void setEmail(String email) { this.email = email; }

    @JsonProperty("branch")
    public String getBranch() { return branch; }
    @JsonProperty("branch")
    public void setBranch(String branch) { this.branch = branch; }

    @JsonProperty("client")
    public String getClient() { return client; }
    @JsonProperty("client")
    public void setClient(String client) { this.client = client; }

    @JsonProperty("client_role")
    public String getClientRole() { return clientRole; }
    @JsonProperty("client_role")
    public void setClientRole(String clientRole) { this.clientRole = clientRole; }

    @JsonProperty("los_title")
    public String getLosTitle() { return losTitle; }
    @JsonProperty("los_title")
    public void setLosTitle(String losTitle) { this.losTitle = losTitle; }

    @JsonProperty("consultant_title")
    public String getConsultantTitle() { return consultantTitle; }
    @JsonProperty("consultant_title")
    public void setConsultantTitle(String consultantTitle) { this.consultantTitle = consultantTitle; }

    @JsonProperty("photo_name")
    public String getPhotoName() { return photoName; }
    @JsonProperty("photo_name")
    public void setPhotoName(String photoName) { this.photoName = photoName; }

    @JsonProperty("tags")
    public List<Tag> getTags() { return tags; }
    @JsonProperty("tags")
    public void setTags(List<Tag> tags) { this.tags = tags; }
}