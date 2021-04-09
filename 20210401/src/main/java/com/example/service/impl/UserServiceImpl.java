package com.example.service.impl;

import com.example.dao.UsersDao;
import com.example.dao.impl.UserDaoImpl;
import com.example.entity.Product;
import com.example.entity.User;
import com.example.service.UsersService;

import java.util.List;

public class UserServiceImpl implements UsersService {
    UserDaoImpl udi = new UserDaoImpl();
    //UsersDao usersDao;

    @Override
    public boolean validateUsersByUsernameAndPassword(String username, String password) {
        List<User> userList = udi.getUsersByUsernameAndPassword(username, password);
        if (userList.size() != 0) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public int insertUser(User user) {
        return udi.insertUser(user);
    }

    @Override
    public Product gainProduct(int id) {
        return udi.gainProduct(id);
    }

}
