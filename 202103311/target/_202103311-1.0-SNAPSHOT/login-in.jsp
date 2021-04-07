<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2021/3/30
  Time: 9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>登录表单</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cube.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/iconfont.js"></script>
    <script src="js/style.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    for (Cookie cookie: cookies) {
        if (cookie.getName().equals("autologin")){
            response.sendRedirect("index.jsp");
        }
    }
%>
<nav>
    <div>
        <a href="#"><span class="iconfont icon-pingguo"></span></a>
        <a href="">Mac</a>

        <a href="">iPad</a>
        <a href="">iPhone</a>
        <a href="">Watch</a>
        <a href="#">Music</a>
        <a href="#">技术支持</a>
        <a href="#"><span class="iconfont icon-iconsreach"></span></a>
        <a href="#"><span class="iconfont icon-bag"></span></a>
    </div>
</nav>
<div id="">
    <h1 class="sign-in-font">Please sign in.</h1>
</div>
<div class="user-info">
    <form action="index.jsp" method="post">
        <div class="form-group">
            <input type="text" class="form-control input" name="username" placeholder="Apple ID"
                   style="font-size: 15px;">
        </div>
        <div class="form-group">
            <input type="password" class="form-control input" name="password" placeholder="Password"
                   style="font-size: 15px;">
        </div>
        <div>
            <input type="checkbox" name="autologin">七天免登录
        </div>
        <div style="margin-bottom: 30px;">
					<span style="font-size: 10px;width: 400px; margin-bottom: 30px;">Your Apple ID is the email address you use to sign in to <br/> iTunes, App Store, and
						iCloud.</span>
        </div>
        <button type="submit" class="btn btn-primary btnadpt submit" style="font-size: 20px;">Sign In</button>
    </form>
</div>
</body>
</html>
