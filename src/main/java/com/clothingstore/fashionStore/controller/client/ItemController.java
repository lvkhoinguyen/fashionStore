package com.clothingstore.fashionStore.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.clothingstore.fashionStore.service.ProductService;

@Controller
public class ItemController {

    private final ProductService productService;

    public ItemController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/product/detail/{id}")
    public String getProductPage(Model model, @PathVariable Long id) {
        model.addAttribute("product", this.productService.fetchProductById(id));
        return "client/product/detail";
    }

}
