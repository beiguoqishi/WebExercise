<%function main search_list=null hot_search=null%>
<!--[if IE 7.0]>
<div>
<![endif]-->

<div class="clearfix main"><h1 class="big-logo">
    <a href="/"></a>
</h1>

    <ul class="search-list">
        <%foreach $search_list as $search_item%>
            <li class="search-item <%if $search_item@index == 2%>current<%/if%>">
                <a href="<%$search_item%>" title="<%$search_item@key%>"><%$search_item@key%></a>
            </li>
            <%if !$search_item@last%>
                <li class="seq">|</li><%/if%>
        <%/foreach%>
    </ul>

    <form class="search-form" method="get" action="http://www.baidu.com" target="_blank">
        <fieldset>
            <legend class="search-form-title">
                Î¢²©ËÑË÷
            </legend>
            <input class="search-input" type="text" name="word"/>
            <button type="submit" class="search-submit" value="ËÑË÷"></button>
        </fieldset>
    </form>

    <dl class="hot-search-list">
        <dt><%$hot_search.title%></dt>
        <%foreach $hot_search.list as $hot_search_item%>
            <dd><a href="<%$hot_search_item%>" title="<%$hot_search_item@key%>"
                   target="_blank"><%$hot_search_item@key%></a>
            </dd>
        <%/foreach%>
    </dl>
</div>
<!--[if IE 7.0]>
</div>
<![endif ]-->
<%/function%>