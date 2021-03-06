<%--
  Created by IntelliJ IDEA.
  User: 醒了吗
  Date: 2021/12/11
  Time: 9:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>recommend</title>
    <link href="${pageContext.servletContext.contextPath}/css/frame.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath}/css/top.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath}/css/recommend.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath}/css/bottom.css" type="text/css" rel="stylesheet">
    <style type="text/css">
    </style>
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
    <div class="container">
        <div class="container-left">
            <div class="page-article-head">
                <div class="article-title">
                    <h2>9月书讯：新书早知道</h2>
                </div>
                <div class="article-author">
                    <a href="#">张敏</a> <span> 发表于 今年 09-19 16:54</span> <span>&nbsp;&nbsp;&nbsp;5372
							阅读</span>
                </div>
            </div>
            <div class="article">
                <div class="article-des">
                    <p>9月有7本新书，其中实用统计学；有Python数据处理参考手册；还有市场占有率非常高的商业游戏引擎Unity图书；更有强大的编程语言Java并发编程的书；最后还有两本可以轻松阅读的有趣的科普书。</p>
                    <p>
                        PS：<a href="#">《Unity移动游戏开发》</a>已经上市，其他图书会在下月陆续上市。
                    </p>
                </div>

                <div class="article-books">
                    <div class="article-book">
                        <div class="article-book-head">
                            <h2>
                                <a href="#">特别推荐 ○ 面向数据科学家的实用统计学</a>
                            </h2>
                        </div>
                        <p>
                            <img alt="#" src="../img/recommend/rec1.png">
                        </p>
                        <p>
                            <i>Practical Statistics for Data Scientists: 50 Essential
                                Concepts</i> <br> 作者：Peter Bruce，Andrew Bruce <br> 译者：盖磊
                            <br> 定价：89.00元
                        </p>
                        <div class="book-des">
                            <ul>
                                <li>豆瓣评分9.1</li>
                                <li>数据仓库「畅销榜榜首」图书</li>
                                <li>系统梳理重要的统计学概念，演示统计学方法具体应用</li>
                            </ul>
                            <p>书中解释了数据科学中至关重要的统计学概念，介绍怎样将各种统计方法应用于数据科学。作者以易于理解、浏览和参考的方式，引出统计学中与数据科学相关的关键概念；解释了各统计学概念在数据科学中的重要性及有用程度，并给出原因。
                            </p>
                        </div>
                    </div>

                    <div class="article-book">
                        <div class="article-book-head">
                            <h2>
                                <a href="#">特别推荐 ○ Python社会媒体挖掘</a>
                            </h2>
                        </div>
                        <p>
                            <img alt="#" src="../img/recommend/rec2.png">
                        </p>
                        <p>
                            <i>Mastering Social Media Mining with Python</i> <br>
                            作者：Marco Bonzanini <br> 译者：陈小莉，陶俊杰 <br> 定价：69.00元
                        </p>
                        <div class="book-des">
                            <ul>
                                <li>原版亚马逊全五星好评</li>
                                <li>Python数据处理实用参考手册</li>
                                <li>获取、存储、分析和可视化社交数据的一站式解决方案</li>
                            </ul>
                            <p>Python是非常适合数据科学家在中小型数据集上建造原型、可视化和分析数据的编程语言。上面这本书可以帮你获取和分析来自各大社会媒体网站的数据，展示如何使用科学的Python工具来挖掘Stack
                                Exchange等流行社交网站。</p>
                        </div>
                    </div>

                    <div class="article-book">
                        <div class="article-book-head">
                            <h2>
                                <a href="#">特别推荐 ○ Unity 3D游戏开发（第2版） </a>
                            </h2>
                        </div>
                        <p>
                            <img alt="#" src="../img/recommend/rec3.png">
                        </p>
                        <p>
                            <i>图灵原创</i> <br> 作者：宣雨松 <br> 定价：89.00元
                        </p>
                        <p>本书作者宣雨松，知名技术博客博主雨松MOMO，拥有10年以上游戏开发经验，是北京某上市游戏公司Unity技术专家，国内Unity
                            User Group意见领袖，UVP价值专家，来自古城西安。</p>
                        <div class="book-des">
                            <ul>
                                <li>畅销书全新升级，新版基于Unity 2018，上一版累计印数30000册</li>
                                <li>Unity User Group意见领袖北京地区负责人，知名技术博客博主雨松MOMO倾力打造</li>
                                <li>侑虎科技CEO张鑫、Unity 资深开发者高川作序推荐</li>
                                <li>游戏蛮牛创始人崇慕、Unity
                                    圣典社区创始人杨博、游族网络技术总监陈小飞、天马时空技术总监窦玉波、蓝港互动技术VP张宏亮、腾讯游戏《穿越火线》手游主程郭智、前Unity
                                    布道师郭振平、网元圣堂技术总监胡志波、Unity 中国Field Engineer陈嘉栋、北京UUG
                                    社区讲师钱康来、钛核互动联合创始人王亮、《武林外传》手游主程程小山、UVP 价值专家王刚等众多业内大咖倾力推荐</li>
                            </ul>
                            <p>Unity 是一款市场占有率非常高的商业游戏引擎，横跨25
                                个主流游戏平台。初学Unity最好的学习资料无疑是官方的手册和最佳实践，之后需要去学习各种游戏开发的领域知识。上面这本书除了介绍Unity的知识外，还加入了作者结合过去几年的商业游戏实战经验，对游戏框架、工作流、解决方案和性能调优等做了很详细的描述。
                            </p>
                        </div>
                    </div>

                    <div class="article-book">
                        <div class="article-book-head">
                            <h2>
                                <a href="#">Unity移动游戏开发 </a>
                            </h2>
                        </div>
                        <p>
                            <img alt="#" src="../img/recommend/rec4.png">
                        </p>
                        <p>
                            <i>Mobile Game Development with Unity: Build once, deploy
                                anywhere</i> <br> 作者：Jon Manning，Paris Buttfield-Addison <br>
                            译者：赵利通 <br> 定价：89.00元 / 电子书44.99元
                        </p>
                        <div class="book-des">
                            <ul>
                                <li>针对游戏开发零经验读者</li>
                                <li>实用性与趣味性兼具的移动游戏开发指南</li>
                                <li>通过完整游戏开发实例快速上手</li>
                            </ul>
                            <p>“想在移动平台上构建游戏，就必须了解Unity。Unity是开发人员理想的游戏开发引擎之一。本书有料有趣，全面介绍了Unity游戏开发，能指导你在Unity中创造自己的游戏玩法。”——Adam
                                Saltsman，Canabalt和Overland创作者，Finji游戏工作室创始人</p>
                            <p>“学习如何使用游戏引擎，一定要亲自动手构建项目。本书将引导你创建两个截然不同的游戏，让你获得使用Unity多种功能的宝贵经验。”——Alec
                                Holowka，Night in the Woods和Aquaria的主要开发者，Infinite Ammo游戏工作室</p>
                            <p>“这本书改变了我的生活。我现在能感受到内心的平静，而且我确信我的目光可以穿透时间。”——Liam
                                Esler，澳大利亚游戏开发者协会</p>
                        </div>
                    </div>

                    <div class="article-book">
                        <div class="article-book-head">
                            <h2>
                                <a href="#">精通Java并发编程（第2版） </a>
                            </h2>
                        </div>
                        <p>
                            <img alt="#" src="../img/recommend/rec5.png">
                        </p>
                        <p>
                            <i>Mastering Concurrency Programming with Java 9</i> <br>
                            作者：Javier Fernández González <br> 译者：唐富年 <br>
                            定价：89.00元
                        </p>
                        <div class="book-des">
                            <ul>
                                <li>利用Java并发API强大功能，轻松实现并发应用程序</li>
                                <li>针对每个重要的知识点都提供了足够的代码示例，展示了如何使用并发编程解决实际问题</li>
                            </ul>
                            <p>Java是一门非常强大的编程语言，特色突出，性能卓越，几乎在你说得出名称的所有计算平台上，都或多或少会浮现出Java的影子。Java并发API显然只是Java提供的一部分功能。然而到现在，在历经多次修改和丰富后，它已经强大到每个程序员都应予以高度重视的程度。在Java的每个版本中，
                                并发API提供给程序员的功能都在增加。本书是近年来不可多得的一本专门介绍Java并发编程的图书，对于致力于Java大型程序设计、并行计算、分布式计算和大数据分析处理等方向的科研人员和工程人员来说，它值得一读。
                            </p>
                        </div>
                    </div>

                    <div class="article-book">
                        <div class="article-book-head">
                            <h2>
                                <a href="#">千亿个宇宙：多世界的黑暗秘密</a>
                            </h2>
                        </div>
                        <p>
                            <img alt="#" src="/img/recommend/rec6.png">
                        </p>
                        <p>
                            <i>宇宙は本当にひとつなのか</i> <br> 作者：村山齐 <br> 译者：逸宁 <br>
                            定价：49.00元
                        </p>
                        <div class="book-des">
                            <ul>
                                <li>最好懂的宇宙学入门科普书，日文版销量突破12万册</li>
                                <li>从已知宇宙到多重世界</li>
                                <li>日本东京大学Kavli数学物理学联合宇宙研究机构 所长，Coursera人气课程“从大爆炸到暗能量”讲授者
                                    村山齐 科普力作</li>
                                <li>中国科学院国家天文台，宇宙暗物质暗能量组首席研究员 陈学雷 作序推荐</li>
                            </ul>
                            <p>本书从当前可观测宇宙出发，通过追溯极早期宇宙，讲解了宇宙的诞生与可能的结局，并结合天文观测与物理学研究中的“暗物质”与“暗能量”问题，带领读者探索了宇宙中不可见的“额外维度”，以及奇妙的多重时空区域。本书语言通俗、线索清晰、节奏轻快、层层深入，不仅描绘出了宇宙的整体图景，
                                还探讨了当前宇宙研究中待解决的关键问题，是宇宙学入门的科普佳作。</p>
                        </div>
                    </div>

                    <div class="article-book">
                        <div class="article-book-head">
                            <h2>
                                <a href="#">你不可不知的50个生物学知识</a>
                            </h2>
                        </div>
                        <p>
                            <img alt="#" src="../img/recommend/rec7.png">
                        </p>
                        <p>
                            <i>50 Biology Ideas You Really Need to Know</i> <br>
                            作者：J.V. Chamary <br> 译者：王昊 <br> 定价：35.00元
                        </p>
                        <div class="book-des">
                            <ul>
                                <li>倍受读者欢迎的“你不可不知的50个......”系列又添新书</li>
                                <li>通过50篇短文讲解你应该了解的生物学基本知识，帮助我们深入了解我们所处的大自然</li>
                            </ul>
                            <p>本书精选了50个重要的生物学概念，涉及从生命起源、自然选择到合成生物学，从个体的受精、发育和衰老到物种的形成、演化和灭绝，从基因、病毒、光合作用到动物的睡眠、记忆和智力。每篇短文以通俗易懂的文字回顾了科学家的探索历程和经典实验，也介绍了相关领域的最新进展和未来前景。
                                它们将不仅帮助你形成对于生物学的基本概念，也将帮助你更好地认识你自己——不仅是作为生物个体，也是作为自然和社会生态系统中的一员。
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 评论区 -->
            <div class="block">
                <div class="block-body">
                    <div class="post-taglist">
                        <a>每月书讯</a>
                    </div>
                    <div class="attention">
                        <p>本文仅用于学习和交流目的，不代表图灵社区观点。非商业转载请注明作译者、出处，并保留本文的原始链接。</p>
                    </div>
                    <div class="article-actions">
                        <div class="article-actions-left">
                            <div class="article-vote vote1">
									<span class="number"><img alt="#"
                                                              src="../img/recommend/tuijian.png"></span> <br> <span
                                    class="text">推荐</span>
                            </div>
                            <div class="article-vote vote2">
									<span class="number"><img alt="#"
                                                              src="../img/recommend/shouchang.png"></span> <br> <span
                                    class="text">收藏</span>
                            </div>
                            <div class="article-vote vote3">
									<span class="number"><img alt="#"
                                                              src="WebContent/static/img/recommend/dashang.png"></span> <br> <span
                                    class="text">打赏</span>
                            </div>
                        </div>
                        <div class="article-actions-right">
                            <a href="#">分享长微博</a> <img alt="#"
                                                       src="WebContent/static/img/recommend/share.png">
                        </div>
                    </div>
                </div>
                <!-- 评论模块 -->
                <div class="comment-block">
                    <div class="comment-form">
                        <div class="comment-form-box">
                            <textarea placeholder="我来写评论..."></textarea>
                        </div>
                        <button class="comment-btn">评论</button>
                    </div>
                    <div class="nav-tab-primary">
                        <ul class="nav-tabs">
                            <li class="nav-tab nt1">按时间</li>
                            <li class="nav-tab nt2">按推荐</li>
                        </ul>
                    </div>
                    <div class="comment-block">
                        <ul class="block-comments">
                            <li class="block-comment">
                                <div class="avatar">
                                    <img alt="#" src="WebContent/static/img/recommend/comment1.png">
                                </div>
                                <div class="comment-txt">记得《你不可不知的50个...知识》系列大多是黑色封面，家里有好几本，现在改风格了？</div>
                                <div class="comment-info">
                                    <a href="#">江志强</a>&nbsp;&nbsp;发表于 2018-09-21 20:31:28
                                </div>
                                <div class="action-bar">1 推荐</div>
                            </li>
                            <li class="block-comment">
                                <div class="avatar">
                                    <img alt="#" src="WebContent/static/img/recommend/comment2.png">
                                </div>
                                <div class="comment-txt">特别特别喜欢关于宇宙的书籍，爱不释手。看见新书《千亿个宇宙：多世界的黑暗秘密》超级激动⊙∀⊙！</div>
                                <div class="comment-info">
                                    <a href="#">子沫乄花非花</a>&nbsp;&nbsp;发表于2018-10-09 13:37:47
                                </div>
                                <div class="action-bar">1 推荐</div>
                            </li>
                            <li class="block-comment">
                                <div class="avatar">
                                    <img alt="#" src="WebContent/static/img/recommend/comment3.png">
                                </div>
                                <div class="comment-txt">前两本有电子版太好了···</div>
                                <div class="comment-info">
                                    <a href="#">王哪走</a>&nbsp;&nbsp;发表于 2018-09-27 10:45:53
                                </div>
                                <div class="action-bar">&nbsp;&nbsp; 推荐</div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-right">
            <div class="con-right-img">
                <img alt="#" src="WebContent/static/img/recommend/tx.png">
            </div>
            <div class="con-right-name">
                <a href="#">张敏</a>
            </div>
            <div class="con-right-tags">
                <ul>
                    <li class="con-right-tag1">&nbsp;<span>+</span>关注
                    </li>
                    <li class="con-right-tag2">&nbsp;短消息</li>
                </ul>
            </div>
        </div>
    </div>








































    <!-- 		<div class="home">
        书籍标签
        <div class="book-tags">
            <span class="book-type-tags">
                <a class="post-tag" href="#">Python</a>
                <a class="post-tag" href="#">JavaScript</a>
                <a class="post-tag" href="#">机器学习</a>
                <a class="post-tag" href="#">Java</a>
                <a class="post-tag" href="#">算法</a>
                <a class="post-tag" href="#">数学</a>
                <a class="post-tag" href="#">C语言</a>
                <a class="post-tag" href="#">Linux</a>
                <a class="post-tag" href="#">预售</a>
                <a class="post-tag" href="#">每周特价</a>
            </span>
        </div>
        书籍展示
        <div class="home-left">
            <div class="books">
                <div class="book-header">
                    <h4>
                        <a href="#">热门图书</a>
                    </h4>
                    <div class="books-more">
                        <span> < </span>
                        <span> > </span>
                    </div>
                </div>

                书籍详情
                <ul class="book-items">
                    <li class="book-item">
                        <div class="book-img">
                            <img alt="#" src="./static/img/suanfatujie.jpg">
                        </div>
                        <div class="book-info">
                            <h4>
                                <a href="#">算法图解</a>
                            </h4>
                            <div class="author">
                                <span>Aditya Bhargava</span>
                                <br>
                                <span>袁国忠  译</span>
                            </div>
                        </div>
                    </li>
                    <li class="book-item">
                        <div class="book-img">
                            <img alt="#" src="./static/img/pythonjichujiaocheng.jpg">
                        </div>
                        <div class="book-info">
                            <h4>
                                <a href="#">Python基础教程（第3版）</a>
                            </h4>
                            <div class="author">
                                <span>Magnus Lie Hetland</span>
                                <br>
                                <span>袁国忠  译</span>
                            </div>
                        </div>
                    </li>
                    <li class="book-item">
                        <div class="book-img">
                            <img alt="#" src="./static/img/flaskweb.jpg">
                        </div>
                        <div class="book-info">
                            <h4>
                                <a href="#">Flask Web开发：基于Python的Web</a>
                            </h4>
                            <div class="author">
                                <span>[美]米格尔•格林贝格</span>
                                <br>
                                <span>安道  译</span>
                            </div>
                        </div>
                    </li>
                    <li class="book-item">
                        <div class="book-img">
                            <img alt="#" src="./static/img/nibuzhidaodejavascript.jpg">
                        </div>
                        <div class="book-info">
                            <h4>
                                <a href="#">你不知道的JavaScript（下卷）   </a>
                            </h4>
                            <div class="author">
                                <span>Kyle Simpson</span>
                                <br>
                                <span>单业  译</span>
                            </div>
                        </div>
                    </li>
                    <li class="book-item">
                        <div class="book-img">
                            <img alt="#" src="./static/img/liuchangdepython.jpg">
                        </div>
                        <div class="book-info">
                            <h4>
                                <a href="#">流畅的Python</a>
                            </h4>
                            <div class="author">
                                <span>Luciano Ramalho</span>
                                <br>
                                <span>安道 吴珂  译</span>
                            </div>
                        </div>
                    </li>
                    <li class="book-item">
                        <div class="book-img">
                            <img alt="#" src="./static/img/bianchengfengge.jpg">
                        </div>
                        <div class="book-info">
                            <h4>
                                <a href="#">编程风格：好代码的逻辑</a>
                            </h4>
                            <div class="author">
                                <span>Cristina Videira Lopes</span>
                                <br>
                                <span>顾中磊  译</span>
                            </div>
                        </div>
                    </li>
                    <li class="book-item">
                        <div class="book-img">
                            <img alt="#" src="./static/img/yongshuxuekanshijie.jpg">
                        </div>
                        <div class="book-info">
                            <h4>
                                <a href="#">用数学的语言看世界</a>
                            </h4>
                            <div class="author">
                                <span>大栗博司</span>
                                <br>
                                <span>尤斌斌  译</span>
                            </div>
                        </div>
                    </li>
                    <li class="book-item">
                        <div class="book-img">
                            <img alt="#" src="./static/img/tujiejavatuxiancheng.jpg">
                        </div>
                        <div class="book-info">
                            <h4>
                                <a href="#">图解Java多线程设计模式</a>
                            </h4>
                            <div class="author">
                                <span>结城浩</span>
                                <br>
                                <span>侯振龙 杨文轩  译</span>
                            </div>
                        </div>
                    </li>
                    <li class="book-item">
                        <div class="book-img">
                            <img alt="#" src="./static/img/Rshujukexue.jpg">
                        </div>
                        <div class="book-info">
                            <h4>
                                <a href="#">R数据科学</a>
                            </h4>
                            <div class="author">
                                <span>新西兰]哈德利•威克姆  [美]加勒特•格罗勒芒德</span>
                                <br>
                                <span>陈光欣  译</span>
                            </div>
                        </div>
                    </li>
                    <li class="book-item">
                        <div class="book-img">
                            <img alt="#" src="./static/img/javacongxiaobaidaodaniu.jpg">
                        </div>
                        <div class="book-info">
                            <h4>
                                <a href="#">Java从小白到大牛 精简版</a>
                            </h4>
                            <div class="author">
                                <span>关东升</span>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            底部推荐文章展示
            <div class="recommend">
                <div class="recommend-header">
                    <h4>
                        <a href="#">推荐文章</a>
                    </h4>
                    <div class="recommend-more">
                        <span> 更多 >> </span>
                    </div>
                </div>
                文章列表
                <ul class="recommend-items">
                    <li class="recommend-item">
                        <a class="article-avatar"><img alt="#" src="./static/img/xinshu.png"></a>
                        <div class="article-vote">
                            <span class="number">11</span>
                            <br>
                            <span class="text1">推荐</span>
                        </div>
                        <h2 class="article-title"><a href="#">9月书讯：新书早知道</a></h2>
                        <div class="article-summary">
                            <div class="text"><p>...</p></div>
                        </div>
                        <div class="article-meta">
                            <a class="article-author">张敏</a>
                            <span class="time">发表于 2018-09-19</span>
                        </div>
                    </li>

                    <li class="recommend-item">
                        <a class="article-avatar"><img alt="#" src="./static/img/wenzhang1.png"></a>
                        <div class="article-vote">
                            <span class="number">3</span>
                            <br>
                            <span class="text1">推荐</span>
                        </div>
                        <h2 class="article-title"><a href="#">大学只有我这样荒废吗？</a></h2>
                        <div class="article-summary">
                            <div class="text"><p>已经大三了，现在转身看看自己学会了什么，懂得了什么，经历了什么，或许真的一只手都可以数过来吧。</p></div>
                        </div>
                        <div class="article-meta">
                            <a class="article-author">时间永恒</a>
                            <span class="time">发表于 2018-09-19</span>
                        </div>
                    </li>

                    <li class="recommend-item">
                        <a class="article-avatar"><img alt="#" src="./static/img/wenzhang2.png"></a>
                        <div class="article-vote">
                            <span class="number">1</span>
                            <br>
                            <span class="text1">推荐</span>
                        </div>
                        <h2 class="article-title"><a href="#">Python 小入坑</a></h2>
                        <div class="article-summary">
                            <div class="text"><p>python入坑学习的是python3官网 https://www.python.org/</p></div>
                        </div>
                        <div class="article-meta">
                            <a class="article-author">xiaoxiaoming</a>
                            <span class="time">发表于 2018-10-03</span>
                        </div>
                    </li>

                    <li class="recommend-item">
                        <a class="article-avatar"><img alt="#" src="./static/img/wenzhang3.png"></a>
                        <div class="article-vote back">
                            <span class="number"><img alt="#" src="./static/img/dianzhan.png"></span>
                            <br>
                            <span class="text1">推荐</span>
                        </div>
                        <h2 class="article-title"><a href="#">周朝阳：怎样的思维方式决定了怎样的远见、广度和深度</a></h2>
                        <div class="article-summary">
                            <div class="text"><p>一 中国人说：我认为这样做是对的；外国人说：也许你是对的，这是思维方式的问题。</p></div>
                        </div>
                        <div class="article-meta">
                            <a class="article-author">周朝阳</a>
                            <span class="time">发表于 2018-09-22</span>
                        </div>
                    </li>

                    <li class="recommend-item">
                        <a class="article-avatar"><img alt="#" src="./static/img/wenzhang4.png"></a>
                        <div class="article-vote">
                            <span class="number">4</span>
                            <br>
                            <span class="text1">推荐</span>
                        </div>
                        <h2 class="article-title"><a href="#">从《别拿相关当因果》看“消费升降级”之争</a></h2>
                        <div class="article-summary">
                            <div class="text"><p>“一口榨菜一口二锅头，骑着摩拜遛一遛，购物用‘9块9包邮’”这个夏天，“消费降级”成了一个新词汇 —— 新华</p></div>
                        </div>
                        <div class="article-meta">
                            <a class="article-author">阿狸不歌</a>
                            <span class="time">发表于 2018-09-18</span>
                        </div>
                    </li>

                    <li class="recommend-item">
                        <a class="article-avatar"><img alt="#" src="./static/img/wenzhang5.png"></a>
                        <div class="article-vote">
                            <span class="number">2</span>
                            <br>
                            <span class="text1">推荐</span>
                        </div>
                        <h2 class="article-title"><a href="#">往后见</a></h2>
                        <div class="article-summary">
                            <div class="text"><p>有次看到影视里面的主人公可以轻易利用电脑来完成编程来开发软件来做一款游戏，然后卖给软件公司获得一笔不菲的...</p></div>
                        </div>
                        <div class="article-meta">
                            <a class="article-author">CJrabbit</a>
                            <span class="time">发表于 2018-09-24</span>
                        </div>
                    </li>

                    <li class="recommend-item">
                        <a class="article-avatar"><img alt="#" src="./static/img/wenzhang6.png"></a>
                        <div class="article-vote">
                            <span class="number">1</span>
                            <br>
                            <span class="text1">推荐</span>
                        </div>
                        <h2 class="article-title"><a href="#">计算斐波那契数列的算法</a></h2>
                        <div class="article-summary">
                            <div class="text"><p>// 计算斐波那契数列第n项1 1 2 3 5 8 13 21long fi(int n){long result = 1;long previous = 1;long pprevious = 1;...</p></div>
                        </div>
                        <div class="article-meta">
                            <a class="article-author">peizhang</a>
                            <span class="time">发表于 2018-10-05</span>
                        </div>
                    </li>
                </ul>
            </div>
        </div>


        右侧资讯展示
        <div class="information">
            即将上市
            <div class="info-block1">
                <div class="info-block1-header">
                    <h4>
                        <a href="#">即将上市</a>
                    </h4>
                    <div class="info-block1-more">
                        <span> 更多 >> </span>
                    </div>
                </div>
                <div class="info-block-items">
                    <ul class="block-items">
                        <li class="block-item block-li1">
                            <div class="book-info">
                                <h4 class="name"><a href="#">我的第一本算法书</a></h4>
                                <div class="author">
                                    <span>宫崎修一  石田保辉 </span>
                                    <span>张贝 译</span>
                                </div>
                            </div>
                        </li>
                        <li class="block-item block-li2">
                            <div class="book-info">
                                <h4 class="name"><a href="#">Python社会媒体挖掘</a></h4>
                                <div class="author">
                                    <span>马尔科·邦扎尼尼</span>
                                    <span>陈小莉 陶俊杰 译</span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            东软动态
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
                        <p><a href="#">9月书讯：新书早知道</a></p>
                    </dd>
                </dl>
                <dl>
                    <dt>
                        <a href="#">🚚 纸质书开通预售</a>
                    </dt>
                    <dd>
                        <p><a href="#">9月书讯：新书早知道</a></p>
                    </dd>
                </dl>
                <dl>
                    <dt>
                        <a href="#">👤 图灵访谈</a>
                    </dt>
                    <dd>
                        <p><a href="#">9月书讯：新书早知道</a></p>
                    </dd>
                </dl>
                <dl>
                    <dt>
                        <a href="#">🥣 电子书每周特价</a>
                    </dt>
                    <dd>
                        <p><a href="#">9月书讯：新书早知道</a></p>
                    </dd>
                </dl>
                <dl>
                    <dt>
                        <a href="#">😀 电子书阅读奖励计划</a>
                    </dt>
                    <dd>
                        <p><a href="#">9月书讯：新书早知道</a></p>
                    </dd>
                </dl>
            </div>

            关注我们
            <div class="info-block3">
                <div class="info-block3-header">
                    <h4>
                        <a href="#">关注我们</a>
                    </h4>
                </div>
                <div class="block-us">
                    <p class="sx">
                        📬 Email 订阅
                        <br>
                        <a href="#">新书书讯和每周特价消息</a>
                    </p>
                    <p class="wb1">
                        🌀 微博
                        <br>
                        <a href="#">@东软教育</a>
                        <a href="#">@东软新知</a>
                        <a href="#">@东软社区</a>
                    </p>
                    <p class="sx">
                        🐧 读者QQ群
                        <br>
                        <a href="#">123456789</a>
                        <a href="#">987654321</a>
                    </p>
                    <p class="wx">
                        ✍️ 微信公众号　东软教育
                        <br>
                        <img alt="#" src="./static/img/erwei1.png">
                    </p>
                    <p class="wx">
                        ✍️ 微信公众号　东软访谈
                        <br>
                        <img alt="#" src="./static/img/erwei2.png">
                    </p>
                </div>
            </div>
        </div>
    </div> -->
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