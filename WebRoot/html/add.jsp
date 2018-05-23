<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">


     
  </head>
  
  <body>
     <div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
		closed="true"  buttons="#dlg-buttons">
	<div class="ftitle">User Information</div>
	<form id="fm" method="post">
		<div class="fitem">
			<label>First Name:</label>
			<input name="firstname" class="easyui-validatebox" required="true">
		</div>
		<div class="fitem">
			<label>Last Name:</label>
			<input name="lastname" class="easyui-validatebox" required="true">
		</div>
		<div class="fitem">
			<label>Phone:</label>
			<input name="phone">
		</div>
		<div class="fitem">
			<label>Email:</label>
			<input name="email" class="easyui-validatebox" validType="email">
		</div>
	</form>
</div>
<div id="dlg-buttons">
	<a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser()">Save</a>
	<a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a>
</div>
  
     
     
  </body>
</html>
