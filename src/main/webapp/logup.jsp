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
    <title>注册 - Unknow Error Site</title>
</head>
<body>

<%@ include file="header.jsp"%>
<div class="container">
    <div id="content" class="snippet-hidden">
        <div class="subheader">
            <div id="tabs" style="float: left;">
                <a href="#" title="Login in">Log in</a>
                <a href="#" title="Sign up" class="youarehere"> Sign up</a>
            </div>
        </div>
        <div id="signup-page">
            <div id="explanation-text" style="line-height: 1.8; width: 65%;margin: 0 auto 20px;">创建一个账户，免费且只需很短的时间</div>
            <div id="formContainer">
                <div id="openid-buttons">
                    <div class="major-provider   google-login" data-provider='google' data-oauthserver='https://accounts.google.com/o/oauth2/auth' data-oauthversion='2.0'>
                        <div class="icon-container"><span class="icon" style=""></span></div>
                        <div class="text"><span>QQ</span></div>
                        <br class="cbt"/>
                    </div>
                    <div class="major-provider   facebook-login" data-provider='facebook' data-oauthserver='https://www.facebook.com/v2.0/dialog/oauth' data-oauthversion='2.0'>
                        <div class="icon-container"><span class="icon" style=""></span></div>
                        <div class="text"><span>微信</span></div>
                        <br class="cbt"/>
                    </div>
                </div>
                <div class="or-container">
                    <hr class="or-hr">
                    <div id="or">or</div>
                </div>
                <form id="login-form" action="<%=path%>/user/user_logup.action" method="POST">
                    <div id="se-login-fields">
                        <label for="display-name">昵称</label>
                        <br/>
                        <input type="text" name="displayName" id="display-name" placeholder="J. Doe">
                        <label for="email">邮箱</label><br/>
                        <input type="email" name="emailHash" id="email" size="30" maxlength="100" placeholder="you@example.org"/><br/>
                        <label for="password">密码</label><br/>
                        <input type="password" name="password" id="password" placeholder="********"/><br/>
                    </div>
                    <br class="cbt"/>
                    <a id="more-options-link">more login options</a>
                    <input class="fr" type="submit" id="submit-button" name="submit-button" value="注册"/>
                </form>
                <div class="cnt mutw-text text-centered terms js-terms">
                    By registering, you agree to the privacy and terms of service</div>
            </div>

            <div id="switch">
                已经有账号?
                <a href="./login.jsp">登录</a>
            </div>
        </div>
    </div>
</div>

<%@ include file="footer.jsp"%>

</body>
</html>