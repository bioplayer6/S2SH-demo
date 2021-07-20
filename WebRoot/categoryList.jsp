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
    
    <title>My JSP 'categoryList.jsp' starting page</title>
    
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
    <h3>发布新闻类型:</h3>
    <table border="1" width="360" cellspacing="0" cellpadding="6">
        <tr align="center">
            <th>序号</th>
            <th>类型名</th>
            <th>操作</th>
        </tr>
        <s:iterator value="categorys" var="category" status="stu">
            <tr align="center">
                <td width="60"><s:property value="#stu.count"/></td>
                <td width="120"><s:property value="#category.categoryName"/></td>
                <td>
                <s:a href="s2h/updatedCategory.action?cid=%{#category.id}">修改</s:a>
                <s:a href="s2h/deleteCategory.action?cid=%{#category.id}">删除</s:a>
                
                </td>
            </tr>   
        </s:iterator>
    </table>
  </body>
</html>
