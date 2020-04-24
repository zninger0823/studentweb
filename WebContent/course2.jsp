<%@page import="beans.Coursetwo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="beans.*,java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>课程信息</title>
<style type="text/css">
a {text-decoration:none;color:#000;}
body{
background-image:url('./image/b4.jpg');
}
</style>
</head>
<body>
	
	<form action="./CourseServlet" method="post" >
	
<%
	 List<Coursetwo> list = (List<Coursetwo>)request.getAttribute("list");
	 if(list == null || list.size() < 1){
	 out.print("没有数据");
	 } else {
%>

<br/>
<br/>
<br/>
<table align="center" width="700" border="2px solid #20B2AA"  cellpadding="0" cellspacing="0">

	<td align="center" colspan="5" bgcolor="#9999cc">
		<h2>所有课程信息</h2>
	</td>
</tr>
<tr align="center" bgcolor="#6699cc">
	<th><b>课程编号</b></th>	
	<td><b>课程名称</b></td>
	<td><b>教师名称</b></td>
	<td><b>课程教室</b></td>
	<td><b>课程时间</b></td>
	
</tr>
<%
for (Coursetwo course2 : list) {
%>
	<tr align="center" bgcolor="#6699cc">
	
	
		<td><%=course2.getId() %></td>
		<td><%=course2.getCoursename()%></td>
		<td><%=course2.getCourseteacher()%></td>
		<td><%=course2.getCourseclass()%></td>
		<td><%=course2.getCoursetime()%></td>
		
	</tr>
<%
}
%>
</table>
<%
}
%>
</form>
<a href="adm_menu.jsp" style="background-image:url(images/jr.png)">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><br>
<br/>
<br/>
<a href="welcome.jsp">返回学生页面</a>
</body>
</html>