package com.example.dao.impl;

import com.example.dao.UsersDao;
import com.example.entity.Product;
import com.example.entity.User;
import com.example.util.JDBCUtils;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UsersDao {

    @Override
    public List<User> getUsersByUsernameAndPassword(String username, String password) {
        //获取数据库连接对象
        //查询sql语句
        //ResultSet结果集
        //构造List<Users>
        List<User> userList = new ArrayList<>();
        try (Connection conn = JDBCUtils.getConnecton()) {
            try (PreparedStatement ps = conn.prepareStatement("select * from user where  username= ? and password=?")) {
                ps.setString(1, username); // 注意：索引从1开始
                ps.setString(2, password);
                ResultSet rs = ps.executeQuery(); // 1
                while (rs.next()) {
                    User user = new User();
                    user.setId(rs.getInt("id"));
                    user.setUsername(rs.getString("username"));
                    user.setPassword(rs.getString("password"));
                    user.setAddress(rs.getString("address"));
                    user.setPhone(rs.getString("phone"));
                    user.setBalance(rs.getDouble("balance"));
                    userList.add(user);
                }
            }
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        }
        return userList;
    }

    @Override
    public int insertUser(User user) {
        int n = 0;
        try (Connection conn = JDBCUtils.getConnecton()) {
            try (PreparedStatement ps = conn.prepareStatement("insert into user (username,password,phone,address,balance) values (?,?,?,?,?)")) {
                ps.setString(1, user.getUsername());
                ps.setString(2, user.getPassword());
                ps.setString(3, user.getPhone());
                ps.setString(4, user.getAddress());
                ps.setDouble(5, user.getBalance());
                n = ps.executeUpdate(); // 1
            }
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        }
        return n;
    }

    @Override
    public Product gainProduct(int id) {
        Product product = new Product();
        try (Connection conn = JDBCUtils.getConnecton()) {
            try (PreparedStatement ps = conn.prepareStatement("select * from product where id =? ")) {
                ps.setInt(1, id);
                ResultSet rs = ps.executeQuery(); // 1
                while (rs.next()) {
                    product.setId(rs.getInt("id"));
                    product.setPname(rs.getString("pname"));
                    product.setPrice(rs.getDouble("price"));
                    product.setPimg(rs.getString("pimg"));
                    product.setColor(rs.getString("color"));
                    product.setCapacity(rs.getString("capacity"));
                }
            }
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        }
        return product;
    }

}
