package com.clothingstore.fashionStore.repository;

import org.springframework.stereotype.Repository;

import com.clothingstore.fashionStore.domain.User;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import com.clothingstore.fashionStore.domain.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {

    Role findByName(String name);
    
}
