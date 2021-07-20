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
    
    <title>My JSP 'newList.jsp' starting page</title>
    
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
    <s:form action="findNews" namespace="/s3h">
    <center>
    <table border="1" cellpadding="0" cellspacing="0" width="600x" height="100px">
         <tr>
             <td>
                 <center>
                     <s:select name="cid" list="categorys" listKey="id" listValue="categoryName" headerValue="---请选择类型---" headerKey="-1" theme="simple"/>
                     <s:submit value="查看" theme="simple"></s:submit>
                 </center>
             </td>
        </tr>
    </table>
    </center>
    </s:form>
    <table border="1" cellpadding="0" cellspacing="0" width="600x" height="100px">
             <tr>
                 <th>序号</th>
                 <th>标题</th>
                 <th>发布时间</th>
                 <th>类型</th>
                 <th>操作</th>
             </tr>
             <s:iterator value="newses" var="xinwen" status="stu">
            <tr align="center">
                <td width="60"><s:property value="#stu.count" /></td>
                <td width="120"><s:a href="s3h/showNews.action?cid=%{#xinwen.id}"><s:property value="#xinwen.title" /></s:a></td>
                <td width="120"><s:property value="#xinwen.issueTime" /></td>
                <td width="120"><s:property value="#xinwen.category.categoryName" /></td>
                <td>
                <s:a href="s3h/updatedNews.action?cid=%{#xinwen.id}">修改</s:a>
                <s:a href="s3h/deleteNews.action?cid=%{#xinwen.id}">删除</s:a>
                
                </td>
            </tr>   
        </s:iterator>
    </table>
  </body>
</html>
