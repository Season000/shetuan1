<%@ page language="java" pageEncoding="UTF-8"%>
<%String path = request.getContextPath();%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>欢迎使用</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	
	<STYLE type=text/css>
		BODY {FONT-SIZE: 12px; COLOR: #ffffff; FONT-FAMILY: 宋体}
		TD {FONT-SIZE: 12px; COLOR: #ffffff; FONT-FAMILY: 宋体}
	</STYLE>
	
	<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
       
	<script language="javascript">
		function check1()
		{                                                                                         
		     if(document.ThisForm.userName.value=="")
			 {
			 	alert("请输入用户名");
				document.ThisForm.userName.focus();
				return false;
			 }
			 if(document.ThisForm.userPw.value=="")
			 {
			 	alert("请输入密码");
				document.ThisForm.userPw.focus();
				return false;
			 }
			 if(document.ThisForm.userType.value=="-1")
			 {
			 	alert("请选择登陆身份");
				document.ThisForm.userType.focus();
				return false;
			 }
			 document.getElementById("indicator").style.display="block";
			 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,document.ThisForm.userType.value,callback);
		}
		
		function callback(data)
		{
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("用户名或密码错误");
		    }
		    if(data=="yes")
		    {
		        alert("通过验证,系统登录成功");
		        window.location.href="<%=path %>/loginSuccess.jsp";
		    }
		    
		}
    </script>
  </head>
  
  
  
<body>
<form action="<%=path %>/login?type=login" name="ThisForm" method="post">
<TABLE cellSpacing=0 cellPadding=0 width=900 align=center border=0>
	  <TR>
	     
	  </TR>
	  <TR>
	       <TD background="<%=path %>/img/banner111.jpg" height=700>
		      <TABLE height=900 cellPadding=0 width=1500 border=0>
		        <TR><TD colSpan=2 height=35></TD></TR>
		        <TR>
		          <TD width=360></TD>
		          <TD>
		            <TABLE cellSpacing=0 cellPadding=2 border=0>
			              <TR>
			                <TD style="HEIGHT: 28px" width=80>登 录 名：</TD>
			                <TD style="HEIGHT: 28px" width=150><INPUT style="WIDTH: 130px" name=userName type="text"></TD>
			                <TD style="HEIGHT: 28px" width=370></TD>
			              </TR>
			              <TR>
			                <TD style="HEIGHT: 28px" width=80>登录密码：</TD>
			                <TD style="HEIGHT: 28px" width=150><INPUT style="WIDTH: 130px" type=password name=userPw></TD>
			                <TD style="HEIGHT: 28px" width=370></TD>
			              </TR>
			              <TR>
			                <TD style="HEIGHT: 28px" width=80>登录类型：</TD>
			                <TD style="HEIGHT: 28px" width=150>
			                     <select class="INPUT_text" name="userType" style="height:20px;width:130px;">
									<option value="0">系统管理员</option>
									<option value="2">社团负责人</option>
									
								 </select>
			                </TD>
			                <TD style="HEIGHT: 28px" width=370></TD>
			              </TR>
			              <TR>
			                <TD style="HEIGHT: 18px"></TD>
			                <TD style="HEIGHT: 18px"></TD>
			                <TD style="HEIGHT: 18px"></TD>
			              </TR>
			              <TR>
			                <TD></TD>
			                <TD>
			                   <img src="<%=path %>/img/login_button.gif" style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" onclick='check1()'/>
			                   <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
			                </TD>
			              </TR>
		            </TABLE>
		          </TD>
		        </TR>
		      </TABLE>
	       </TD>
	  </TR>
      <TR>
           <TD><IMG src="<%=path %>/img/login_3.jpg" border=0></TD>
      </TR>
</TABLE>
</form>
</body>
</html>
