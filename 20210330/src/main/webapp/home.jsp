<%--
  Created by IntelliJ IDEA.
  User: msi
  Date: 2021/3/30
  Time: 上午 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>home</title>
</head>
<body>
<%
    //获取请求中绑定的数据
    String uname = (String) request.getAttribute("name");
%>
<h3>欢迎<%=uname%>
</h3>
</body>
</html>
