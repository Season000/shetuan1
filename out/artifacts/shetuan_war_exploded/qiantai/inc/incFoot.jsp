<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
      <script type="text/javascript">
         function admin()
         {
            var url="<%=path %>/login.jsp";
            window.location.href=url;
         } 
      </script>
  </head>
  
  <body>
        <TABLE border=0 cellSpacing=0 cellPadding=0 width=974 bgColor=#ffffff align=center>
		  <TR>
		    <TD bgColor=#a9a9a9 width=1></TD>
		    <TD class=b vAlign=top colSpan=3 align=center>
		                       中国传媒大学南广学院   传媒技术学院 王悦制作
		        &nbsp;&nbsp;&nbsp;&nbsp;
		    </TD>
		    <TD bgColor=#a9a9a9 width=1></TD>
		  </TR>
		  <TR>
		    <TD bgColor=#a9a9a9></TD>
		    <TD class=b width=327 align=right>　</TD>
		    <TD class=b width=14>　</TD>
		    <TD class=b width=429>　</TD>
		    <TD bgColor=#a9a9a9></TD>
		  </TR>
		 </TABLE>
  </body>
</html>
