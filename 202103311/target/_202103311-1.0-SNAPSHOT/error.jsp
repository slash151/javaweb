<%--
  Created by IntelliJ IDEA.
  User: msi
  Date: 2021/3/31
  Time: 上午 9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page isErrorPage="true" contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>error</title>
</head>
<body>
获取异常
<%=exception.toString()%>
<%=exception.getMessage() %>
</body>
</html>
