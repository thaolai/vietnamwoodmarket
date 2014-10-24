
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


<div class="column2">
	<div id="title"><%= resourcebundle.getString("Ads") %></div>

	<div class="tinraovats">
		<div class="tinraovat_color">
			<div class="tinraovat">
				<li>
					<div class="STT">1</div>
					<div class="tenraovat">
						<a href="#"><%= resourcebundle.getString("Title") %> </a>
					</div>
					<div class="noiraovat"><%= resourcebundle.getString("Location") %></div>
				</li>
			</div>
		</div>
		<a href="purchases.jsp" class="more"><%= resourcebundle.getString("More") %></a><br />

	</div>
	<p>&nbsp;</p>
	<img src="images/end2.gif" alt="" width="545" height="15" /><br />
</div>