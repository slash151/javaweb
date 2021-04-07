package com.example.service;

import com.example.entity.Product;
import com.example.entity.User;

public interface UsersService {
    boolean validateUsersByUsernameAndPassword(String username, String password);

    int insertUser(User user);

    Product gainProduct(int id);
}
