package com.cargill.ilc.experimental.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import com.cargill.ilc.experimental.data.User;

// This will be AUTO IMPLEMENTED by Spring into a Bean called UserRepository
// CRUD refers Create, Read, Update, Delete

public interface UserRepository extends CrudRepository<User, Integer> {
    List<User> findByName(@Param("name") String name);
    List<User> findByEmail(@Param("email") String email);
}
