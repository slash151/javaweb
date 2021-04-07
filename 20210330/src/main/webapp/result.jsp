<%--
  Created by IntelliJ IDEA.
  User: msi
  Date: 2021/3/30
  Time: 上午 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>result</title>
</head>
<body>
<%
    //设置请求编码
    request.setCharacterEncoding("UTF-8");
    //获取请求参数
    String name = request.getParameter("name");
    String pwd = request.getParameter("pwd");
    //模拟校验（zs,123）
    if ("zs".equals(name) && "123".equals(pwd)) {
        request.setAttribute("name", name);
        //请求转发
        request.getRequestDispatcher("home.jsp").forward(request, response);
    } else {
        session.setAttribute("info","用户名或密码错误");
        response.sendRedirect("index.jsp");
    }
%>
</body>
</html>
