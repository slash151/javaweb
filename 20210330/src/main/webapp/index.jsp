<%--
  Created by IntelliJ IDEA.
  User: msi
  Date: 2021/3/30
  Time: 上午 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>20210330</title>
</head>
<body>
<%
    String info = (String) session.getAttribute("info");
%>
<form action="" method="post">
    <table border="0" align="center">
        <tr>
            <td>
                <label for="name">用户名</label>
            </td>
            <td><input type="text"
                       name="name" id="name"></td>
        </tr>
        <tr>
            <td>
            <label for="pwd">密码</label>
            </td>
            <td><input
                    type="password" name="pwd" id="pwd"></td>
        </tr>
        <tr>
            <td>信息来源</td>
            <td>
                <input type="checkbox" name="channel"
                       value="报刊">报刊
                <input type="checkbox" name="channel"
                       value="网络">网络
                <input type="checkbox" name="channel"
                       value="朋友推荐"> 朋友推荐
                <input type="checkbox" name="channel"
                       value="电视"> 电视
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit">
            </td>
        </tr>
        <tr>
            <td></td>
            <td><%=info%>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
