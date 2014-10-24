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
<div class="news">
	<div id="title"><%= resourcebundle.getString("WoodNews") %> </div>
	<ul>
		<li><a href="#">Th&ocirc;ng tin n&agrave;y s&#7869;
				&#273;&#432;&#7907;c c&#7853;p nh&#7853;t sau</a></li>
	</ul>

	<a href="news.jsp" class="more"><%= resourcebundle.getString("More") %> </a>

</div>