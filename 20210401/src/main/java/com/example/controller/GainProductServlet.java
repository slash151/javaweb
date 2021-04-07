package com.example.controller;

import com.example.entity.Product;
import com.example.entity.User;
import com.example.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/GainProduct")
public class GainProductServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF-8");
        String flag = request.getParameter("flag");
        if ("all"==flag) {
            int id = Integer.parseInt(request.getParameter("id"));
            Product product = new UserServiceImpl().gainProduct(id);


            if (product != null) {
                response.sendRedirect("");
            } else {
                response.sendRedirect("");
            }

        }
    }
}
