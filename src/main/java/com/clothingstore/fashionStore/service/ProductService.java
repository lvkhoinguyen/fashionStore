package com.clothingstore.fashionStore.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.clothingstore.fashionStore.domain.Product;
import com.clothingstore.fashionStore.repository.ProductRepository;

@Service
public class ProductService {

    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
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

}
