<%--
  Created by IntelliJ IDEA.
  User: 醒了吗
  Date: 2021/12/13
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8" />
    <title>forget</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/public.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/proList.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/forget.css" />
</head>
<body>
<!----------------------------------------order------------------>
<div class="order cart">
    <!-----------------logo------------------->
    <div class="forCon">
        <p><a href="${pageContext.servletContext.contextPath}/user/login">返回</a><h1 align="center">重置密码</h1>
        <center><span  style="color: red">${forgetMsg}</span></center>
        </p>
        <div class="formCon">
            <form name="form2"  action="${pageContext.servletContext.contextPath}/user/forget" method="post" class="one">
                <label></label><input type="text" value="" placeholder="请输入账号" name="userName"><br />
                <label></label><input type="text" value="" placeholder="请输入邮箱" name="userEmail"><br />
                <label></label><input type="password" value="" name="newPassword1" placeholder="  请输入新密码"><br />
                <label></label><input type="password" value="" name="newPassword2" placeholder="  重复新密码"><br />
                <input type="text" value="" placeholder="请输入验证码"name="code"><br />
                <img id="myImage" src="${pageContext.servletContext.contextPath}/code" href="javascript:void(0)" onclick="myReload()">
                <label>看不清，点一下</label>
                <br>
                <script type="text/javascript">
                    function myReload() {
                        document.getElementById("myImage").src ="${pageContext.servletContext.contextPath}/code?"+Math.random();
                    }
                </script>
                <label></label><input type="button" value="提交"  onclick="on_submit()">
            </form>
        </div>
    </div>
</div>

<script src="${pageContext.servletContext.contextPath}/js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.servletContext.contextPath}/js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.servletContext.contextPath}/js/pro.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
<script type="text/javascript">
    function on_submit() {
        //验证数据的合法性
        if (form2.userName.value == "") {
            alert("用户名不能为空，请输入用户名！");
            return false;
        }

        /*含非数字、首字母为/^[a-zA-Z0-9]{6,11}$*/
        var number=/^[a-zA-Z0-9]{6,11}$/;
        var objExp1=new RegExp(number);
        if(objExp1.test(form2.userName.value)==false){
            alert("账号只能6到11位（字母，数字）");
            form2.userName.focus();
            return false;
        }

        if (form2.newPassword1.value == "") {
            alert("用户密码不能为空，请输入密码！");
            form2.newPassword1.focus();
            return false;
        }

        /*密码含有非符号、字母、数字以外字*/
        var illegal=/^[0-9a-zA-Z!~@#$%^&*()_+`\-={}:";'<>?,.\/]*$/g;
        var objExp2=new RegExp(illegal);
        if(objExp2.test(form2.newPassword1.value)==false){
            alert("密码含有非法字符");
            form2.newPassword1.focus();
            return false;
        }

        if (form2.newPassword2.value == "") {
            alert("用户确认密码不能为空，请输入密码！");
            form2.newPassword2.focus();
            return false;
        }

        /*密码含有非符号、字母、数字以外字*/
        var illegal=/^[0-9a-zA-Z!~@#$%^&*()_+`\-={}:";'<>?,.\/]*$/g;
        var objExp2=new RegExp(illegal);
        if(objExp2.test(form2.newPassword2.value)==false){
            alert("密码含有非法字符");
            form2.newPassword2.focus();
            return false;
        }

        if (form2.newPassword1.value != form2.newPassword2.value) {
            alert("密码与确认密码不同");
            form2.newPassword1.focus();
            return false;
        }
        if (form2.userEmail.value.length != 0) {
            for (i = 0; i < form2.userEmail.value.length; i++)
                if (form2.userEmail.value.charAt(i) == "@")
                    break;
            if (i == form2.userEmail.value.length) {
                alert("非法EMail地址！");
                form2.userEmail.focus();
                return false;
            }
        } else {
            alert("请输入Email！");
            form2.userEmail.focus();
            return false;
        }
        form2.submit()
    }
</script>

