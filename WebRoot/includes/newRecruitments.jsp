
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
	<div id="title"><%= resourcebundle.getString("NewJobOpportunities") %> </div>
	<div class="recuits">
		<div class="recuit">
			<div>
				<img src="images/photo2.jpg" alt="" /> <span class="time">CONG
					TY TNHH GO LANG CAN TUYEN</span>
				<p>
					Noi dung nay se duoc cap nhat sau Noi dung nay se duoc cap nhat sau
					Noi dung nay se duoc cap nhat sau Noi dung nay se duoc cap nhat sau
					Noi dung nay se duoc cap nhat sau<br />
				</p>
			</div>
		</div>
	</div>
	<br />
	<p>
		<a href="recruitments.jsp" class="more"><%= resourcebundle.getString("More") %></a>
	</p>

	<img src="images/end2.gif" alt="" width="545" height="15" /><br />
</div>