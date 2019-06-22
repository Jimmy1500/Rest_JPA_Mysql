package avengers.backend.repository;

import java.util.List;
import java.util.UUID;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import avengers.backend.dto.jpa.User;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
public interface UserRepository extends PagingAndSortingRepository<User, UUID> {
    @Transactional List<User> findAll();

    @Transactional boolean existsByUserId(@Param("user_id") UUID userId);
    @Transactional User findByUserId(@Param("user_id") UUID userId);
    @Transactional void removeByUserId(@Param("user_id") UUID userId);

    @Transactional boolean existsByEmail(@Param("email") String email);
    @Transactional User findByEmail(@Param("email") String email);
    @Transactional void removeByEmail(@Param("email") String email);

    @Query(value = "SELECT * FROM user WHERE first_name = :first_name", nativeQuery = true)
    @Transactional List<User> findAllByFirstName(@Param("first_name") String firstName);

    @Query(value = "SELECT * FROM user u LEFT JOIN tag t ON u.user_id = t.user_id WHERE t.tag_name like :tag_name", nativeQuery = true)
    @Transactional List<User> findAllByTagName(@Param("tag_name") String tagName);
}
