
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
<div id="header">
	<div id="header_inside">
	
     <div class= "name">Company_name</div>
	<a href="../index.jsp">
			<div class="goindex">
			</div></a>
			<br />
		
		<ul id="menu">
	 
 <% String p=request.getParameter("p");

if(p==null||p.equals(2)){ 
 
%> 		
			<li><a href="../index.jsp" class="but"><%= resourcebundle.getString("Index") %> </a></li>
			<li ><a href="products.jsp" class="but_active"><%= resourcebundle.getString("Products") %> </a></li>
			<li><a href="recruitments.jsp" class="but"><%= resourcebundle.getString("JobOpportunities") %></a></li>
			<li><a href="photos.jsp" class="but"><%= resourcebundle.getString("Photos") %></a></li>
			<li><a href="index2.html" class="but"><%= resourcebundle.getString("AdminAcc") %></a></li>
			<li><a href="contact.jsp" class="but"><%= resourcebundle.getString("Contact") %></a></li>
<%}

else if(p.equals("3")){ 
 
%> 		
			<li><a href="../index.jsp" class="but"><%= resourcebundle.getString("Index") %> </a></li>
			<li ><a href="products.jsp" class="but"><%= resourcebundle.getString("Products") %> </a></li>
			<li><a href="recruitments.jsp" class="but_active"><%= resourcebundle.getString("JobOpportunities") %></a></li>
			<li><a href="photos.jsp" class="but"><%= resourcebundle.getString("Photos") %></a></li>
			<li><a href="index2.html" class="but"><%= resourcebundle.getString("AdminAcc") %></a></li>
			<li><a href="contact.jsp" class="but"><%= resourcebundle.getString("Contact") %></a></li>
<%}
 else if(p.equals("4")){ 
 
%> 		
			<li><a href="../index.jsp" class="but"><%= resourcebundle.getString("Index") %> </a></li>
			<li ><a href="products.jsp" class="but"><%= resourcebundle.getString("Products") %> </a></li>
			<li><a href="recruitments.jsp" class="but"><%= resourcebundle.getString("JobOpportunities") %></a></li>
			<li><a href="photos.jsp" class="but_active"><%= resourcebundle.getString("Photos") %></a></li>
			<li><a href="index2.html" class="but"><%= resourcebundle.getString("AdminAcc") %></a></li>
			<li><a href="contact.jsp" class="but"><%= resourcebundle.getString("Contact") %></a></li>
<%}
else if(p.equals("6")){ 
 
%> 		
			<li><a href="../index.jsp" class="but"><%= resourcebundle.getString("Index") %> </a></li>
			<li ><a href="products.jsp" class="but"><%= resourcebundle.getString("Products") %> </a></li>
			<li><a href="recruitments.jsp" class="but"><%= resourcebundle.getString("JobOpportunities") %></a></li>
			<li><a href="photos.jsp" class="but"><%= resourcebundle.getString("Photos") %></a></li>
			<li><a href="index2.html" class="but"><%= resourcebundle.getString("AdminAcc") %></a></li>
			<li><a href="contact.jsp" class="but_active"><%= resourcebundle.getString("Contact") %></a></li>
			
<%}
 %>			
			
 	
			
			<li><div class="top_languages">
			 <form method="post" action="../servlet/LanguagesController">
			 <input type="submit" name="lang" value="vn" id="VN"/>
			 <input type="submit" name="lang" value="en" id="EN"/>
			 <input type="hidden" value="<%=request.getRequestURL().toString() %>" name="url"/>
			</form>
		</div> </li>
			
		</ul>
	</div>
</div>

