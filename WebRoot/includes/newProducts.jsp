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
	<img src="images/slice2.gif" alt="" width="22" height="81"
		class="slice1" />


	<div id="title"><%= resourcebundle.getString("NewProducts") %></div>
	<div class="item_block">
		<a href="#"> <img src="images/pic.jpg" /></a>
		<div id="sub_title">Go tram bong vang</div>
	</div>
	<p>
		<a href="products.jsp" class="more"><%= resourcebundle.getString("More") %></a>
	</p>

	<img src="images/end2.gif" alt="" width="545" height="15" /><br />

</div>