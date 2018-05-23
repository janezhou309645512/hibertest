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
     <meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- 引入JQuery -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.5.5.2/jquery.min.js"></script>
  <!-- 引入EasyUI -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.5.5.2/jquery.easyui.min.js"></script>
  <!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.5.5.2/locale/easyui-lang-zh_CN.js"></script>
  <!-- 引入EasyUI的样式文件-->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/jquery-easyui-1.5.5.2/themes/default/easyui.css" type="text/css"/>
  <!-- 引入EasyUI的图标样式文件-->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/jquery-easyui-1.5.5.2/themes/icon.css" type="text/css"/>

  </head>
  
  <body>
  <div class="easyui-layout" style="width:100%;height:100%;">
	<div region="west" split="true" title="Navigator" style="width:150px;">
	
	<a href="#" class="easyui-linkbutton" onclick="addTab('google','http://www.google.com')">google</a>
	<a href="#" class="easyui-linkbutton" onclick="addTab('jquery','http://jquery.com/')">jquery</a>
	<a href="#" class="easyui-linkbutton" onclick="addTab('easyui','http://jeasyui.com/')">easyui</a>
	</div>
	<div id="content" region="center" title="Language" style="padding:5px;">
	 
   <input type="text" >输入</input>
   <button onclick="copyText()">clisk</button>
   <jsp:include page="add.jsp"/>
	<div id="tt" class="easyui-tabs" style="">
	<div title="Home">
	</div>
</div>
	</div>
</div>
 
 <script type="text/javascript">
   function copyText(){
   $('#dlg').dialog('open');


     }
     
   function addTab(title, url){
	if ($('#tt').tabs('exists', title)){
		$('#tt').tabs('select', title);
	} else {
		var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
		$('#tt').tabs('add',{
			title:title,
			content:content,
			closable:true
		});
	}
}
</script>
  

  </body>
</html>
