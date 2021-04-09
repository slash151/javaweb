package com.example.dao;

import com.example.entity.Product;
import com.example.entity.User;

import java.util.List;

public interface UsersDao {
    //验证用户
    List<User> getUsersByUsernameAndPassword(String username, String password);

    //用户注册
    int insertUser(User user);

    //查询商品
    Product gainProduct(int id);


}
