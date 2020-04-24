<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Refresh" content="1">
<title>成功</title>
<style type="text/css">
body{

background-image:url('./image/b2.jpg');
}
header{width:1002px;}
footer{clear:both;height:53px;text-align:center;}
article{float:right;width:800px;heignt:400px;}
aside{whidth:200px;height:400px;}
a {text-decoration:none;color:#000;}
nav{background-color:#6699CC;}
.ellipsizeme{text-overflow: ellipsis;}
</style>
</head>
<body>
<header></header>
<nav>
<h1>学生页面</h1>
<br/>
<hr/>
</nav>
<aside>
<div class="ellipsizeme" align="center">
	<table>
<tr>
	<td><img src="image/cc.png" width="20px" height="20px"><a href="./FindServlet">&nbsp;&nbsp;查询图书</a></td>
</tr>	
<tr>
	<td><img src="image/kb.png" width="20px" height="20px"><a href="./CourseServlet">&nbsp;&nbsp;查询课表</a></td>	
</tr>
<tr>
	<td><img src="image/zy.png" width="20px" height="20px"><a href="./work.jsp">&nbsp;&nbsp;提交作业</a></td>
</tr>
<tr>
	<td title="这是一个待更新的项目"><img src="image/gr.png" width="20px" height="20px"><a href="#">&nbsp;&nbsp;个人信息</a></td>
</tr>

</table>
</div>
<br/>

	<form action="./Exit" method="post">
	<input name="exit" type="hidden" value="user">
    <input type="submit" value="返回">
    </form>
    </aside>
    <article></article>
    <footer>
    <jsp:useBean id="date" class="beans.DateBean" scope="application"></jsp:useBean>
<h4><jsp:getProperty property="dateTime" name="date" /><jsp:getProperty property="week" name="date" /></h4>



<br/>
<br/>
</footer>

</body>

</html>