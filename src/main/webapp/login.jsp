<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>

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
    <title>登录 - Unkown Error</title>
</head>
<body>

<%@ include file="header.jsp"%>

<div class="container">
    <div id="content" class="snippet-hidden">
        <div class="subheader">
            <div id="tabs" style="float: left;">
                <a href="#" title="Login in" class="youarehere">Log in</a>
                <a href="#" title="Sign up"> Sign up</a>
            </div>
        </div>
        <div id="login-page">
            <div id="explanation-text">Unknow Error是一个编程问答网站，欢迎登录</div>
            <div id="formContainer">
                <div id="openid-buttons">
                    <div class="major-provider google-login" data-provider='google' data-oauthserver='https://accounts.google.com/o/oauth2/auth' data-oauthversion='2.0'>
                        <div class="icon-container"><span class="icon" style=""></span></div>
                        <div class="text"><span>QQ</span></div>
                        <br class="cbt"/>
                    </div>
                    <div class="major-provider facebook-login" data-provider='facebook' data-oauthserver='https://www.facebook.com/v2.0/dialog/oauth' data-oauthversion='2.0'>
                        <div class="icon-container"><span class="icon" style=""></span></div>
                        <div class="text"><span>Github</span></div>
                        <br class="cbt"/>
                    </div>
                </div>
                <div class="or-container">
                    <hr class="or-hr">
                    <div id="or">or</div>
                </div>
                <form id="login-form" action="<%=path%>/users/user_login.action" method="post">
                    <label for="email">邮箱</label><br/>
                    <input type="email" name="emailHash" id="email" size="30" maxlength="100" placeholder="you@example.org"/><br/>
                    <label for="password">密码</label><br/>
                    <input type="password" name="password" id="password" placeholder="********"/><br/>
                    <a id="forgot-pw" class="fr" href="/users/account-recovery">forgot?</a>
                    <br class="cbt"/>
                    <a id="more-options-link">more login options</a>
                    <input class="fr" type="submit" id="submit-button" name="submit-button" value="登录"/>
                </form>
            </div>

            <div id="switch">
                没有账号?
                <a href="./logup.jsp">注册</a>
            </div>
        </div>
    </div>
</div>

<%@ include file="footer.jsp"%>

</body>
</html>