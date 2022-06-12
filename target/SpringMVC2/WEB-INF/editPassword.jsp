<%--
  Created by IntelliJ IDEA.
  User: 醒了吗
  Date: 2021/12/12
  Time: 9:40
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="utf-8" />
    <title>修改密码</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/public.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/mygrxx.css" />
    <link href="${pageContext.servletContext.contextPath}/css/frame.css" type="text/css" rel="stylesheet">
    <c:if test="${sessionScope.Users.userId!=null}">
        <link href="${pageContext.servletContext.contextPath}/css/top_login.css" type="text/css" rel="stylesheet">
    </c:if>
    <c:if test="${sessionScope.Users.userId==null}">
        <link href="${pageContext.servletContext.contextPath}/css/top.css" type="text/css" rel="stylesheet">
    </c:if>
    <link href="${pageContext.servletContext.contextPath}/css/homepage.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath}/css/bottom.css" type="text/css" rel="stylesheet">
</head>
<body>
<div class="top">
    <%@include file="../inc/header.jsp"%>
</div>
<!------------------------------Bott------------------------------>
<div class="Bott">
    <div class="wrapper clearfix">
        <div class="zuo fl">
<%--            <h3>--%>
<%--                <a href="#"><img src="../img/personal/tx.png"/></a>--%>
<%--            </h3>--%>
            <div>
                <h4><a href="${pageContext.servletContext.contextPath}/user/personal">个人信息</a></h4>
                <h4><a href="${pageContext.servletContext.contextPath}/user/editPassword">修改密码</a></h4>
            </div>
        </div>
        <div class="you fl">
            <h2>修改密码</h2>
            <form  class="remima" name="form2" action="${pageContext.servletContext.contextPath}/user/editPassword" method="post">
                <span style="color: red">${editPasswordMsg}</span>
                <p><span>原密码：</span><input type="text" id="oldPassword" name="oldPassword"/></p>
                <p class="op">输入原密码</p>
                <p><span>新密码：</span><input type="password" id="newPassword1" name="newPassword1" /></p>
                <p class="op">6-16 个字符，不能包含非法字符</p>
                <p><span>重复新密码：</span><input type="password" id="newPassword2" name="newPassword2"/></p>
                <p class="op">请再次输入密码</p>
                <p><span>验证码：</span><input type="text" id="code" name="code" /><a href="javascript:void(0)" onclick="myReload()"><img  id="myImage" src="${pageContext.servletContext.contextPath}/code" alt="" /></a></p>
                <p class="op">按右图输入验证码，不区分大小写</p>
                <p class="op"><input  type="button" value="提交"  onclick="on_submit()"/></p>
            </form>
        </div>
    </div>
    <script type="text/javascript">
        function myReload() {
            document.getElementById("myImage").src ="${pageContext.servletContext.contextPath}/code?"+Math.random();
        }
    </script>
</div>
<!--遮罩-->
<div class="mask"></div>
<!--修改头像-->
<%--<div class="avatar">--%>
<%--    <div class="clearfix"><a href="#" class="fr gb"><img src="../img/personal/icon4.png"/></a></div>--%>
<%--    <h3>修改头像</h3>--%>
<%--    <form action="#" method="get">--%>
<%--        <h4>请上传图片</h4>--%>
<%--        <input type="button" value="上传头像" />--%>
<%--        <p>jpg或png，大小不超过2M</p>--%>
<%--        <input type="submit" value="提交" />--%>
<%--    </form>--%>
<%--</div>--%>

<!--返回顶部-->
<!--footer-->
<div class="bottom">
    <div class="footer">
        <%@include file="../inc/footer.jsp"%>
    </div>
</div>
<script src="${pageContext.servletContext.contextPath}/js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.servletContext.contextPath}/js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.servletContext.contextPath}/js/user.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
<script type="text/javascript">
    function on_submit() {
        //验证数据的合法性
        if (form2.oldPassword.value == "") {
            alert("原密码不能为空，请输入原密码！");
            return false;
        }
        /*密码小于6位数*/
        if(form2.oldPassword.value.length < 6){
            alert("新密码位数过小，请输入6-16位数字");
            form2.oldPassword.focus();
            return false;
        }

        /*密码大于16位数*/
        if(form2.oldPassword.value.length > 16){
            alert("新密码位数过大，请输入6-16位数字");
            form2.oldPassword.focus();
            return false;
        }

        if (form2.newPassword1.value == "") {
            alert("新密码不能为空，请输入密码！");
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
        /*密码小于6位数*/
        if(form2.newPassword1.value.length < 6){
            alert("新密码位数过小，请输入6-16位数字");
            form2.newPassword1.focus();
            return false;
        }

        /*密码大于16位数*/
        if(form2.newPassword1.value.length > 16){
            alert("新密码位数过大，请输入6-16位数字");
            form2.newPassword1.focus();
            return false;
        }
        /*密码小于6位数*/
        if(form2.newPassword2.value.length < 6){
            alert("确认密码位数过小，请输入6-16位数字");
            form2.newPassword2.focus();
            return false;
        }

        /*密码大于16位数*/
        if(form2.newPassword2.value.length > 16){
            alert("确认密码位数过大，请输入6-16位数字");
            form2.newPassword2.focus();
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

        if (form2.newPassword2.value != form2.newPassword1.value) {
            alert("密码与确认密码不同");
            form2.newPassword1.focus();
            return false;
        }
        form2.submit()
    }
</script>

