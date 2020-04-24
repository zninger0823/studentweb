<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>导航页</title>
<style type="text/css">
#div1{margin:0 auto;width:300px;height:100px}
body{text-align:center;
background-image:url('./images/b1.jpg');"
}
</style>

</head>
<body>

<div id="div1">
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<h2>欢迎进入学生信息管理系统</h2>
<h6>（4秒后自动跳转）<a href="./index.jsp">点击立即进入</a></h6>
</div>


<%response.setHeader("Refresh", "4;URL=/Students2/index.jsp"); %>
</body>
</html>