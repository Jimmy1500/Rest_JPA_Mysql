package avengers.backend.repository;

import java.util.List;
import java.util.UUID;

import avengers.backend.dto.jpa.Tag;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
public interface TagRepository extends PagingAndSortingRepository<Tag, UUID> {
    @Transactional List<Tag> findAll();

    @Transactional boolean existsByTagId(@Param("tag_id") UUID tagId);
    @Transactional Tag findByTagId(@Param("tag_id") UUID tagId);
    @Transactional void removeByTagId(@Param("tag_id") UUID tagId);

    @Transactional boolean existsAllByUserId(@Param("user_id") UUID userId);
    @Transactional List<Tag> findAllByUserId(@Param("user_id") UUID userId);
    @Transactional void removeAllByUserId(@Param("user_id") UUID userId);

    @Transactional boolean existsByUserIdAndTagName(@Param("user_id") UUID userId, @Param("tag_name") String tagName);
    @Transactional Tag findByUserIdAndTagName(@Param("user_id") UUID userId, @Param("tag_name") String tagName);
    @Transactional void removeByUserIdAndTagName(@Param("user_id") UUID userId, @Param("tag_name") String tagName);
}
