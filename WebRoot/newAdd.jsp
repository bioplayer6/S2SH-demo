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
    
    <title>My JSP 'newAdd.jsp' starting page</title>
    
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
    <h3>发布新闻:</h3>
    <s:form action="addedNews" namespace="/s3h">
    <table border="1" width="360" cellspacing="0" cellpadding="6">
        <tr>
            <td>标题</td>
            <td><s:textfield name="news.title" theme="simple"/></td>
        </tr>
        <tr>
            <td>类型</td>
            <td><s:select name="cid" list="categorys" listKey="id" listValue="categoryName" headerValue="---请选择类型---" headerKey="-1" theme="simple"/></td>
        </tr>
        <tr>
            <td>内容</td>
            <td><s:textarea name="news.content" cols="40" rows="10" theme="simple"/> </td>
        </tr>
        <tr>
            <td>来源</td>
            <td><s:textfield theme="simple" name="news.origin"/></td>
        </tr>
        <tr>
            <td colspan="2"><s:submit value="添加" theme="simple"/></td>
        </tr>
    </table>
    </s:form>
  </body>
</html>
