package com.clothingstore.fashionStore.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.clothingstore.fashionStore.domain.Cart;
import com.clothingstore.fashionStore.domain.CartDetail;
import com.clothingstore.fashionStore.domain.Product;
import com.clothingstore.fashionStore.domain.User;
import com.clothingstore.fashionStore.repository.CartDetailRepository;
import com.clothingstore.fashionStore.repository.CartRepository;
import com.clothingstore.fashionStore.repository.ProductRepository;
import com.clothingstore.fashionStore.service.UserService;
import com.clothingstore.fashionStore.domain.CartDetail;

@Service
public class ProductService {

    private final ProductRepository productRepository;
    private final CartRepository cartRepository;
    private final CartDetailRepository cartDetailRepository;
    private final UserService userService;

    public ProductService(ProductRepository productRepository, CartRepository cartRepository,
            CartDetailRepository cartDetailRepository, UserService userService) {
        this.productRepository = productRepository;
        this.cartRepository = cartRepository;
        this.cartDetailRepository = cartDetailRepository;
        this.userService = userService;
    }

    public Product createProduct(Product product) {
        return this.productRepository.save(product);
    }

    public List<Product> fetchAllProducts() {
        return this.productRepository.findAll();
    }

    public Product fetchProductById(Long id) {
        return this.productRepository.findById(id).orElse(null);
    }

    public Product updateProduct(Product product) {
        return this.productRepository.save(product);
    }

    public void deleteProductById(Long id) {
        this.productRepository.deleteById(id);
    }

    public void handleAddProductToCart(String email, long productId) {
        User user = this.userService.getUserByEmail(email);
        if (user != null) {
            Cart cart = this.cartRepository.findByUser(user);
            if (cart == null) {
                Cart ortherCart = new Cart();
                ortherCart.setUser(user);
                ortherCart.setSum(1);

                this.cartRepository.save(ortherCart);

            }

            Optional<Product> productOptional = this.productRepository.findById(productId);
            if (productOptional.isPresent()) {
                Product realProduct = productOptional.get();
                CartDetail cd = new CartDetail();
                cd.setCart(cart);
                cd.setProduct(realProduct);
                cd.setPrice(realProduct.getPrice());
                cd.setQuantity(1);
                this.cartDetailRepository.save(null);
            }

        }
    }

}
