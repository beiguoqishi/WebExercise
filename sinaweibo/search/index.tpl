<!DOCTYPE html>
<%include file="module.tpl"%>
<%call module module='head'%>
<%call module module='header'%>
<%call module module='main'%>
<html>
<head>
<%call head csses=['search.css']%>
</head>
<body>
<%call header  plaza_content_list=$data.plaza_content_list apps_list=$data.apps_list app_recommends=$data.app_recommends messages=$data.messages account=$data.account%>
<%call main search_list=$data.search_list hot_search=$data.hot_search%>
<script type="text/javascript" src="https://getfirebug.com/firebug-lite.js"></script>
</body>
</html>

