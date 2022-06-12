<%--
  Created by IntelliJ IDEA.
  User: 醒了吗
  Date: 2021/12/18
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml"><head><meta charset="utf-8">


<link href="${pageContext.servletContext.contextPath}/css/bookDetail.css" type="text/css"
      rel="stylesheet">
<link rel="icon" href="img/cnode_icon_32.png" type="image/x-icon">


<!-- style -->
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/css/test.css" media="all">


<!-- scripts -->
<script src="js/index.min.f7c13f64.min.js"></script>
<title>详情</title>
</head>
<body>
<div id="main">
    <c:if test="${requestScope.ArticleDetail!=null}">
        <span >${requestScope.ArticleDetail.articleTitle}</span>
        </span>
        <div class="changes">
        <span>
          发布于${requestScope.ArticleDetail.articleDate}
        </span>
            <span>作者:${requestScope.ArticleDetail.articleAuthor}</span>
        </div>
        <br>
        <br>
        <div class="inner topic">
            <div class="topic_content">
                ${requestScope.ArticleDetail.articleContent}
            </div>
        </div>
    </c:if>

</div>


<%--    <div class="replies_history">--%>
<%--        <div class="inner_content"></div>--%>
<%--        <div class="anchor"></div>--%>
<%--    </div>--%>
<%--    <script type="text/javascript">--%>
<%--        (function(){--%>
<%--            var timer = null; //对话框延时定时器--%>
<%--            // 初始化 $('.replies_history')--%>
<%--            var $repliesHistory = $('.replies_history');--%>
<%--            var $repliesHistoryContent = $repliesHistory.find('.inner_content');--%>
<%--            $repliesHistory.hide();--%>
<%--            // END--%>
<%--            // 鼠标移入对话框清除隐藏定时器；移出时隐藏对话框--%>
<%--            $repliesHistory.on('mouseenter', function(){--%>
<%--                clearTimeout(timer);--%>
<%--            }).on('mouseleave', function(){--%>
<%--                $repliesHistory.fadeOut('fast');--%>
<%--            });--%>
<%--            // 显示被 at 用户的本页评论--%>
<%--            if ($('.reply2_item').length === 0) {--%>
<%--                // 只在流式评论布局中使用--%>

<%--                $('#content').on('mouseenter', '.reply_content a', function (e) {--%>
<%--                    clearTimeout(timer);--%>
<%--                    var $this = $(this);--%>
<%--                    if ($this.text()[0] === '@') {--%>
<%--                        var thisText = $this.text().trim();--%>
<%--                        var loginname = thisText.slice(1);--%>
<%--                        var offset = $this.offset();--%>
<%--                        var width = $this.width();--%>
<%--                        var mainOffset = $('#main').offset();--%>
<%--                        $repliesHistory.css('left', offset.left-mainOffset.left+width+10); // magic number--%>
<%--                        $repliesHistory.css('top', offset.top-mainOffset.top-10); // magic number--%>
<%--                        $repliesHistory.css({--%>
<%--                            'z-index': 1,--%>
<%--                        });--%>
<%--                        $repliesHistoryContent.empty();--%>
<%--                        var chats = [];--%>
<%--                        var replyToId = $this.closest('.reply_item').attr('reply_to_id');--%>
<%--                        while (replyToId) {--%>
<%--                            var $replyItem = $('.reply_item[reply_id=' + replyToId + ']');--%>
<%--                            var replyContent = $replyItem.find('.reply_content').text().trim();--%>
<%--                            if (replyContent.length > 0) {--%>
<%--                                chats.push([--%>
<%--                                    $($replyItem.find('.user_avatar').html()).attr({--%>
<%--                                        height: '30px',--%>
<%--                                        width: '30px',--%>
<%--                                    }), // avatar--%>
<%--                                    (replyContent.length>300?replyContent.substr(0,300)+'...':replyContent), // reply content--%>
<%--                                    '<a href="#'+replyToId+'" class="scroll_to_original" title="查看原文">↑</a>'--%>
<%--                                ]);--%>
<%--                            }--%>
<%--                            replyToId = $replyItem.attr('reply_to_id');--%>
<%--                        }--%>
<%--                        if(chats.length > 0) {--%>
<%--                            chats.reverse();--%>

<%--                            $repliesHistoryContent.append('<div class="title">查看对话</div>');--%>
<%--                            chats.forEach(function (pair, idx) {--%>
<%--                                var $chat = $repliesHistoryContent.append('<div class="item"></div>');--%>
<%--                                $chat.append(pair[0]); // 头像--%>
<%--                                $chat.append($('<span>').text(pair[1])); // 内容--%>
<%--                                $chat.append(pair[2]); // 查看原文 anchor--%>
<%--                            });--%>
<%--                            $repliesHistory.fadeIn('fast');--%>
<%--                        }else{--%>
<%--                            $repliesHistory.hide();--%>
<%--                        }--%>
<%--                    }--%>
<%--                }).on('mouseleave', '.reply_content a', function (e) {--%>
<%--                    timer = setTimeout(function(){--%>
<%--                        $repliesHistory.fadeOut('fast');--%>
<%--                    }, 500);--%>
<%--                });--%>
<%--            }--%>
<%--            // END 显示被 at 用户的本页评论--%>
<%--        })();--%>

