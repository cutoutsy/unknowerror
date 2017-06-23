<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <script type="text/javascript" src="/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript">

    </script>
    <link rel="stylesheet" type="text/css" href="/css/all.css">
    <title>Unknow Error</title>
</head>
<body class="home-page new-topbar">

<%@ include file="header.jsp"%>

<div class="container">
    <div id="content" class="snippet-hidden">
        <div id="mainbar" role="main" aria-labelledby="h-all-questions">
            <div class="subheader">
                <h1 id="h-all-questions">最新问题</h1>
                <div id="tabs">
                    <a href="#" title="Login in" class="youarehere">有趣</a>
                    <a href="#" title="Sign up" >特征</a>
                    <a href="#" title="Sign up" >热门</a>
                    <a href="#" title="Sign up" >本周</a>
                    <a href="#" title="Sign up" >本月</a>
                    <a id="tab-switch" href="/unanswered" data-nav-xhref title="切换到未回答">未回答</a>
                </div>
            </div>
            <div id="qlist-wrapper">
                <div id="question-mini-list">
                    <div class="question-summary narrow" id="question-summary-36112979">
                        <div onclick="window.location.href='./single_question.jsp'" class="cp">
                            <div class="votes">
                                <div class="mini-counts"><span title="0 votes">0</span></div>
                                <div>votes</div>
                            </div>
                            <div class="status unanswered">
                                <div class="mini-counts"><span title="0 answers">0</span></div>
                                <div>answers</div>
                            </div>
                            <div class="views">
                                <div class="mini-counts"><span title="3 views">3</span></div>
                                <div>views</div>
                            </div>
                        </div>
                        <div class="summary">
                            <h3><a href="./single_question.jsp" class="question-hyperlink">Segregate front end from back end</a> </h3>
                            <div class="tags">
                                <a href="./php" class="post-tag" title rel="tag">php</a>
                                <a href="./php" class="post-tag" title rel="tag">jquery</a>
                                <a href="./php" class="post-tag" title rel="tag">html</a>
                                <a href="./php" class="post-tag" title rel="tag">design</a>
                                <a href="./php" class="post-tag" title rel="tag">architecture</a>
                            </div>
                            <div class="started">
                                <a href="#" class="started-link">asked<span title="2017-06-11 12:45:49Z" class="relativetime">1 min ago</span></a>
                                <a href="/users/">user3473535</a>
                                <span class="reputation-score" title="reputation score" dir="1tr">1</span>
                            </div>
                        </div>
                    </div>
                    <s:iterator value="newPost" var="post">
                        <div class="question-summary narrow" id="question-summary-36112979">
                            <div onclick="window.location.href='/post/post_showOneQuestion.action?pid=<s:property value="#post.id" />'" class="cp">
                                <div class="votes">
                                    <div class="mini-counts"><span title="0 votes"><s:property value="#post.viewCount" /></span></div>
                                    <div>votes</div>
                                </div>
                                <div class="status unanswered">
                                    <div class="mini-counts"><span title="0 answers">0</span></div>
                                    <div>answers</div>
                                </div>
                                <div class="views">
                                    <div class="mini-counts"><span title="3 views">3</span></div>
                                    <div>views</div>
                                </div>
                            </div>
                            <div class="summary">
                                <h3><a href="./single_question.jsp" class="question-hyperlink"><s:property value="#post.title" /></a> </h3>
                                <div class="tags">
                                    <a href="./php" class="post-tag" title rel="tag"><s:property value="#post.tags" /></a>
                                    <a href="./php" class="post-tag" title rel="tag">jquery</a>
                                    <a href="./php" class="post-tag" title rel="tag">html</a>
                                    <a href="./php" class="post-tag" title rel="tag">design</a>
                                    <a href="./php" class="post-tag" title rel="tag">architecture</a>
                                </div>
                                <div class="started">
                                    <a href="#" class="started-link">asked<span title="2017-06-11 12:45:49Z" class="relativetime">1 min ago</span></a>
                                    <a href="/users/"><s:property value="#post.ownerDisplayName" /></a>
                                    <span class="reputation-score" title="reputation score" dir="1tr">1</span>
                                </div>
                            </div>
                        </div>
                    </s:iterator>
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