<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>关于页面</h1>
<hr />
<%
String username = (String) session.getAttribute("username");
if (username == null) {
out.print("您还没有登录！5 秒后自动跳转登录界面。");
response.setHeader("Refresh", "5;URL=/Students2/index.jsp");
} else {
out.print("用户名：" + username);
}
%>
<a href="./welcome.jsp">welcome</a>
</body>
</html>