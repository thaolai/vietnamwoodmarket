
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
	<td height="94" class="top_left">&nbsp;</td>
	<td width="1006" class="top">

		<ul id="menu">&nbsp;</ul>
		<div class="top_languages">
			 <form method="post" action=servlet/LanguagesController>
			 <input type="submit" name="lang" value="vn" id="VN"/>
			 <input type="submit" name="lang" value="en" id="EN"/>
			 <input type="hidden" value="<%=request.getRequestURL().toString() %>" name="url"/>
			</form>
		</div>

		<div class="top_languages">
			<button><%=resourcebundle.getString("Search")%></button>
			<input placeholder="Tìm kiếm sản phẩm" size="22"></input>

		</div> <br />
	</td>
	<td class="top_right">&nbsp;</td>
</tr>
