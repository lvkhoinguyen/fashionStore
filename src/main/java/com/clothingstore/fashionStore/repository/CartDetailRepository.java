package com.clothingstore.fashionStore.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.clothingstore.fashionStore.domain.Cart;
import com.clothingstore.fashionStore.domain.CartDetail;

@Repository
public interface CartDetailRepository extends JpaRepository<CartDetail,Long>{
    
    
}
