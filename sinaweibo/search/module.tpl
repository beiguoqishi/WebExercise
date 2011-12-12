<%if !isset($MODULES)%>
<%$MODULES = []%>
<%function module module=null%>
<%if $module%>
<%if !isset($MODULES[$module])%>
<%$MODULES[$module] = true%>
<%include file="<%$module%>.tpl"%>
<%/if%>
<%/if%>
<%/function%>
<%/if%>