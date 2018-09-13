<%--
  Created by IntelliJ IDEA.
  User: CaiShunfeng
  Date: 2018/9/12
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>功能调用</title>
    <script src="/js/jquery-3.3.1.min.js"></script>
</head>
<body>
    <div align="center">
        <h1>后台信息展示</h1>
        <form action="/AC/methodOne.do" method="get" >
            <table align="center">
               <td><input type="submit" value="提交"></td>
            </table>
        </form>
    </div>
    <div align="center">
        <h1>实体类接收参数</h1>
        <form action="/AC/methodThree.do" method="post" >
            <table align="center">
                <tr>
                    <td>名字：<input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td>年龄：<input type="text" name="age"/></td>
                </tr>
                <tr>
                    <td>生日：<input type="text" name="birth"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="提交"></td>
                </tr>
            </table>
        </form>
    </div>
    <div align="center">
        <h1>包装多个实体类接收参数</h1>
        <form action="/AC/methodFore.do" method="post">
            <table align="center">
                <tr>
                    <td>名字：<input type="text" name="user.name"/></td>
                </tr>
                <tr>
                    <td>年龄：<input type="text" name="user.age"/></td>
                </tr>
                <tr>
                    <td>生日：<input type="text" name="user.birth"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="提交"></td>
                </tr>
            </table>
        </form>
    </div>
    <div align="center">
        <h1>批量参数的接收</h1>
        <form action="/AC/methodFive.do" method="post">
            <table align="center">
                <tr>
                    <td>名字：<input type="text" name="users[0].name"/></td>
                </tr>
                <tr>
                    <td>年龄：<input type="text" name="users[0].age"/></td>
                </tr>
                <tr>
                    <td>生日：<input type="text" name="users[0].birth"/></td>
                </tr>
                <tr>
                    <td>名字：<input type="text" name="users[1].name"/></td>
                </tr>
                <tr>
                    <td>年龄：<input type="text" name="users[1].age"/></td>
                </tr>
                <tr>
                    <td>生日：<input type="text" name="users[1].birth"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="提交"></td>
                </tr>
            </table>
        </form>
    </div>
    <div align="center">
        <h1>AJXA发送</h1>
        <script>
            function requestMethod (){
                const user = {
                    name: 'Schuyler',
                    age: 23
                };
                $.ajax({
                    type: "POST",
                    url: "/AC/methodJson.do",
                    data: user,
                    success: function (msg) {
                        alert("name: " + msg.name + ",age: " + msg.age);
                    }
                });
            }
        </script>
        <input type="button" value="我按" onclick="requestMethod()"/>
    </div>
</body>
</html>
