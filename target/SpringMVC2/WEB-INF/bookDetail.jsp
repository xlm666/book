<%--
  Created by IntelliJ IDEA.
  User: 醒了吗
  Date: 2021/12/11
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>bookDetail</title>
    <link href="${pageContext.servletContext.contextPath}/css/frame.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath}/css/top.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath}/css/bookDetail.css" type="text/css"
          rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath}/css/bottom.css" type="text/css" rel="stylesheet">
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
    <div id="big">
        <div id="imgDiv">
            <div class="book-bian">
                <img id="bookLogo" src="${pageContext.servletContext.contextPath}/img/homepage/${requestScope.Book.bookImg}" />
            </div>
            <div id="tuiDiv">
                <a class="bookTui" href="#"> <span class="number">96</span><br />
                    <span class="text">推荐</span>
                </a>
            </div>

            <div class="buBook"></div>

            <div id="tuiDiv">
                <a class="bookTui" href="#"> <span class="number">☆</span><br />
                    <span class="text">收藏</span>
                </a>
            </div>

            <div class="buBook"></div>


            <div id="tuiDiv2">
                <a class="bookTui" href="#"> <span class="number2">99.9K</span><br />
                    <span class="text2">阅读</span>
                </a>
            </div>
        </div>

        <div class="buchong"></div>


        <div id="detailDiv">
            <div id="title">
                <h2 id="bookName">${requestScope.Book.bookName}</h2>
            </div>

            <div class="author">
                <span>${requestScope.Book.bookAuthor}(作者)</span> <span id="fanyi">${requestScope.Book.bookTranslators}(译者)
						</span>
            </div>


            <div class="introduce">
                作者简介：<br>
                ${requestScope.Book.bookAuthorIntroduce}


            </div>


            <div class="content-main">
                【主要内容】<br />
                ${requestScope.Book.bookContent}
            </div>

            <div id="share-logo"></div>


        </div>


        <div id="tese">



        </div>

        <div id="like">
            <h3>大家也喜欢</h3>
            <div id="like-line"></div>
            <div class="books">
                <div class="border-photo">
                    <img src="${pageContext.servletContext.contextPath}/img/bookDetail/1.jpg">
                </div>
                <div class="book-name">
                    <a href="">枕边算法书</a>
                </div>
                <div class="book-author">林栢濬</div>
                <div class="book-author">崔盛一 译</div>
            </div>

            <div class="books-buchong"></div>

            <div class="books">
                <div class="border-photo">
                    <img src="${pageContext.servletContext.contextPath}/img/bookDetail/2.png">
                </div>
                <div class="book-name">
                    <a href="#">算法新解</a>
                </div>
                <div class="book-author">刘新宇</div>


            </div>
            <div class="books-buchong"></div>


            <div class="books">
                <div class="border-photo">
                    <img src="${pageContext.servletContext.contextPath}/img/bookDetail/3.jpg">
                </div>
                <div class="book-name">
                    <a href="#">算法程序挑战</a>
                </div>
                <div class="book-author">渡部有隆</div>
                <div class="book-author">支鹏浩 译</div>

            </div>
            <div class="books-buchong"></div>



            <div class="books">
                <div class="border-photo">
                    <img src="${pageContext.servletContext.contextPath}/img/bookDetail/4.jpg">
                </div>
                <div class="book-name">
                    <a href="">垃圾回收的算法与实现</a>
                </div>
                <div class="book-author">中村成洋</div>
                <div class="book-author">丁灵 译</div>

            </div>
            <div class="books-buchong"></div>


            <div class="books">
                <div class="border-photo">
                    <img src="${pageContext.servletContext.contextPath}/img/bookDetail/5.jpg">
                </div>
                <div class="book-name">
                    <a href="">算法(第四版)</a>
                </div>
                <div class="book-author">Robert Sedgewick</div>


            </div>


        </div>

        <div class="comment">
            <div class="comment-big">

                <form name="form1" action="${pageContext.servletContext.contextPath}/addComments" method="post" >
                    <textarea placeholder="我来写评论..." name="commentsContent"></textarea>
                    <br />
                    <button class="comment-submit" type="button" onclick="on_submit()">评论</button>
                </form>
                <div class="comment-line"></div>
                <c:forEach var="c" items="${requestScope.comments}">
                    <div class="comment-people">
                        <div class="comment-img">
                            <img src="${pageContext.servletContext.contextPath}/img/txImg/${c.commentsUserImg}">
                        </div>
                        <div class="comment-words">
                            <div><span style="color: #8a6d3b">${c.commentsContent}</span></div>
                            <div>
                                <a href="${pageContext.servletContext.contextPath}/user/personal">${c.commentsUserNickname}</a> 发表于 ${c.commentsDate}
                                <c:if test="${c.commentsUserId==sessionScope.Users.userId}">
                                    <a href="${pageContext.servletContext.contextPath}/deleteComments?commentsId=${c.commentsId}"><span style="color: #0e90d2">删除</span></a>
                                </c:if>

                            </div>
                        </div>

                    </div>

                </c:forEach>
<%--                <c:if test="${requestScope.comments.bookId==requestScope.Book.bookId}">--%>
<%--                    --%>
<%--                </c:if>--%>


            </div>
        </div>
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
    function on_submit(){
        if (form1.commentsContent.value == "") {
            alert("内容不能为空");
            return false;
        }
        if (form1.commentsContent.value.length>20) {
            alert("内容不能超过20位字符");
            return false;
        }
        form1.submit()
    }
</script>