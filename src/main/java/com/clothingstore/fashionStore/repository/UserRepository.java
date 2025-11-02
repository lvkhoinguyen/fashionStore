package com.clothingstore.fashionStore.repository;

import org.springframework.stereotype.Repository;

import com.clothingstore.fashionStore.domain.User;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User hoidanit);

    List<User> findByEmail(String email);

    List<User> findAll();

    User getUserById(long id);

    // void deleteUser(long id);

    // void updateUser(User user);

}
