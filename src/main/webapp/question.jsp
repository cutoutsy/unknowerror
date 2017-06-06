<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <script type="text/javascript" src=""></script>
    <link rel="stylesheet" type="text/css" href="/css/all.css">
    <title>最新问题 - Unknow Error</title>
</head>
<body class="question-page new-topbar">

<%@ include file="header.jsp"%>

<div class="container">
    <div id="content" class="snippet-hidden">
        <div id="mainbar" role="main" aria-labelledby="h-all-questions">
            <div class="subheader">
                <h1 id="h-all-questions">所有问题</h1>
                <div id="tabs">
                    <a href="#" title="Login in" class="youarehere">最新</a>
                    <a href="#" title="Sign up" >特征</a>
                    <a href="#" title="Sign up" >经常</a>
                    <a href="#" title="Sign up" >投票</a>
                    <a href="#" title="Sign up" >活跃</a>
                    <a id="tab-switch" href="/unanswered" data-nav-xhref title="切换到未回答">未回答</a>
                </div>
            </div>
            <div id="questions">
                <div class="question-summary" id="question-summary-43421553">
                    <div class="statscontainer">
                        <div class="statsarrow"></div>
                        <div class="stats">
                            <div class="vote">
                                <div class="votes">
                                    <span class="vote-count-post"><strong>0</strong></span>
                                    <div class="viewcount">votes</div>
                                </div>
                            </div>
                            <div class="status unanswered"><strong>0</strong>
                                answers
                            </div>
                        </div>
                        <div class="views " title="2 views">2 views</div>
                    </div>
                    <div class="summary">
                        <h3><a href="./single_question.jsp">Laravel 5.4 password reset using ajax</a></h3>
                        <div class="excerpt">

                            I have this code:

                            $.ajax({
                            url:"/password/email",
                            data: {
                            _token: $(".modal-forgotpass-content input[name='_token']").val(),
                            ...

                        </div>
                        <div class="tags">
                            <a href="#" class="post-tag" title rel="tag">php</a>
                            <a href="#" class="post-tag" title rel="tag">ajax</a>
                            <a href="#" class="post-tag" title rel="tag">laravel</a>
                            <a href="#" class="post-tag" title rel="tag">laravel-5.4</a>
                        </div>
                        <div class="started fr">
                            <div class="user-info">
                                <div class="user-action-time">asked
                                    <span class="relativetime">27 secs ago</span>
                                </div>
                                <div class="user-gravater32">
                                    <a href="#">
                                        <div class="gravatar-wrapper-32">
                                            <img src="https://www.gravatar.com/avatar/59b9f2d74f135544e1f698040a877c3c?s=32&d=identicon&r=PG&f=1" alt width="32" height="32">
                                        </div>
                                    </a>
                                </div>
                                <div class="user-details">
                                    <a href="#">Ilham Guezzoule</a>
                                    <div class="-flair">
                                        <span class="reputation-score" title="reputation score" dir="ltr">1</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="sidebar" role="complementary" aria-label="sidebar">
            <div class="module" id="questions-count">
                <div class="-details">
                    <div class="summarycount al">13,683,883</div>
                    <p>questions</p>
                </div>
                <div class="aside-cta" role="navigation" aria-label="ask new question">
                    <a href="/ask_question.jsp" class="btn-outlined">提问</a>
                </div>
            </div>
            <div class="module js-gps-related-tags" id="related-tags">
                <h4 id="h-related-tags">Related Tags</h4>
                <div>
                    <a href="#" class="post-tag no-tag-menu js-gps-track
						">javascript</a>&nbsp;
                    <span class="item-multiplier">
							<span class="item-multiplier-x">x</span>&nbsp;
							<span class="item-multiplier-count">1364629</span>
						</span>
                </div>
                <div>
                    <a href="#" class="post-tag no-tag-menu js-gps-track
						">java</a>&nbsp;
                    <span class="item-multiplier">
							<span class="item-multiplier-x">x</span>&nbsp;
							<span class="item-multiplier-count">1241565</span>
						</span>
                </div>
                <div>
                    <a href="#" class="post-tag no-tag-menu js-gps-track
						">c#</a>&nbsp;
                    <span class="item-multiplier">
							<span class="item-multiplier-x">x</span>&nbsp;
							<span class="item-multiplier-count">1082020</span>
						</span>
                </div>
            </div>
            <div id="hot-network-questions" class="module tex2jav_ignore">
                <h4><a href="#" class="js-gps-track">Hot Network Questions</a></h4>
                <ul>
                    <li><div class="favicon favicon-tex"></div>
                        <a href="#" class="js-gps-track">How to change default float options for figures</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<%@ include file="footer.jsp"%>

</body>
</html>