<%function header plaza_content_list=null apps_list=null app_recommends=null messages=null account=null%>
<div class="header-container">
    <div class="header">
        <a href="" class="logo"></a>

        <ul class="header-nav">
            <li class="home">
                <a href="" class="header-nav-link">首页</a>
            </li>
            <li class="plaza">
                <a href="" class="header-nav-link">
                    <span class="header-nav-name">广场</span>
                    <span class="header-nav-nail"></span>
                </a>

                <div class="clearfix drop-down plaza-content">
                    <p class="drop-down-header plaza-content-header">
                        <span>广场</span>
                        <a href="">微博精选</a>
                    </p>
                    <ul class="clearfix plaza-content-list drop-down-content-list">
                        <%foreach $plaza_content_list as $plaza_content_item%>
                            <li>
                                <a href="<%$plaza_content_item.url%>">
                                    <img src="<%$plaza_content_item.bg_url%>" alt="<%$plaza_content_item.title%>"
                                         width="16" height="16"/>
                                    <%$plaza_content_item.title%>
                                </a>
                            </li>
                        <%/foreach%>
                    </ul>
                    <p class="clearfix plaza-content-more">
                        <a href="">查看更多有趣内容</a>
                    </p>
                </div>
            </li>
            <li class="app">
                <a href="" class="header-nav-link">
                    <span class="header-nav-name">应用</span>
                    <span class="header-nav-nail"></span>
                </a>

                <div class="clearfix drop-down apps">
                    <ul class="clearfix apps-list drop-down-content-list">
                        <%foreach $apps_list as $app_item%>
                            <li>
                                <a href="<%$app_item.url%>" title="<%$app_item.title%>">
                                    <img src="<%$app_item.img_url%>" alt="<%$app_item.title%>" width="16" height="16"/>
                                    <%$app_item.title%>
                                </a>
                            </li>
                        <%/foreach%>
                    </ul>
                    <div class="app-recommends">
                        <p class="app-recommends-header">
                            <span class="app-recommends-header-title">推荐应用</span>
                            <span class="app-recommends-header-more">
                                <a href="">管理应用</a>
                                <span class="sep">|</span>
                                <a href="">浏览更多</a>
                            </span>
                        </p>
                        <ul class="clearfix app-recommends-list">
                            <%foreach $app_recommends as $app_recommend%>
                                <li class="clearfix app-recommends-item">
                                    <div>
                                        <a href="<%$app_recommend.url%>" title="<%$app_recommend.title%>"
                                           class="app-recommends-item-bg">
                                        </a>
                                        <img src="<%$app_recommend.img_url%>"/>
                                    </div>

                                    <a href="<%$app_recommend.url%>"
                                       class="app-recommends-item-title"><%$app_recommend.title%></a>

                                    <p class="clearfix"><em></em></p>
                                </li>
                            <%/foreach%>
                        </ul>
                    </div>
                </div>
            </li>
        </ul>

        <p class="search">
            <input class="search-input" type="text"/>
            <a href="" class="search-button"></a>
        </p>

        <ul class="person">
            <li>
                <a href="" class="header-nav-link"><%$account.username%></a>
            </li>
            <li>
                <a href="" class="header-nav-link">手机</a>
            </li>
            <li>
                <a href="" class="header-nav-link">找人</a>
            </li>
            <li>
                <a href="" class="header-nav-link">
                    <span class="header-nav-name">消息</span>
                    <span class="header-nav-nail"></span>
                </a>

                <div class="clearfix messages drop-down">
                    <ul class="drop-down-content-list">
                        <%foreach $messages as $message%>
                            <li>
                                <a href="<%$message.url%>"><%$message.title%></a>
                            </li>
                        <%/foreach%>
                    </ul>
                </div>

            </li>
            <li class="account">
                <a href="" class="header-nav-link">
                    <span class="header-nav-name">帐号</span>
                    <span class="header-nav-nail"></span>
                </a>

                <div class="clearfix account-item-list drop-down">
                    <dl class="clearfix account-item username">
                        <dt>
                            <img src="<%$account.image%>" alt="<%$account.username%>" height="30" width="30"/>
                        </dt>
                        <dd>
                            <a href=""><%$account.username%></a>
                        </dd>
                    </dl>

                    <ul class="clearfix account-item account-set drop-down-content-list">
                        <%foreach $account.account_settings as $account_set_item%>
                            <li>
                                <a href="<%$account_set_item.url%>" title="<%$account_set_item.title%>" target="_blank">
                                    <img src="<%$account_set_item.img_url%>" alt="<%$account_set_item.title%>"
                                         width="16" height="16"/>
                                    <%$account_set_item.title%>
                                </a>
                            </li>
                        <%/foreach%>
                    </ul>

                    <ul class="clearfix account-item account-tools drop-down-content-list">
                        <%foreach $account.account_tools as $account_tool%>
                            <li>
                                <a href="<%$account_tool.url%>" title="<%$account_tool.title%>">
                                    <img src="<%$account_tool.img_url%>" alt="<%$account_tool.title%>" width="16"
                                         height="16"/>
                                    <%$account_tool.title%>
                                </a>
                            </li>
                        <%/foreach%>
                    </ul>

                    <p class="clearfix exit">
                        <a href="<%$account.logout.url%>" title="<%$account.logout.title%>">
                            <img src="<%$account.logout.img_url%>" alt="<%$account.logout.title%>" width="16"
                                 height="16"/>
                            <%$account.logout.title%>
                        </a>
                    </p>
                </div>
            </li>
        </ul>
    </div>
</div>
<%/function%>

