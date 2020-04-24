<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="beans.BookBean" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示图书列表</title>
<style type="text/css">
tr{
	height:30px;
}
footer{
	padding:5px;
}
body{

background-image:url('./image/b3.jpg');
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
<div width="98%" align="center">
<h2>所有图书信息</h2>
</div>
<form action="DelServlet" method="post" name="frm">
	<table width="98%" border="0" align="center" cellpadding="0"
					cellspacing="2" bgcolor="#9999cc">
		<tr>
		<th>ID</th>
		<th>图书名称</th>
		<th>价格</th>
		<th>数量</th>
		<th>作者</th>
		<th>删除</th>
		</tr>
		<%
		List<BookBean> list=(List<BookBean>) request.getAttribute("list");
		if(list==null||list.size()<1){
			out.print("<tr><td bgcolor='#FFFFFF' colspan='6'>没有任何图书信息!</td></tr>");
			
		}else{
			for(BookBean book:list){
		%>
			<tr align="center" bgcolor='#6699cc'>
				<td><%=book.getId()%></td>
				<td><%=book.getName() %></td>
				<td><%=book.getPrice() %></td>
				<td><%=book.getBookCount() %></td>
				<td><%=book.getAuthor() %></td>
				<td><input name="delid" type="checkbox"
						class="noborder" value="<%=book.getId()%>"></td>
			</tr>	
			<% 		
			}
		}
		%>	
	</table>
	<footer>
		<input name="checkbox" type="checkbox" class="noborder"
			onClick="CheckAll(frm.delid,frm.checkbox)">[全选/全不选]
			
			
		<input type="button" onClick="checkdel(frm.delid,frm)" value="删除"/>
				<div id="ch" style="display:none">
					<input name="delid" type="checkbox" value="0">
				</div>
			
	</footer>
</form>
	<br/>
    <br/>
    <br/>   
<form action="./welcome.jsp" method="post">
    	<input type="submit" action="./welcome.jsp" value="返回">
    </form>
    
</body>
</html>























