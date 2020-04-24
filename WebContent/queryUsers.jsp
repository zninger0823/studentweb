<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@page import="beans.*,java.util.List"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>用户列表</title>
<style type="text/css">
.ct{
text-align:center;
}
body{

background-image:url('./image/b4.jpg');
}

</style>
<script type="text/javascript">
 function CheckAll(elementsA,elementsB){
	 
	 for(i=0;i<elementsA.length;i++){
		 elementsA[i].checked=true;
	 }
	 if(elementsB.checked==false){
		 for(j=0;j<elementsA.length;j++){
			 elementsA[j].checked=false;
		 }
		 
	 }
 }
 function checkdel(delid,formname){
	 
	 var flag=false;
	 for(i=0;i<delid.length;i++){
		 if(delid[i].checked){
			 flag=true;
			 break;
		 }
	 }
	 if(!flag){
		 alert("请选择要删除的记录！");
		 return false;
	 }else{
		 if(confirm("确定要删除吗？")){
			 formname.submit();
		 }
	 }
 }


</script>

</head>
<body>
	
	<form action="./DeleteUser" method="post" name="frm">
	<input type="button" onClick="checkdel(frm.delid,frm)" value="删除"/>
	<div id="ch" style="display:none">
		<input name="delid" type="checkbox" value="0">
	</div>
<%
	 List<UserBean> list = (List<UserBean>)request.getAttribute("list");
	 if(list == null || list.size() < 1){
	 out.print("没有数据");
	 } else {
%>


<table align="center" width="700" border="0" class="ct" onclick="javascript:checkT_F()" cellpadding="0" cellspacing="1">
<tr>
	<td align="center" colspan="9" >
		<h2>所有用户信息</h2>
	</td>
</tr>
<tr align="center" bgcolor="#cc6666">
	<th><input name="checkbox" type="checkbox" class="noborder"
			onClick="CheckAll(frm.delid,frm.checkbox)"></th>
	
	<td><b>ID</b></td>
	<td><b>用户名</b></td>
	<td><b>Tel</b></td>
	<td><b>性别</b></td>
	<td><b>Email</b></td>
	<td><b>出生日期</b></td>
	<td><b>修改Tel</b></td>
	<td><b>删除</b></td> 
	
</tr>
<%
for (UserBean userBean : list) {
%>
	<tr align="center" bgcolor="#cc9999">
	
	<td><input name="delid" type="checkbox"
						class="noborder" value="<%=userBean.getId()%>"></td>
		<td><%=userBean.getId()%></td>
		<td><%=userBean.getName()%></td>
		<td><%=userBean.getPassword()%></td>
		 <!-- 三元运算符，checkbox批量删除 -->
		<td><%=userBean.getSex() == 1? "男" : "女"%></td>  
		<td><%=userBean.getEmail()%></td>
		<td><%=userBean.getBirthday()%></td>
		<td><form action="UpdateServlet" method="post">
		 <input type="hidden" name="id" value="<%=userBean.getId()%>" />
		 <input type="text" name="newPassword" maxlength="6" size="6"/>
		 <input type="submit" value="修改" />
		 </form></td> 
		 <td><a href="DeleteServlet?id=<%=userBean.getId()%>">删除</a></td>
	</tr>
<%
}
%>
</table>
<%
}
%>
</form>
<a href="adm_menu.jsp">返回管理页面</a><br>
</body>
</html>