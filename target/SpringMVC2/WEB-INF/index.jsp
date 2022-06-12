<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>homepage</title>
    <c:if test="${sessionScope.Users.userId!=null}">
        <link href="${pageContext.servletContext.contextPath}/css/top_login.css" type="text/css" rel="stylesheet">
    </c:if>
    <c:if test="${sessionScope.Users.userId==null}">
        <link href="${pageContext.servletContext.contextPath}/css/top.css" type="text/css" rel="stylesheet">
    </c:if>
    <link href="${pageContext.servletContext.contextPath}/css/frame.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath}/css/homepage.css" type="text/css" rel="stylesheet">
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
    <div class="home">

            <!-- 底部推荐文章展示 -->
            <div class="recommend">
                <div class="recommend-header">
                    <h4>
                        <a href="#">推荐文章</a>
                    </h4>
                    <div class="recommend-more">
                        <span> 更多 >> </span>
                    </div>
                </div>
                <!-- 文章列表 -->
                <ul class="recommend-items">
                    <c:forEach var="a" items="${requestScope.ArticleList}">
                        <li class="recommend-item"><a class="article-avatar" href="${pageContext.servletContext.contextPath}/articleDetail?articleId=${a.articleId}"><img
                                alt="#" src="${pageContext.servletContext.contextPath}/img/homepage/xinshu.png"></a>
                            <div class="article-vote">
                                <span class="number">11</span> <br> <span class="text1">推荐</span>
                            </div>
                            <h2 class="article-title">
                                <a href="${pageContext.servletContext.contextPath}/articleDetail?articleId=${a.articleId}">${a.articleTitle}</a>
                            </h2>
                            <div class="article-summary">
                                <div class="text">
                                    <p>${a.articleSubtitle}</p>
                                </div>
                            </div>
                            <div class="article-meta">
                                <a class="article-author">${a.articleAuthor}</a> <span class="time">发表于
									${a.articleDate}</span>
                            </div></li>

                    </c:forEach>

<%--                    <li class="recommend-item"><a class="article-avatar"><img--%>
<%--                            alt="#" src="${pageContext.servletContext.contextPath}/img/homepage/wenzhang1.png"></a>--%>
<%--                        <div class="article-vote">--%>
<%--                            <span class="number">3</span> <br> <span class="text1">推荐</span>--%>
<%--                        </div>--%>
<%--                        <h2 class="article-title">--%>
<%--                            <a href="${pageContext.servletContext.contextPath}/detail">大学只有我这样荒废吗？</a>--%>
<%--                        </h2>--%>
<%--                        <div class="article-summary">--%>
<%--                            <div class="text">--%>
<%--                                <p>已经大三了，现在转身看看自己学会了什么，懂得了什么，经历了什么，或许真的一只手都可以数过来吧。</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="article-meta">--%>
<%--                            <a class="article-author">时间永恒</a> <span class="time">发表于--%>
<%--									2018-09-19</span>--%>
<%--                        </div></li>--%>

<%--                    <li class="recommend-item"><a class="article-avatar"><img--%>
<%--                            alt="#" src="${pageContext.servletContext.contextPath}/img/homepage/wenzhang2.png"></a>--%>
<%--                        <div class="article-vote">--%>
<%--                            <span class="number">1</span> <br> <span class="text1">推荐</span>--%>
<%--                        </div>--%>
<%--                        <h2 class="article-title">--%>
<%--                            <a href="#">Python 小入坑</a>--%>
<%--                        </h2>--%>
<%--                        <div class="article-summary">--%>
<%--                            <div class="text">--%>
<%--                                <p>python入坑学习的是python3官网 https://www.python.org/</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="article-meta">--%>
<%--                            <a class="article-author">xiaoxiaoming</a> <span class="time">发表于--%>
<%--									2018-10-03</span>--%>
<%--                        </div></li>--%>

<%--                    <li class="recommend-item"><a class="article-avatar"><img--%>
<%--                            alt="#" src="${pageContext.servletContext.contextPath}/img/homepage/wenzhang3.png"></a>--%>
<%--                        <div class="article-vote back">--%>
<%--								<span class="number"><img alt="#"--%>
<%--                                                          src="${pageContext.servletContext.contextPath}/img/homepage/dianzhan.png"></span> <br> <span--%>
<%--                                class="text1">推荐</span>--%>
<%--                        </div>--%>
<%--                        <h2 class="article-title">--%>
<%--                            <a href="#">周朝阳：怎样的思维方式决定了怎样的远见、广度和深度</a>--%>
<%--                        </h2>--%>
<%--                        <div class="article-summary">--%>
<%--                            <div class="text">--%>
<%--                                <p>一 中国人说：我认为这样做是对的；外国人说：也许你是对的，这是思维方式的问题。</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="article-meta">--%>
<%--                            <a class="article-author">周朝阳</a> <span class="time">发表于--%>
<%--									2018-09-22</span>--%>
<%--                        </div></li>--%>

<%--                    <li class="recommend-item"><a class="article-avatar"><img--%>
<%--                            alt="#" src="${pageContext.servletContext.contextPath}/img/homepage/wenzhang4.png"></a>--%>
<%--                        <div class="article-vote">--%>
<%--                            <span class="number">4</span> <br> <span class="text1">推荐</span>--%>
<%--                        </div>--%>
<%--                        <h2 class="article-title">--%>
<%--                            <a href="#">从《别拿相关当因果》看“消费升降级”之争</a>--%>
<%--                        </h2>--%>
<%--                        <div class="article-summary">--%>
<%--                            <div class="text">--%>
<%--                                <p>“一口榨菜一口二锅头，骑着摩拜遛一遛，购物用‘9块9包邮’”这个夏天，“消费降级”成了一个新词汇 —— 新华</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="article-meta">--%>
<%--                            <a class="article-author">阿狸不歌</a> <span class="time">发表于--%>
<%--									2018-09-18</span>--%>
<%--                        </div></li>--%>

