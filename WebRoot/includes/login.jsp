<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page import="java.util.ResourceBundle"%>
<%@page import="java.util.Locale"%>
<%   
   session = request.getSession();
   ResourceBundle resourcebundle;
   Locale.setDefault(new Locale("vn","VN")); 
   if(session.getAttribute("lang")==null){ 
    resourcebundle = ResourceBundle.getBundle("Resource_vn_VN");  
   }
   else{
   String lang=session.getAttribute("lang").toString();
   if (lang.equals("vn")){ 
   resourcebundle = ResourceBundle.getBundle("Resource_vn_VN");  
   }
  else{
   resourcebundle = ResourceBundle.getBundle("Resource_en_US");  
   }
   }
    
 %>
<div class="logo">
	<br />
	 <form method="post" action=servlet/LoginController>	
	<div class="login">
		<div class="login_header">
			<%= resourcebundle.getString("Login") %> <a href="register.jsp"> <%= resourcebundle.getString("Register") %> </a>
		</div>

		<div class="login_row">
			
			 <input type="hidden" value="<%=request.getRequestURL().toString() %>" name="url"/>
		 
		 <%= resourcebundle.getString("Username") %> <input type="text"
				size="15" name = "userName"/>  
		</div>

		<div class="login_row">
			<%= resourcebundle.getString("Password") %> <input type="password" size="15" name ="passWord"/>
		</div>
		<div class="login_row">
			<a href="lostpass.jsp"><%= resourcebundle.getString("Forget_Pass") %></a>
			 <input type="hidden" value="<%=request.getRequestURL().toString() %>" name="url"/>
			 <input type="submit" value="<%= resourcebundle.getString("OK") %>" class= "button" />
		</div>
	</div>
	</form>
</div>
