<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Refresh" content="1">
<title>管理员界面</title>
<style type="text/css">

body{

background-image:url('./image/b2.jpg');
}
header{width:1002px;}

footer{clear:both;height:53px;text-align:center;}
article{float:right;width:800px;heignt:450px;}
aside{whidth:200px;height:400px;}
a {text-decoration:none;color:#000;}
nav{background-color:#6699CC;}
</style>
</head>
<body>
<header></header>
<nav>
<h1>管理员页面</h1>
<br/>
<hr/></nav>
<aside>
<div align="center">
	<table>
<tr>
	<td><img src="image/cc.png" width="20px" height="20px"><a href="./admin_showscore.jsp">&nbsp;&nbsp;查询成绩</a></td>
</tr>	
<tr>
	<td><img src="image/lr.png" width="20px" height="20px"><a href="./admin_addscore.jsp">&nbsp;&nbsp;录入成绩</a></td>	
</tr>
<tr>
	<td><img src="image/xg.png" width="20px" height="20px"><a href="./admin_updatescore.jsp">&nbsp;&nbsp;修改成绩</a></td>
</tr>
<tr>
	<td><img src="image/sc.png" width="20px" height="20px"><a href="./admin_updatescore.jsp">&nbsp;&nbsp;删除成绩</a></td>
</tr>
<tr>
	<td><img src="image/ck.png" width="20px" height="20px"><a href="./QueryServlet">&nbsp;&nbsp;查看学生信息</a></td>
</tr>
<tr>
	<td><img src="image/tj.png" width="20px" height="20px"><a href="./admin_adduser.jsp">&nbsp;&nbsp;添加学生信息</a></td>
</tr>

</table>
</div>
<br/>
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
</footer>
</body>
</html>