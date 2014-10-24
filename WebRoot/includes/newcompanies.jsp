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
 
<div class="column1 ">
	<img src="images/slice1.gif" alt="" width="22" height="81"
		class="slice1" />

	<div id="title"><%= resourcebundle.getString("NewStores") %></div>

	<div class="items">
		<div class="item">
			<p>
				<img src="images/pic.jpg" alt="" width="84" height="84" />
			</p>
			Th&ocirc;ng tin na&#768;y se&#771; &#273;&#432;&#417;&#803;c
			c&acirc;&#803;p nh&acirc;&#803;t sau
		</div>
		<p>
			<a href="companies.jsp" class="more"><%= resourcebundle.getString("More") %></a>
		</p>

	</div>

	<img src="images/end1.gif" alt="" width="220" height="16" /><br />
</div>
