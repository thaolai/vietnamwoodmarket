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
<tr>
	<td class="bot_left">&nbsp;</td>

	<td class="bot_center">
		<ul id="navigation">
			<li><a href="index.jsp"><%= resourcebundle.getString("Index") %> </a></li>
			<li><a href="products.jsp"><%= resourcebundle.getString("Products") %> </a></li>
			<li><a href="purchases.jsp"><%= resourcebundle.getString("Ads") %></a></li>
			<li><a href="companies.jsp"><%= resourcebundle.getString("Stores") %></a></li>
			<li><a href="recruitments.jsp"><%= resourcebundle.getString("JobOpportunities") %></a></li>
			<li><a href="contact.jsp"><%= resourcebundle.getString("Contact") %></a></li>
		</ul>
		
		
	</td>

	<td class="bot_right">&nbsp;</td>

</tr>