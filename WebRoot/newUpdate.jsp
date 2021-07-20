<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newUpdate.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h3>修改新闻:</h3>
    <s:form action="updateNews" namespace="/s3h">
    <table border="1" width="360" cellspacing="0" cellpadding="6">
        <tr>
            <td>标题</td>
            <td><s:textfield name="news.title" theme="simple"/></td>
        </tr>
        <tr>
            <td>类型</td>
            <td><s:select name="cid" list="categorys" listKey="id" listValue="categoryName" value="news.category.id" theme="simple"/></td>
        </tr>
        <tr>
            <td>内容</td>
            <td><s:textarea name="news.content" cols="40" rows="10" theme="simple"/> </td>
        </tr>
        <tr>
            <td>来源</td>
            <td><s:textfield name="news.origin" theme="simple"/></td>
        </tr>
        <tr>
            <td colspan="2"><s:submit value="更新" theme="simple"/></td>
        </tr>
        <s:hidden name="news.issueTime" value="%{news.issueTime}"/>
        <s:hidden name="news.id" value="%{news.id}"/>
    </table>
    </s:form>
  </body>
</html>
