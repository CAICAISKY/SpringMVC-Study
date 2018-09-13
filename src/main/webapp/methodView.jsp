<%--
  Created by IntelliJ IDEA.
  User: CaiShunfeng
  Date: 2018/9/12
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MethodOne</title>
</head>
<body>
    <div>
        <h1>信息展示</h1>
        ${message}<br/>
        <h1>实体展示</h1>
        姓名: ${user.name}<br/>
        年龄: ${user.age}<br/>
        生日: ${user.birth}<br/>
    </div>
</body>
</html>
