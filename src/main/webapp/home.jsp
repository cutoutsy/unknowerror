<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.opensymphony.xwork2.util.*" %>
<%@ page import="java.util.Date" %>
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
        $(document).ready(function () {
           var currentDate = new Date;
           var currentSec = currentDate.getTime()/1000;
           var relativeTime = $(".relativetime");
           for(var index = 0; index < relativeTime.length; index++){
               var $oneRelativeTime = $(relativeTime[index]);
               var oneDate = $oneRelativeTime.attr("title");
               oneDate = "20" + oneDate.substring(0, oneDate.length-4).replace(/-/g, "/");
               var oneCurrentSec = new Date(oneDate).getTime()/1000;
               var value = "";
               if (currentSec - oneCurrentSec < 60){
                   value = Math.floor(currentSec-oneCurrentSec).toString()+" 秒";
               }else if(currentSec - oneCurrentSec>= 60 && currentSec - oneCurrentSec< 3600){
                    value = Math.floor((currentSec-oneCurrentSec)/60).toString()+" 分";
               }else if(currentSec - oneCurrentSec>=3600 && currentSec - oneCurrentSec < 3600*24){
                   value = Math.floor((currentSec-oneCurrentSec)/3600).toString()+" 小时";
               }else if(currentSec - oneCurrentSec >= 3600*24){
                   value = Math.floor((currentSec-oneCurrentSec)/(3600*24)).toString()+" 天";
               }
               $oneRelativeTime.html(value+ " 前");
           }

            var allposttags = $(".post-tags");
            for(var index = 0; index < allposttags.length; index++){
                var $oneposttags = $(allposttags[index]);
                var tagarray = allposttags[index].value.split(",");
                for(var index1 = 0; index1 < tagarray.length; index1++){
                    var onetag = "<a href=\"./" + tagarray[index1] + "\" class=\"post-tag\" title rel=\"tag\">" + tagarray[index1] + "</a>";
                    $oneposttags.before(onetag);
                }
            }
        });
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
                    <s:iterator value="newPost" var="post">
                        <div class="question-summary narrow" id="question-summary-36112979">
                            <div onclick="window.location.href='/post/post_showOneQuestion.action?pid=<s:property value="#post.id" />'" class="cp">
                                <div class="votes">
                                    <div class="mini-counts"><span title="0 votes"><s:property value="#post.viewCount" /></span></div>
                                    <div>votes</div>
                                </div>
                                <div class="status unanswered">
                                    <div class="mini-counts"><span title="0 answers"><s:property value="#post.answerCount" /></span></div>
                                    <div>answers</div>
                                </div>
                                <div class="views">
                                    <div class="mini-counts"><span title="3 views">3</span></div>
                                    <div>views</div>
                                </div>
                            </div>
                            <div class="summary">
                                <h3><a href='/post/post_showOneQuestion.action?pid=<s:property value="#post.id" />' class="question-hyperlink"><s:property value="#post.title" /></a> </h3>
                                <div class="tags">
                                    <input type="hidden" class="post-tags" value="<s:property value='#post.tags' />">
                                </div>
                                <div class="started">
                                    <a href="#" class="started-link">提问&nbsp;<span title="<s:property value='#post.creationDate' />" class="relativetime"></span></a>
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
                    <div class="summarycount al"><s:property value="#session.totalQuestions" /></div>
                    <p>问题</p>
                </div>
                <div class="aside-cta" role="navigation" aria-label="ask new question">
                    <a href="/ask_question.jsp" class="btn-outlined">提问</a>
                </div>
            </div>
            <div class="module js-gps-related-tags" id="related-tags">
                <h4 id="h-related-tags">相关标签</h4>
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
                <h4><a href="#" class="js-gps-track">网络热门问题</a></h4>
                <ul>
                    <li><div class="favicon favicon-tex"></div>
                        <a href="#" class="js-gps-track">关于Js根据字符串生成Date对象</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<%@ include file="footer.jsp"%>

</body>
</html>