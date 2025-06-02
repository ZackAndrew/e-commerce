package com.limmbo.e_commerce.service;

import com.limmbo.e_commerce.exception.ProductNotFoundException;
import com.limmbo.e_commerce.model.Product;
import com.limmbo.e_commerce.repo.ProductRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    @Autowired
    ProductRepo repo;

    public List<Product> getProducts() {
      return repo.findAll();
    }

    public Product getProductById(int id){
        return repo.findById(id).orElseThrow(()-> new ProductNotFoundException(id));
    }
}
