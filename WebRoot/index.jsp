<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
	     .left{
            width:200px;
            height:200px;
           
        }
        #manageType{
            text-align: center;
            font-size: medium;
            background-color: rgb(255, 75, 105);
            height:35px;
        }
        #manageNew{
            align-content: center;
            text-align: center;
            font-size: medium;
            background-color:  rgb(255, 75, 105);
            height:35px;
        }
	</style>
  </head>
  
  <body>
  <table width="100%" height="700" border="0" cellpadding="0" cellspacing="0">
      <tr>
          <td width="15%" height="100%" valign="top">
              <div class="left">
              <br/>
                  <div>
                      <div id="manageType"><center>类型管理</center></div><br/>
                      <div id="checkType"><center><a href="s2h/listCategory.action" style="text-decoration: none" target="mainFrame" >类型查看</a></center></div><br/>
                      <div id="publishType"><center><a href="categoryAdd.jsp" style="text-decoration: none" target="mainFrame" >类型发布</a></center></div><br/>
                      <div id="manageNew"><center>新闻管理</center></div><br/>
                      <div id="checkNew"><center><a href="s3h/listNews.action" style="text-decoration: none" target="mainFrame" >新闻查看</a></center></div><br/>
                      <div id="publishNew"><center><a href="s3h/addNews.action" style="text-decoration: none" target="mainFrame" >新闻发布</a></center></div>
                  </div>
              </div>
          </td>
          <td width="80%" valign="top">
              <iframe src="categoryAdd.jsp"   name="mainFrame" frameborder="0" marginheight="0" marginwidth="0" height="700" width="100%">
              </iframe>
          </td>
  </tr>
  </table>
  </body>
</html>
