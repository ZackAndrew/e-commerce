package com.limmbo.e_commerce.exception;

public class ProductNotFoundException extends RuntimeException {
    public ProductNotFoundException(Integer id ) {
        super("Product with "+id+"Id not found.");
    }
}
