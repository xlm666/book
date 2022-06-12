<%--
  Created by IntelliJ IDEA.
  User: 醒了吗
  Date: 2021/12/11
  Time: 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>register</title>
    <link href="${pageContext.servletContext.contextPath}/css/frame.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath}/css/top.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath}/css/register.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath}/css/bottom.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery-1.12.4.min.js"></script>
</head>


<body>
<!-- ********************************************************************************** -->
<!-- top -->
<div class="top">
    <%@include file="../inc/header.jsp"%>
</div>

<!-- ********************************************************************************** -->
<!-- middle -->
<div class="middle">
    <form name="form2" method="post" action="${pageContext.servletContext.contextPath}/user/register" >
        <table border="0px" align="center">
            <tr>
                <td></td>
                <td>
                    <h4>新会员注册</h4>
                    <span style="color: #C10000">${registerMsg}</span>
                </td>
            </tr>
            <tr>
                <td align="right"><label>账号：</label></td>
                <td><input type="text" name="userName" size="25" placeholder="账号"
                           class="inputinfo" /></td>
            </tr>
            <tr>
                <td align="right"><label>邮箱地址：</label></td>
                <td><input type="text" name="userEmail" size="25" placeholder="邮箱"
                           class="inputinfo" /></td>
            </tr>
            <tr>
                <td align="right"><label>密码：</label></td>
                <td><input type="password" name="password1" size="25"
                           placeholder="密码" class="inputinfo" /></td>
            </tr>
            <tr>
                <td align="right"><label>确认密码：</label></td>
                <td><input type="password" name="password2" size="25"
                           placeholder="确认密码" class="inputinfo" /></td>
            </tr>
            <tr>
                <td align="right"><label>验证码：</label></td>
                <td><input type="text" name="code" size="25"
                           placeholder="验证码" class="inputinfo" /></td>
            </tr>
            <tr>
                <td></td>
                <td><img  id ="myImage" src="${pageContext.servletContext.contextPath}/code" alt=""
                         width="200px" /><a  style="color:#999;" href="javascript:void(0)" onclick="myReload()">看不清，换一张</a></td>
            </tr>
<%--            局部刷新--%>
            <script type="text/javascript">
                function myReload() {
                    document.getElementById("myImage").src ="${pageContext.servletContext.contextPath}/code?"+Math.random();
                }
            </script>

            <tr>
                <td></td>
                <td><input type="button" value="注册" class="register_btn" onclick="on_submit()"></td>
            </tr>
            <tr>
                <td></td>
                <td><p>
                    已有账号，请点击这里<b><a
                        href="${pageContext.servletContext.contextPath}/user/login"
                        class="login-a">&nbsp;&nbsp;登录</a></b>
                </p></td>
            </tr>
        </table>
    </form>
</div>
<!-- ********************************************************************************** -->
<!-- bottom -->
<div class="bottom">
    <div class="footer">
        <%@include file="../inc/footer.jsp"%>
    </div>
</div>
<!-- ********************************************************************************** -->
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

        if (form2.password1.value == "") {
            alert("用户密码不能为空，请输入密码！");
            form2.password1.focus();
            return false;
        }

        /*密码含有非符号、字母、数字以外字*/
        var illegal=/^[0-9a-zA-Z!~@#$%^&*()_+`\-={}:";'<>?,.\/]*$/g;
        var objExp2=new RegExp(illegal);
        if(objExp2.test(form2.password1.value)==false){
            alert("密码含有非法字符");
            form2.password1.focus();
            return false;
        }

        if (form2.password2.value == "") {
            alert("用户确认密码不能为空，请输入密码！");
            form2.password2.focus();
            return false;
        }

        /*密码含有非符号、字母、数字以外字*/
        var illegal=/^[0-9a-zA-Z!~@#$%^&*()_+`\-={}:";'<>?,.\/]*$/g;
        var objExp2=new RegExp(illegal);
        if(objExp2.test(form2.password2.value)==false){
            alert("密码含有非法字符");
            form2.password2.focus();
            return false;
        }

        if (form2.password1.value != form2.password2.value) {
            alert("密码与确认密码不同");
            form2.password1.focus();
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