<%--                    <li class="recommend-item"><a class="article-avatar"><img--%>
<%--                            alt="#" src="${pageContext.servletContext.contextPath}/img/homepage/wenzhang5.png"></a>--%>
<%--                        <div class="article-vote">--%>
<%--                            <span class="number">2</span> <br> <span class="text1">推荐</span>--%>
<%--                        </div>--%>
<%--                        <h2 class="article-title">--%>
<%--                            <a href="#">往后见</a>--%>
<%--                        </h2>--%>
<%--                        <div class="article-summary">--%>
<%--                            <div class="text">--%>
<%--                                <p>有次看到影视里面的主人公可以轻易利用电脑来完成编程来开发软件来做一款游戏，然后卖给软件公司获得一笔不菲的...</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="article-meta">--%>
<%--                            <a class="article-author">CJrabbit</a> <span class="time">发表于--%>
<%--									2018-09-24</span>--%>
<%--                        </div></li>--%>

<%--                    <li class="recommend-item"><a class="article-avatar"><img--%>
<%--                            alt="#" src="${pageContext.servletContext.contextPath}/img/homepage/wenzhang6.png"></a>--%>
<%--                        <div class="article-vote">--%>
<%--                            <span class="number">1</span> <br> <span class="text1">推荐</span>--%>
<%--                        </div>--%>
<%--                        <h2 class="article-title">--%>
<%--                            <a href="#">计算斐波那契数列的算法</a>--%>
<%--                        </h2>--%>
<%--                        <div class="article-summary">--%>
<%--                            <div class="text">--%>
<%--                                <p>// 计算斐波那契数列第n项1 1 2 3 5 8 13 21long fi(int n){long--%>
<%--                                    result = 1;long previous = 1;long pprevious = 1;...</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="article-meta">--%>
<%--                            <a class="article-author">peizhang</a> <span class="time">发表于--%>
<%--									2018-10-05</span>--%>
<%--                        </div></li>--%>
                </ul>
            </div>
        </div>


        <!-- 右侧资讯展示 -->
        <div class="information">
            <!-- 即将上市 -->
            <div class="info-block1">
                <div class="info-block1-header">
                    <h4>
                        <a href="#">即将上市</a>
                    </h4>
                </div>
                <div class="info-block-items">
                    <ul class="block-items">
                        <li class="block-item block-li1">
                            <div class="book-info">
                                <h4 class="name">
                                    <a href="#">我的第一本算法书</a>
                                </h4>
                                <div class="author">
                                    <span>宫崎修一 石田保辉 </span> <span>张贝 译</span>
                                </div>
                            </div>
                        </li>
                        <li class="block-item block-li2">
                            <div class="book-info">
                                <h4 class="name">
                                    <a href="#">Python社会媒体挖掘</a>
                                </h4>
                                <div class="author">
                                    <span>马尔科·邦扎尼尼</span> <span>陈小莉 陶俊杰 译</span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <!-- 东软动态 -->
            <div class="info-block2">
                <div class="info-block2-header">
                    <h4>
                        <a href="#">东软动态</a>
                    </h4>
                </div>
                <dl>
                    <dt>
                        <a href="#">🌟 最新书讯</a>
                    </dt>
                    <dd>
                        <p>
                            <a href="#">9月书讯：新书早知道</a>
                        </p>
                    </dd>
                </dl>
                <dl>
                    <dt>
                        <a href="#">🚚 纸质书开通预售</a>
                    </dt>
                    <dd>
                        <p>
                            <a href="#">9月书讯：新书早知道</a>
                        </p>
                    </dd>
                </dl>
                <dl>
                    <dt>
                        <a href="#">👤 东软访谈</a>
                    </dt>
                    <dd>
                        <p>
                            <a href="#">9月书讯：新书早知道</a>
                        </p>
                    </dd>
                </dl>
                <dl>
                    <dt>
                        <a href="#">🥣 电子书每周特价</a>
                    </dt>
                    <dd>
                        <p>
                            <a href="#">9月书讯：新书早知道</a>
                        </p>
                    </dd>
                </dl>
                <dl>
                    <dt>
                        <a href="#">😀 电子书阅读奖励计划</a>
                    </dt>
                    <dd>
                        <p>
                            <a href="#">9月书讯：新书早知道</a>
                        </p>
                    </dd>
                </dl>
            </div>

            <!-- 关注我们 -->
            <div class="info-block3">
                <div class="info-block3-header">
                    <h4>
                        <a href="#">关注我们</a>
                    </h4>
                </div>
                <div class="block-us">
                    <p class="sx">
                        📬 Email 订阅 <br> <a href="#">新书书讯和每周特价消息</a>
                    </p>
                    <p class="wb1">
                        🌀 微博 <br> <a href="#">@东软教育</a> <a href="#">@东软新知</a> <a
                            href="#">@东软社区</a>
                    </p>
                    <p class="sx">
                        🐧 读者QQ群 <br> <a href="#">123456789</a> <a href="#">987654321</a>
                    </p>
                    <p class="wx">
                        ✍️ 微信公众号 东软教育 <br> <img alt="#"
                                                src="${pageContext.servletContext.contextPath}/img/homepage/erwei1.png">
                    </p>
                </div>
            </div>
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