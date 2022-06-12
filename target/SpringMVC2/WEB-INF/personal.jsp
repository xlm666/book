<%--
  Created by IntelliJ IDEA.
  User: 醒了吗
  Date: 2021/12/5
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="utf-8" />
    <title>个人信息</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/public.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/mygrxx.css" />
    <link href="${pageContext.servletContext.contextPath}/css/frame.css" type="text/css" rel="stylesheet">
    <c:if test="${sessionScope.Users!=null}">
        <link href="${pageContext.servletContext.contextPath}/css/top_login.css" type="text/css" rel="stylesheet">
    </c:if>
    <c:if test="${sessionScope.Users==null}">
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
            <div>
                <h4><a href="${pageContext.servletContext.contextPath}/user/personal">个人信息</a></h4>
                <h4><a href="${pageContext.servletContext.contextPath}/user/editPassword">修改密码</a></h4>
            </div>
        </div>
        <div class="you fl">
            <h2>个人信息</h2>
            <div class="gxin">

                <div class="tx"><a href="#"><img src="${pageContext.servletContext.contextPath}/img/txImg/${Users.userImg}"/><p id="avatar">修改头像</p></a></div>
                <div class="xx">
                    <h3 class="clearfix"><strong class="fl">基础资料</strong><a href="#" class="fr" id="edit1">编辑</a></h3>
                    <div>姓名：${sessionScope.Users.userNickname}</div>
                    <div>年龄：${sessionScope.Users.userAge}</div>
                    <div>性别：${sessionScope.Users.userSex}</div>
<%--                    <h3>高级设置</h3>--%>
<%--                    <div><span class="fl">账号地区：中国</span><a href="#" class="fr" id="edit2">修改</a></div>--%>
                </div>
            </div>
        </div>
    </div>
</div>
<!--遮罩-->
<div class="mask"></div>
<!--编辑弹框-->
<div class="bj">
    <div class="clearfix"><a href="#" class="fr gb"><img src="../img/personal/icon4.png"/></a></div>
    <h3>编辑基础资料</h3>
    <span style="color: red" ><strong>${personalMsg}</strong></span>
    <form action="${pageContext.servletContext.contextPath}/user/personal" method="post" name="form1">
        <p><label>姓名：</label><input type="text" name="userNickname" placeholder="${userNickname}" /></p>
        <p><label>年龄：</label><input type="text" name="userAge" id="userAge" /></p>
        <p>
            <label>性别：</label>
            <span><input type="radio" name="userSex" value="男" />男</span>
            <span><input type="radio"  name="userSex" value="女"/>女</span>
        </p>
        <div class="bc">
            <input type="button" value="保存" onclick="check()" />
            <input type="button" value="取消" />
        </div>
    </form>
</div>

<!--遮罩-->
<div class="mask"></div>
<!--修改头像-->
<div class="avatar">
    <div class="clearfix"><a href="#" class="fr gb"><img src="../img/personal/icon4.png"/></a></div>
    <h3>修改头像</h3>
    <form action="${pageContext.servletContext.contextPath}/user/file" method="post" enctype="multipart/form-data">
        <h4>请上传图片</h4>
        <input type="file" value="上传头像" name="file"/>
        <p>jpg或png，大小不超过10M</p>
        <input type="submit" value="提交" />
    </form>
</div>

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
    function check(){
        /*非空*/
        if(form1.userNickname.value==""){
            alert("昵称不能为空");
            form1.userNickname.focus();
            return false;
        }
        if (form1.userAge.value==""){
            alert("年龄不能为空");
            form1.userAge.focus();
            return false;
        }

        var obj = document.getElementById("userAge");
        if (obj.value<0 || obj.value>100||isNaN(obj.value)==true){
            alert("年龄不合法");
            form1.userAge.focus();
            return false;
        }

        if (form1.userSex.value==""){
            alert("性别不能为空");
            form1.userSex.focus();
            return false;
        }


        if(form1.userNickname.value.length < 1){
            alert("昵称过小，请输入1-10位字符");
            form1.userNickname.focus();
            return false;
        }


        if(form1.userNickname.value.length > 10){
            alert("昵称过大，请输入1-10位字符");
            form1.userNickname.focus();
            return false;
        }
        form1.submit();
    }
    function sub(){

    }
</script>
