<%--
  Created by IntelliJ IDEA.
  User: 醒了吗
  Date: 2021/12/11
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>login</title>
    <link href="${pageContext.servletContext.contextPath}/css/frame.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath}/css/top.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath}/css/login.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath}/css/bottom.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery-1.12.4.min.js"></script>
<%--    <script type="text/javascript">--%>
<%--        function checkForm()--%>
<%--        {--%>
<%--            if (CheckName()&&CheckPwd()){return true;}--%>
<%--            return false;--%>
<%--        }--%>
<%--        function CheckName()--%>
<%--        {--%>
<%--            var name=document.loginForm.userName;--%>
<%--            if (name.value.length==0)--%>
<%--            {--%>
<%--                window.alert("用户名不能为空！");--%>
<%--                name.focus();--%>
<%--                return false;--%>
<%--            }--%>
<%--            for (var i=0;i<name.value.length;i++)--%>
<%--            {--%>
<%--                var xiaoxie=name.value.toLowerCase().charAt(i);--%>
<%--                if ((!(xiaoxie>='0' && xiaoxie<='9')) && (!(xiaoxie>='a' && xiaoxie <='z')))--%>
<%--                {     window.alert("用户名只能由字母和数字组成！");--%>
<%--                    name.select();--%>
<%--                    return false;--%>
<%--                }--%>
<%--            }--%>
<%--            return true;--%>
<%--        }--%>
<%--        function CheckPwd()--%>
<%--        {--%>
<%--            var pwd=document.loginForm.userPassword;--%>
<%--            if (pwd.value.length==0)--%>
<%--            {--%>
<%--                window.alert("密码不能为空！");--%>
<%--                pwd.focus();--%>
<%--                return false;--%>
<%--            }--%>
<%--            if (pwd.value.length<6)--%>
<%--            {--%>
<%--                window.alert("密码长度不能小于6位！");--%>
<%--                pwd.select();--%>
<%--                return false;--%>
<%--            }--%>
<%--            return true;--%>
<%--        }--%>
<%--    </script>--%>
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
    <form  name="form1" method="post" action="${pageContext.servletContext.contextPath}/user/login" >
        <div class="login_title">
            <h4>会员登录</h4>
        </div>

        <div class="info">
            <p align="center">
                账号：&nbsp&nbsp&nbsp<input type="text" name="userName" size="25" id="userName"
                                         placeholder="账号" class="inputinfo"/>
            </p>
        </div>
        </br>

        <div class="info">
            <p align="center">
                密码：&nbsp&nbsp&nbsp<input type="password" name="userPassword" size="25"
                                         placeholder="密码" class="inputinfo" id="userPassword" />
            </p>
        </div>
        <center><span style="color: #ff0000">${sessionScope.loginMsg}</span></center>
<%--        <div class="checkbox">--%>
<%--            <input type="checkbox" id="remember"checked />--%>
<%--            <label>下次自动登录</label>--%>
<%--        </div>--%>
        <div class="btn-login">
            <p>
                <button type="button" class="login_btn" id="login" onclick="check()">
                    登录
                </button>
            </p>
        </div>

        <div class="help">
            <p>
                您还没有账号？请点击这里 <b> <a
                    href="${pageContext.servletContext.contextPath}/user/register">注册新账号</a>
            </b>
            </p>

            <p>
                您忘记密码了？请点击这里 <b> <a href="${pageContext.servletContext.contextPath}/user/forget">找回密码</a>
            </b>
            </p>

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
<!--账号密码验证-->
<script type="text/javascript">
    function check(){
        /*非空*/
        if(form1.userName.value==""){
            alert("账号不能为空");
            form1.userName.focus();
            return false;
        }

        /*含非数字、首字母为/^[a-zA-Z0-9]{6,11}$*/
        var number=/^[a-zA-Z0-9]{6,11}$/;
        var objExp1=new RegExp(number);
        if(objExp1.test(form1.userName.value)==false){
            alert("账号只能6到11位（字母，数字）");
            form1.userName.focus();
            return false;
        }

        /*账号小于6位数*/
        if(form1.userName.value.length < 6){
            alert("账号位数过小，请输入6-11位数字或字母");
            form1.userName.focus();
            return false;
        }

        /*账号大于11位数*/
        if(form1.userName.value.length > 11){
            alert("账号位数过大，请输入6-11位数字或字母");
            form1.userName.focus();
            return false;
        }

        /*密码非空*/
        if(form1.userPassword.value==""){
            alert("密码不能为空");
            form1.userPassword.focus();
            return false;
        }

        /*密码含有非符号、字母、数字以外字*/
        var illegal=/^[0-9a-zA-Z!~@#$%^&*()_+`\-={}:";'<>?,.\/]*$/g;
        var objExp2=new RegExp(illegal);
        if(objExp2.test(form1.userPassword.value)==false){
            alert("密码含有非法字符");
            form1.userPassword.focus();
            return false;
        }

        /*密码小于6位数*/
        if(form1.userPassword.value.length < 6){
            alert("密码位数过小，请输入6-16位数字");
            form1.userPassword.focus();
            return false;
        }

        /*密码大于16位数*/
        if(form1.userPassword.value.length > 16){
            alert("密码位数过大，请输入6-16位数字");
            form1.userPassword.focus();
            return false;
        }
        form1.submit();
    }
</script>

<%--<script type="text/javascript">--%>
<%--$("#login").click(function (){--%>
<%--    var userName=$("#userName").val();--%>
<%--    var userPassword=$("#userPassword").val();--%>
<%--    var remember=$("#remember").val();--%>
<%--    $.post("${pageContext.servletContext.contextPath}/user/login",{--%>
<%--        userName:userName,--%>
<%--        userPassword:userPassword,--%>
<%--        remember:remember--%>
<%--    },function (data){--%>
<%--        if (data==0){--%>
<%--            alert("账号或密码错误")--%>

<%--        }else if (data==1) {--%>
<%--            alert("登录成功")--%>
<%--            window.location.href="${pageContext.servletContext.contextPath}/index";--%>
<%--        }else if(data==2){--%>
<%--            alert("账号为空")--%>
<%--        }else if (data==3){--%>
<%--            alert("密码为空")--%>
<%--        }--%>

<%--    })--%>

<%--})--%>
<%--</script>--%>