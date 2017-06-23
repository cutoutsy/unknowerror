<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>

<header class="so-header _fixed">
    <div class="-container">
        <div class="-main">
            <a href="http://unkonwnerror.cn" class="-logo">
                <span class="-img">NoErrorFound</span>
            </a>
            <nav class="navigation">
                <ol class="-list">
                    <li class="-item _current"><a id="nav-question" href="./question.jsp" class="-link js-gps-track">问题</a></li>
                    <li class="-item"><a id="nav-jobs" href="./question" class="-link js-gps-track">工作</a></li>
                    <li class="-item"><a id="nav-docs" href="./question" class="-link js-gps-track">文档</a></li>
                    <li class="-item"><a id="nav-tags" href="./question" class="-link js-gps-track">标签</a></li>
                    <li class="-item"><a id="nav-users" href="./question" class="-link js-gps-track">用户</a></li>
                </ol>
            </nav>
            <form id="search" action="/search" method="get" class="searchbar" autocomplete="off" role="search">
                <svg role="icon" class="svg-icon iconSearch" viewBox="0 0 18 18" width="18" height="18">
                    <path d="M12.864 11.321L18 16.5 16.5 18l-5.178-5.136v-.357a7 7 0 1 1 1.186-1.186h.356zM7 12A5 5 0 1 0 7 2a5 5 0 0 0 0 10z"></path>
                </svg>
                <input name="q" type="text" placeholder="Search..." value tabindex="1" autocomplete="off" maxlength="240" class="f-input js-search-field">
                <button type="submit" class="btn js-search-submit">
                    <svg viewBox="0 0 18 18" width="18" height="18" role="icon">
                        <path  d="M12.864 11.32h-.813l-.288-.277A6.66 6.66 0 0 0 13.38 6.69a6.69 6.69 0 1 0-6.69 6.69 6.66 6.66 0 0 0 4.354-1.617l.278.288v.813L16.467 18 18 16.467l-5.136-5.146zm-6.174 0a4.625 4.625 0 0 1-4.632-4.63A4.625 4.625 0 0 1 6.69 2.058a4.625 4.625 0 0 1 4.63 4.632 4.625 4.625 0 0 1-4.63 4.63z"></path>
                    </svg>
                </button>
            </form>
        </div>

        <s:if test="#session.user.displayName != null">
            <div class="-actions">
                <a href="/users/4763974/cutoutsy/" class="my-profile js-gps-track">
                    <div class="gravatar-wrapper-24" title="cutoutsy">
                        <img src="https://i.stack.imgur.com/ur0tv.jpg?s=48&g=1" alt width="24" height="24" class="-avatar js-avatar-me">
                    </div>
                    <div class="-rep js-header-rep" title="your reputation: 1">1</div>
                    <div class="-badges"><span title="1 bronze badge">
                        <span class="badge3">&#9679;</span>
                        <span class="badgecount">1</span>
                    </span> </div>
                </a>
                <nav class="secondary-nav">
                    <div class="-dialog-container js-topbar-dialog-corral">
                        <div class="topbar-dialog siteSwitcher-dialog dno">
                            <div class="header"><h3><a href="http://unknownerror.cn">当前社区</a></h3></div>
                            <div class="modal-content current-site-container"></div>
                        </div>
                        <div class="topbar-dialog help-dialog js-help-dialog dno"></div>
                    </div>
                    <ol class="-list">
                        <li class="-item">
                            <a href="#" class="-link js-inbox-button" title="最近收到消息">
                                <svg class="svg-icon iconInbox" viewBox="0 0 20 18" width="20" height="18" role="icon">
                                    <path d="M15.19 1H4.63a1.92 1.92 0 0 0-1.85 1.35L0 10.79V15a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-4.21l-2.87-8.44A2 2 0 0 0 15.19 1zm-.28 10l-2 2h-6l-2-2H1.96L4.4 3.68A1 1 0 0 1 5.35 3h9.12a1 1 0 0 1 .95.68L17.86 11h-2.95z"></path>
                                </svg>
                                <span class="indicator-badge js-unread-count_important" style="display: none;"></span>
                            </a>
                        </li>
                        <li class="-item">
                            <a href="#" class="-link js-achievements-button" title="最近获得的成就：声望，徽章和特权">
                                <svg class="svg-icon iconAchievements" viewBox="0 0 18 18" width="18" height="18" role="icon">
                                    <path d="M15 2V1H3v1H0v4c0 1.6 1.4 3 3 3v1c.4 1.5 3 2.6 5 3v2H5s-1 1.5-1 2h10c0-.4-1-2-1-2h-3v-2c2-.4 4.6-1.5 5-3V9c1.6-.2 3-1.4 3-3V2h-3zM3 7c-.5 0-1-.5-1-1V4h1v3zm8.4 2.5L9 8 6.6 9.4l1-2.7L5 5h3l1-2.7L10 5h2.8l-2.3 1.8 1 2.7h-.1zM16 6c0 .5-.5 1-1 1V4h1v2z"></path>
                                </svg>
                                <span class="indicator-badge js-unread-count _positive" style="display:none;"></span>
                            </a>
                        </li>
                        <li class="-item">
                            <a href="#" class="-link js-help-button" title="帮助中心和其他资源">
                                <svg class="svg-icon iconHelp" viewBox="0 0 18 18" width="18" height="18" role="icon">
                                    <path d="M9 1a8 8 0 1 0 0 16.001A8 8 0 0 0 9 1zm.812 12.126c-.02.716-.55 1.157-1.238 1.137-.659-.02-1.177-.49-1.157-1.209.02-.715.566-1.17 1.225-1.15.691.021 1.194.507 1.17 1.222zm1.956-5.114c-.168.237-.546.542-1.02.912l-.527.361c-.257.197-.417.43-.502.695-.044.141-.076.507-.084.752-.004.048-.032.156-.181.156H7.883c-.165 0-.185-.096-.18-.144.023-.667.12-1.218.397-1.66.374-.594 1.426-1.221 1.426-1.221.161-.12.286-.25.382-.39.177-.24.321-.51.321-.8 0-.333-.08-.65-.293-.915-.249-.31-.518-.458-1.036-.458-.51 0-.808.257-1.021.594-.213.338-.177.735-.177 1.097H5.746c0-1.366.357-2.238 1.112-2.752.51-.35 1.162-.502 1.921-.502.996 0 1.788.184 2.487.715.647.49.988 1.181.988 2.113 0 .575-.2 1.057-.486 1.447z"></path>
                                </svg>
                            </a>
                        </li>
                        <li class="-item">
                            <a href="#" class="-link js-site-switcher-button js-gps-track" title="list">
                                <svg class="svg-icon iconHelp" viewBox="0 0 18 19" width="18" height="19" role="icon">
                                    <path d="M1 13a2 2 0 0 0 2 2h8v3l3-3h1a2 2 0 0 0 2-2v-2H1v2zM15 1H3a2 2 0 0 0-2 2v2h16V3a2 2 0 0 0-2-2zM1 6h16v4H1V6z"></path>
                                </svg>
                            </a>
                        </li>
                    </ol>
                </nav>
            </div>
        </s:if>
        <s:else>
            <div class="-actions">
                <nav class="secondary-nav">
                    <div class="-dialog-container js-topbar-dialog-corral">
                        <div class="topbar-dialog siteSwitcher-dialog dno">
                            <div class="header"><h3><a href="http://unknownerror.cn">当前社区</a></h3></div>
                            <div class="modal-content current-site-container"></div>
                        </div>
                        <div class="topbar-dialog help-dialog js-help-dialog dno"></div>
                    </div>
                    <ol class="-list">
                        <li class="-item">
                            <a href="#" class="-link js-help-button" title="帮助中心和其他资源">
                                <svg class="svg-icon iconHelp" viewBox="0 0 18 18" width="18" height="18" role="icon">
                                    <path d="M9 1a8 8 0 1 0 0 16.001A8 8 0 0 0 9 1zm.812 12.126c-.02.716-.55 1.157-1.238 1.137-.659-.02-1.177-.49-1.157-1.209.02-.715.566-1.17 1.225-1.15.691.021 1.194.507 1.17 1.222zm1.956-5.114c-.168.237-.546.542-1.02.912l-.527.361c-.257.197-.417.43-.502.695-.044.141-.076.507-.084.752-.004.048-.032.156-.181.156H7.883c-.165 0-.185-.096-.18-.144.023-.667.12-1.218.397-1.66.374-.594 1.426-1.221 1.426-1.221.161-.12.286-.25.382-.39.177-.24.321-.51.321-.8 0-.333-.08-.65-.293-.915-.249-.31-.518-.458-1.036-.458-.51 0-.808.257-1.021.594-.213.338-.177.735-.177 1.097H5.746c0-1.366.357-2.238 1.112-2.752.51-.35 1.162-.502 1.921-.502.996 0 1.788.184 2.487.715.647.49.988 1.181.988 2.113 0 .575-.2 1.057-.486 1.447z"></path>
                                </svg>
                            </a>
                        </li>
                        <li class="-item">
                            <a href="#" class="-link js-site-switcher-button js-gps-track" title="list">
                                <svg class="svg-icon iconHelp" viewBox="0 0 18 19" width="18" height="19" role="icon">
                                    <path d="M1 13a2 2 0 0 0 2 2h8v3l3-3h1a2 2 0 0 0 2-2v-2H1v2zM15 1H3a2 2 0 0 0-2 2v2h16V3a2 2 0 0 0-2-2zM1 6h16v4H1V6z"></path>
                                </svg>
                            </a>
                        </li>
                    </ol>
                </nav>
                <div class="-ctas">
                    <a href="/login.jsp" class="login-link btn-clear" rel="nofollow">登录</a>
                    <a href="/logup.jsp" class="login-link btn" rel="nofollow">注册</a>
                </div>
            </div>
        </s:else>


    </div>
</header>