<%--        // 点赞--%>
<%--        $('.up_btn').click(function (e) {--%>
<%--            var $this = $(this);--%>
<%--            var replyId = $this.closest('.reply_area').attr('reply_id');--%>
<%--            $.ajax({--%>
<%--                url: '/reply/' + replyId + '/up',--%>
<%--                method: 'POST',--%>
<%--            }).done(function (data) {--%>
<%--                if (data.success) {--%>
<%--                    $this.removeClass('invisible');--%>
<%--                    var currentCount = Number($this.next('.up-count').text().trim()) || 0;--%>
<%--                    if (data.action === 'up') {--%>
<%--                        $this.next('.up-count').text(currentCount + 1);--%>
<%--                        $this.addClass('uped');--%>
<%--                    } else {--%>
<%--                        if (data.action === 'down') {--%>
<%--                            $this.next('.up-count').text(currentCount - 1);--%>
<%--                            $this.removeClass('uped');--%>
<%--                        }--%>
<%--                    }--%>
<%--                } else {--%>
<%--                    alert(data.message);--%>
<%--                }--%>
<%--            }).fail(function (xhr) {--%>
<%--                if (xhr.status === 403) {--%>
<%--                    alert('请先登录，登陆后即可点赞。');--%>
<%--                }--%>
<%--            });--%>
<%--        });--%>
<%--        // END 点赞--%>
<%--        // 图片预览--%>
<%--        (function(){--%>
<%--            var $previewModal = $('#preview-modal');--%>
<%--            var $previewImage = $('#preview-image');--%>
<%--            var $body = $('body'); // cache--%>

<%--            $(document).on('click', '.markdown-text img', function(e) {--%>
<%--                var $img = $(this);--%>
<%--                // 图片被a标签包裹时，不显示弹层--%>
<%--                if ($img.parent('a').length > 0) {--%>
<%--                    return;--%>
<%--                }--%>
<%--                showModal($img.attr('src'));--%>
<%--            });--%>

<%--            $previewModal.on('click', hideModal);--%>

<%--            $previewModal.on('hidden.bs.modal', function() {--%>
<%--                // 在预览框消失之后恢复 body 的滚动能力--%>
<%--                $body.css('overflow-y', 'scroll');--%>
<%--            })--%>

<%--            $previewModal.on('shown.bs.modal', function() {--%>
<%--                // 修复上次滚动留下的痕迹,可能会导致短暂的闪烁，不过可以接受--%>
<%--                // TODO: to be promote--%>
<%--                $previewModal.scrollTop(0);--%>
<%--            })--%>

<%--            function showModal(src) {--%>
<%--                $previewImage.attr('src', src);--%>
<%--                $previewModal.modal('show');--%>
<%--                // 禁止 body 滚动--%>
<%--                $body.css('overflow-y', 'hidden');--%>
<%--            }--%>

<%--            function hideModal() {--%>
<%--                $previewModal.modal('hide');--%>
<%--            }--%>

<%--        })()--%>
<%--        // END 图片预览--%>
<%--    </script>--%>

</div>
</div>

</body></html>