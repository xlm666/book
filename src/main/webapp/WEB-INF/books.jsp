<%--
  Created by IntelliJ IDEA.
  User: 醒了吗
  Date: 2021/12/11
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>books</title>
    <c:if test="${sessionScope.Users!=null}">
        <link href="${pageContext.servletContext.contextPath}/css/top_login.css" type="text/css" rel="stylesheet">
    </c:if>
    <c:if test="${sessionScope.Users==null}">
        <link href="${pageContext.servletContext.contextPath}/css/top.css" type="text/css" rel="stylesheet">
    </c:if>
    <link href="${pageContext.servletContext.contextPath}/css/frame.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath}/css/homepage.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath}/css/bottom.css" type="text/css" rel="stylesheet">
</head>
<body>
<!-- top -->
<div class="top">
    <%@include file="../inc/header.jsp"%>
</div>
<!-- 书籍标签 -->
<div class="book-tags">
				<span class="book-type-tags">
                    <c:forEach items="${sessionScope.categoriesList}" var="c">
                        <a class="post-tag" href="${pageContext.servletContext.contextPath}/categories?categoriesId=${c.categoriesId}&pageIndex=1">${c.categoriesName}</a>
                    </c:forEach>
<%--					<a class="post-tag" href="#">JavaScript</a>--%>
<%--                    <a class="post-tag" href="#">机器学习</a>--%>
<%--                    <a class="post-tag" href="#">Java</a>--%>
<%--                    <a class="post-tag" href="#">算法</a>--%>
<%--                    <a class="post-tag" href="#">数学</a>--%>
<%--					<a class="post-tag" href="#">C语言</a>--%>
<%--                    <a class="post-tag" href="#">Linux</a>--%>
				</span>
</div>
<!-- 书籍展示 -->
<div class="home-left">
    <div class="books">
        <div class="book-header">
            <h4>

                <form action="exportExcel" method="get">
                    <a href="#">热门图书</a>
                    <button type="submit">导出图书</button>
                </form>
            </h4>

        </div>

        <!-- 书籍详情 -->
        <ul class="book-items">
            <c:forEach var="b" items="${requestScope.pageBean.list}">
                <li class="book-item">
                    <div class="book-img">
                        <a href="${pageContext.servletContext.contextPath}/book?id=${b.bookId}"><img alt="#" src="${pageContext.servletContext.contextPath}/img/homepage/${b.bookImg}"></a>
                    </div>
                    <div class="book-info">
                        <h4>
                            <a href="${pageContext.servletContext.contextPath}/book?id=${b.bookId}">${b.bookName}</a>
                        </h4>
                        <div class="author">
                            <span>${b.bookAuthor}</span> <br> <span>${b.bookTranslators} 译</span>
                        </div>
                    </div>
                </li>
            </c:forEach>

        </ul>
        <c:if test="${requestScope.state.equals('bookList')}">
            <div class="books-more">
                <a href="${pageContext.servletContext.contextPath}/bookList?pageIndex=${requestScope.pageBean.pageNum>1?requestScope.pageBean.pageNum-1:requestScope.pageBean.pageNum}"><span>上一页</span> </a>
                <span>${requestScope.pageBean.pageNum}</span>
                <a href="${pageContext.servletContext.contextPath}/bookList?pageIndex=${requestScope.pageBean.pageNum+1>requestScope.pageBean.totalPage?requestScope.pageBean.totalPage:requestScope.pageBean.pageNum+1}">
                    <span>下一页</span>
                </a>
            </div>
        </c:if>
        <c:if test="${requestScope.state.equals('categories')}">
            <div class="books-more">
                <a href="${pageContext.servletContext.contextPath}/categories?categoriesId=${categoriesId}&pageIndex=${requestScope.pageBean.pageNum>1?requestScope.pageBean.pageNum-1:requestScope.pageBean.pageNum}"><span>上一页</span> </a>
                <span>${requestScope.pageBean.pageNum}</span>
                <a href="${pageContext.servletContext.contextPath}/categories?categoriesId=${categoriesId}&pageIndex=${requestScope.pageBean.pageNum+1>requestScope.pageBean.totalPage?requestScope.pageBean.totalPage:requestScope.pageBean.pageNum+1}">
                    <span>下一页</span>
                </a>
            </div>
        </c:if>
        <c:if test="${requestScope.state.equals('search')}">
            <div class="books-more">
                <a href="${pageContext.servletContext.contextPath}/searchBookList?pageIndex=${requestScope.pageBean.pageNum>1?requestScope.pageBean.pageNum-1:requestScope.pageBean.pageNum}"><span>上一页</span> </a>
                <span>${requestScope.pageBean.pageNum}</span>
                <a href="${pageContext.servletContext.contextPath}/searchBookList?pageIndex=${requestScope.pageBean.pageNum+1>requestScope.pageBean.totalPage?requestScope.pageBean.totalPage:requestScope.pageBean.pageNum+1}">
                    <span>下一页</span>
                </a>
            </div>
        </c:if>

    </div>
    <div class="bottom">
        <div class="footer">
            <%@include file="../inc/footer.jsp"%>
        </div>
    </div>
    <!-- ********************************************************************************** -->
</div>
</body>
</html>