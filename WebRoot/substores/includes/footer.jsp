
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<div id="footer">
	<div id="footer_inside">
		<ul class="footer_menu">
			<li><a href="index.html"><%= resourcebundle.getString("Index") %> </a>|</li>
			<li><a href="index2.html"><%= resourcebundle.getString("Products") %> </a>|</li>
			<li><a href="index2.html"><%= resourcebundle.getString("JobOpportunities") %></a>|</li>
			<li><a href="index2.html"><%= resourcebundle.getString("Photos") %></a>|</li>
			<li><a href="index2.html"><%= resourcebundle.getString("AdminAcc") %></a>|</li>
			<li><a href="index2.html"><%= resourcebundle.getString("Contact") %></a></li>	
			
		</ul>
		
		<div class="telephone">
		(84)914092925
		
		</div>
		<br />
		<br />
		
	</div>
</div>




