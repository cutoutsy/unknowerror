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
    <script type="text/javascript" src="/js/Markdown.Converter.js"></script>
    <script type="text/javascript" src="/js/Markdown.Sanitizer.js"></script>
    <script type="text/javascript" src="/js/Markdown.Editor.js"></script>
    <script type="text/javascript" src="/js/jquery-1.12.4.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/all.css">
    <title>问题题目</title>
    <script type="text/javascript">
        $(document).ready(function () {
            var postText = $(".post-text");
            for(var index = 0; index < postText.length; index++){
                var $onePostText = $(postText[index]);
                $onePostText.html($onePostText.text());
            }
            $("#submit-button").click(function(){
                $("#bodyvalue").attr("value", $("#wmd-preview").html());
            });
        });
        $("#submit-button").click(function(){
            window.location.href = '/post/post_showOneQuestion.action?pid='+ <s:property value="onePost.id" />;
        });

    </script>
</head>
<body class="question-page new-topbar">

<%@ include file="header.jsp"%>

<div class="container">
    <div id="content" class="snippet-hidden">
        <div itemscope itemtype="http://schema.org/question">
            <link itemprop="image" href="#">
            <div id="question-header">
                <h1 itemprop="name">
                    <a href="#" class="question-hyperlink"><s:property value="onePost.title" /></a>
                </h1>
                <div class="aside-cta" role="navigation" aria-label="ask new question">
                    <a href="./ask_question.jsp" class="btn-outlined">Ask Question</a>
                </div>
            </div>

            <div id="mainbar" role="main" aria-label="question and answers">
                <div class="question" data-question="43994650" id="question">
                    <table>
                        <tbody>
                        <tr>
                            <td class="votecell">
                                <div class="vote">
                                    <input type="hidden" name="_id_" value="43994650">
                                    <a class="vote-up-off" title="This question shows research effort; it is useful and clear">up vote</a>
                                    <span itemprop="upvoteCount" class="vote-count-post">0</span>
                                    <a class="vote-down-off" title="This question does not show any research effort; it is unclear or not useful">down note</a>
                                    <a class="star-off" href="#" title="Click to mark as favorite question (click agagin to undo)">喜欢</a>
                                    <div class="favoritecount">
                                        <b>1</b>
                                    </div>
                                </div>
                            </td>
                            <td class="postcell">
                                <div>
                                    <div class="post-text" itemprop="text"><s:property value="onePost.body" /></div>
                                    <div class="post-taglist">
                                        <a href="/question/tagged/javascript" class="post-tag js-gps-track" title="show questions tagged 'javascript'" rel="tag">javascript</a>
                                        <a href="/question/tagged/javascript" class="post-tag js-gps-track" title="show questions tagged 'javascript'" rel="tag">jquery</a>
                                        <a href="/question/tagged/javascript" class="post-tag js-gps-track" title="show questions tagged 'javascript'" rel="tag">ajax</a>
                                    </div>
                                    <table class="fw">
                                        <tbody>
                                        <tr>
                                            <td class="vt">
                                                <div class="post-menu">
                                                    <a href="/q/43994650" title="short permalink to this question" class="short-link" id="link-post-43994650">share</a>
                                                </div>
                                            </td>
                                            <td class="post-signature owner">
                                                <div class="user-info">
                                                    <div class="user-action-time">
                                                        asked
                                                        <span title="2017-05-16 07:08:49Z" class="relativetime">8 mins ago</span>
                                                    </div>
                                                    <div class="user-gravatar32">
                                                        <a href="/users/7977178/quackbrick">
                                                            <div class="gravatar-wrapper-32">
                                                                <img src="https://www.gravatar.com/avatar/a0c9904219dc55e9c0d038098667e5b1?s=32&d=identicon&r=PG&f=1" alt width="32" height="32">
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <div class="user-details">
                                                        <a href="/users/7977178/quackbrick"><s:property value="onepost.ownerDisplayName" /></a>
                                                        <div class="-flair">
                                                            <span class="reputation-score" title="reputation score" dir="ltr">1</span>
                                                            <span title="2 bronze badges">
																			<span class="badges3"></span>
																			<span class="badgecount">3</span>
																		</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div id="answers">
                    <a name="tab-top"></a>
                    <div id="answers-header">
                        <div class="subheader answers-subheader">
                            <h2>
                                1 Answer
                                <span style="display: none" itemprop="answersCount">1</span>
                            </h2>
                        </div>
                    </div>
                    <s:iterator value="answers" var="answer">
                    <div id="answers-43994759" class="answers" data-answerid="43994758" itemscope itemtype="http://schema.org/Answer">
                        <table>
                            <tbody>
                            <tr>
                                <td class="votecell">
                                    <div class="vote">
                                        <input type="hidden" name="_id_" value="43994650">
                                        <a class="vote-up-off" title="This question shows research effort; it is useful and clear">up vote</a>
                                        <span itemprop="upvoteCount" class="vote-count-post">0</span>
                                        <a class="vote-down-off" title="This question does not show any research effort; it is unclear or not useful">down note</a>
                                        <div class="favoritecount">
                                            <b>1</b>
                                        </div>
                                    </div>
                                </td>
                                <td class="answercell">
                                    <div class="post-text" itemprop="text"><s:property value="#answer.body" /></div>
                                    <table class="fw">
                                        <tbody>
                                        <tr>
                                            <td class="vt">
                                                <div class="post-menu">
                                                    <a href="/q/43994650" title="short permalink to this question" class="short-link" id="link-post-43994650">share</a>
                                                </div>
                                            </td>
                                            <td class="post-signature owner">
                                                <div class="user-info">
                                                    <div class="user-action-time">
                                                        asked
                                                        <span title="2017-05-16 07:08:49Z" class="relativetime">8 mins ago</span>
                                                    </div>
                                                    <div class="user-gravatar32">
                                                        <a href="/users/7977178/quackbrick">
                                                            <div class="gravatar-wrapper-32">
                                                                <img src="https://www.gravatar.com/avatar/a0c9904219dc55e9c0d038098667e5b1?s=32&d=identicon&r=PG&f=1" alt width="32" height="32">
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <div class="user-details">
                                                        <a href="/users/7977178/quackbrick">
                                                            QuackBrick
                                                        </a>
                                                        <div class="-flair">
                                                            <span class="reputation-score" title="reputation score" dir="ltr">1</span>
                                                            <span title="2 bronze badges">
																			<span class="badges3"></span>
																			<span class="badgecount">3</span>
																		</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    </s:iterator>

                    <form id="post-form"  class="post-form" action="<%=path%>/posts/post_newQuestion.action" method="post">
                        <input type="hidden" id="post-id" name="pid" value='<s:property value="onePost.id"/>' />
                        <input type="hidden" name="postTypeId" value="2" />
                        <input id="bodyvalue" type="hidden" name="body" />
                        <h2 class="space">你的回答</h2>

                        <div class="wmd-panel">
                            <div id="wmd-button-bar" class="wmd-button-bar"></div>
                                <textarea class="wmd-input" id="wmd-input" name="post-text" cols="92" rows="15" tabindex="101" data-min-length></textarea>
                                <div class="grippie" style="margin-right: 0px;"></div>
                        </div>

                        <div class="f1" style="margin-top: 8px; height: 24px;">&nbsp;</div>

                        <div id="wmd-preview" class="wmd-panel wmd-preview"></div>

                        <script type="text/javascript">
                            (function () {
                                var converter2 = new Markdown.Converter();

                                converter2.hooks.chain("preConversion", function (text) {
                                    return text.replace(/\b(a\w*)/gi, "*$1*");
                                });

                                converter2.hooks.chain("plainLinkText", function (url) {
                                    return "This is a link to " + url.replace(/^https?:\/\//, "");
                                });

                                var help = function () { alert("Do you need help?"); }
                                var options = {
                                    helpButton: { handler: help },
                                    strings: { quoteexample: "whatever you're quoting, put it right here" }
                                };
                                var editor2 = new Markdown.Editor(converter2, "", options);

                                editor2.run();
                            })();
                        </script>

                        <div class="form-submit cbt">
                            <input id="submit-button" type="submit" value="发布答案" tabindex="110">
                            <a href="#" class="btn-clear discard-answer dno">discard</a>
                            <p class="privacy-policy-agreement">By posting your answer, you agree to the privacy policy and terms of service</p>
                            <input type="hidden" name="legalLinksShown" value="1">
                        </div>
                    </form>
                </div>
            </div>

            <div id="sidebar" class="show-votes" role="complementary" aria-label="sidebar">
                <div class="module question-stats">
                    <table id="qinfo">
                        <tbody>
                            <tr>
                               <td><p class="label-key">asked</p></td>
                               <td style="padding-left: 10px"><p class="label-key" title="2017-05-30 23:02:46Z"><b>today</b></p></td>
                            </tr>
                            <tr>
                                <td><p class="label-key">viewed</p></td>
                                <td style="padding-left: 10px"><p class="label-key"><b>28 times</b></p></td>
                            </tr>
                            <tr>
                                <td><p class="label-key">active</p></td>
                                <td style="padding-left: 10px"><p class="label-key" title="2017-05-30 23:02:46Z"><b>today</b></p></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="footer.jsp"%>

</body>
</html>