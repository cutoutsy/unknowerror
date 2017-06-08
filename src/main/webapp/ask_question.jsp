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
    <script type="text/javascript" src="/js/Markdown.Converter.js"></script>
    <script type="text/javascript" src="/js/Markdown.Sanitizer.js"></script>
    <script type="text/javascript" src="/js/Markdown.Editor.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/all.css">
    <title>提问</title>
</head>
<body class="ask-page new-topbar">

<%@ include file="header.jsp"%>

<div class="container">
    <div id="content" class="snippet-hidden">
        <div id="mainbar" class="ask-mainbar">
            <form id="post-form" class="post-form" action="<%=path%>/posts/post_newQuestion.action" method="post">
                <input type="hidden" name="qualityBanWarningShown" value="False">
                <input type="hidden" name="postTypeId" value="1">
                <input type="hidden" name="bodyHtml">
                <div id="question-form">
                    <div style="position: relative;">
                        <div class="form-item ask-title">
                            <table class="ask-title-table">
                                <tbody>
                                    <tr>
                                        <td class="ask-title-cell-key"><label for="title">标题</label></td>
                                        <td class="ask-title-cell-value">
                                            <input id="title" name="title" type="text" maxlength="300" tabindex="100" placeholder="你的编程问题是什么" class="ask-title-field js-as-title" data-min-length="15" data-max-length="150" autocomplete="off">
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div id="question-suggestion"></div>
                        </div>
                    </div>

                    <div class="wmd-panel">
                        <div id="wmd-button-bar" class="wmd-button-bar"></div>
                        <textarea class="wmd-input" id="wmd-input" name="body" cols="92" rows="15" tabindex="101" data-min-length></textarea>
                        <div class="grippie" style="margin-right: 0px;"></div>
                    </div>

                    <div class="f1" style="margin-top: 8px; height: 24px;">&nbsp;</div>

                    <div id="wmd-preview" class="wmd-panel wmd-preview"></div>

                    <script type="text/javascript">
                        (function () {
                            var converter = new Markdown.Converter();

                            converter.hooks.chain("preConversion", function (text) {
                                return text.replace(/\b(a\w*)/gi, "*$1*");
                            });

                            converter.hooks.chain("plainLinkText", function (url) {
                                return "This is a link to " + url.replace(/^https?:\/\//, "");
                            });

                            var help = function () { alert("Do you need help?"); }
                            var options = {
                                helpButton: { handler: help },
                                strings: { quoteexample: "无论你引用了什么, 请放到这里" }
                            };
                            var editor = new Markdown.Editor(converter, "", options);

                            editor.run();
                        })();
                    </script>

                    <div style="position: relative">
                        <div style="position: relative">
                            <div class="form-item">
                                <label>标签</label>
                                <input id="tagnames" name="tagnames" type="text" size="60" value tabindex="103" placeholder="at lease one tag, max 5 tags" style="display: none;">
                                <div class="tag-editor" style="width: 658px; height: 35px;">
                                    <span></span>
                                    <input type="text" name="tags" tabindex="103" placeholder="at least one tag, max five tags" style="width: 650px;">
                                    <span></span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="question-only-section">
                        <div class="form-submit cbn">
                            <input id="submit-button" type="submit" value="发布你的问题" tabindex="120">
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<%@ include file="footer.jsp"%>

</body>
</html>