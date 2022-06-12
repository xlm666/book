<%--
  Created by IntelliJ IDEA.
  User: 醒了吗
  Date: 2021/12/5
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<!-- loog -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="top-logo">
    <a href=""><img alt="logo" src="${pageContext.servletContext.contextPath}/img/homepage/logo.jpg"> </a>
    <a href="">书评网</a>
</div>
<!-- 第一个ul -->
<ul class="top-nav-primary">
    <li><a href="${pageContext.servletContext.contextPath}/bookList?pageIndex=1">图书</a></li>
    <li><a href="${pageContext.servletContext.contextPath}/article">交流</a></li>
    <li><a href="${pageContext.servletContext.contextPath}/index">首页</a></li>
    <!-- 搜索框 -->
    <li class="top-serarch">
        <form action="searchBookList?pageIndex=1" method="post">
            <input type="search" name="content" placeholder="请输入书名搜索:" class="key">
            <button type="submit" class="go btn btn-link">
                <img alt="search" src="${pageContext.servletContext.contextPath}/img/homepage/search-icon.jpg">
            </button>

        </form>
    </li>
    <span>${msg}</span>
</ul>
<!-- 第二个ul 注册登录 -->
<ul class="top-nav-secondary">
    <c:if test="${sessionScope.Users.userId!=null}">
        <li class="top-li3"><a href="${pageContext.servletContext.contextPath}/user/personal"><img alt="#"
                                             src="${pageContext.servletContext.contextPath}/img/personal/gt3.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我的</a>
        </li>
        <li class="top-li5"><a
                href="${pageContext.servletContext.contextPath}/user/logOut">注销</a></li>
    </c:if>
    <c:if test="${sessionScope.Users.userId==null}">
        <li class="top-register"><a
                href="${pageContext.servletContext.contextPath}/user/register">新用户注册</a></li>
        <li><a href="${pageContext.servletContext.contextPath}/user/login">登录</a>
        </li>
    </c:if>

</ul>

