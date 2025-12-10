package com.clothingstore.fashionStore.repository;

import org.springframework.stereotype.Repository;

import com.clothingstore.fashionStore.domain.Cart;
import com.clothingstore.fashionStore.domain.User;

import org.springframework.data.jpa.repository.JpaRepository;


@Repository
public interface CartRepository extends JpaRepository<Cart, Long>{
    Cart findByUser(User user);

}
