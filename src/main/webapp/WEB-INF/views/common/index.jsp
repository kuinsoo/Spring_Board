<%--
  Created by IntelliJ IDEA.
  User: Mr.KKu
  Date: 2018-11-13
  Time: 오전 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index</title>
    <link rel="stylesheet" href="css/commons.css">
</head>
<body>
<h2 class="kku-textCenter">안녕하세요.</h2>

<form method="post" action="/searchUser">
    <table class="kku-Tablecenter">
        <tr>
            <th>
                <input type="text" name="mem_id" value="brown"/>
            </th>
        </tr>
        <tr>
            <th>
                <input type="password" name="mem_pass" value="1" />
            </th>
        </tr>
        <tr>
            <th>
                <input type="submit" value="전송">
            </th>
        </tr>
    </table>
</form>
</body>
</html>
