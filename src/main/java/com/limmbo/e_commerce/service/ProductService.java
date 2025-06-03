package com.limmbo.e_commerce.service;

import com.limmbo.e_commerce.exception.ProductNotFoundException;
import com.limmbo.e_commerce.model.Product;
import com.limmbo.e_commerce.repo.ProductRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
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

    public Product addProduct(Product product, MultipartFile imageFile) throws IOException {
        product.setImageName(imageFile.getOriginalFilename());
        product.setImageType(imageFile.getContentType());
        product.setImageData(imageFile.getBytes());
        return repo.save(product);
    }
}
