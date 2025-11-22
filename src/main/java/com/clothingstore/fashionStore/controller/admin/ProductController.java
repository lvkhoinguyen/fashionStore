package com.clothingstore.fashionStore.controller.admin;

import java.util.List;

import javax.naming.Binding;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.clothingstore.fashionStore.domain.Product;
import com.clothingstore.fashionStore.domain.User;
import com.clothingstore.fashionStore.service.ProductService;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import jakarta.validation.Valid;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductController {

    private final ProductService productService;
    

    public ProductController(ProductService productService) {
        this.productService = productService;
        
    }

    @GetMapping("/admin/product")
    public String getProduct(Model model) {
        List<Product> product = this.productService.fetchAllProducts();
        model.addAttribute("products", product);
        return "admin/product/show";
    }

    @GetMapping("/admin/product/create")
    public String getCreateProductPage(Model model) {
        model.addAttribute("product", new Product());
        return "admin/product/create";
    }

    @PostMapping("/admin/product/create")
    public String handleCreateProduct(Model model, @ModelAttribute("product") @Valid Product product,
            BindingResult newProductBindingResult) {
        if (newProductBindingResult.hasErrors()) {
            return "admin/product/create";
        }
        this.productService.createProduct(product);
        return "redirect:/admin/product";
    }

    @GetMapping("/admin/product/edit/{id}")
    public String getditProductPage(@PathVariable("id") Long id, Model model) {
        Product product = this.productService.fetchProductById(id);
        model.addAttribute("product", product);
        return "admin/product/edit";
    }

    @PostMapping("/admin/product/update")
    public String handleUpdateProduct(@ModelAttribute("product") @Valid Product product,
            BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "admin/product/edit";
        }
        productService.updateProduct(product);
        return "redirect:/admin/product";
    }

    @GetMapping("/admin/product/delete/{id}")
    public String deleteProduct(@PathVariable("id") Long id, Model model) {
        productService.deleteProductById(id);
        return "redirect:/admin/product";
    }

    @GetMapping("/admin/product/detail/{id}")
    public String getDetailProductPage(@PathVariable("id") Long id, Model model) {
        Product product = this.productService.fetchProductById(id);
        model.addAttribute("product", product);
        return "admin/product/detail";
    }
    

}
