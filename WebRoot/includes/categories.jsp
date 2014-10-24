
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page import="java.util.ResourceBundle"%>
<%@page import="java.util.Locale"%>
<%   
   session = request.getSession();
   ResourceBundle resourcebundle;
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
		class="slice1" /> <img src="images/title1.gif" alt="" width="247"
		height="49" /><br />

	<div class="category_items">
		<ul class="small_nav2">
			<li><a href="#"><%=resourcebundle.getString("menu_seed") %></a></li>
			<li><a href="#"><%=resourcebundle.getString("menu_material") %></a></li>
			<li><a href="#"><%=resourcebundle.getString("menu_veneer") %></a></li>
			<li><a href="#"><%=resourcebundle.getString("menu_artificial_wood_board") %></a></li>
			<li><a href="#"><%=resourcebundle.getString("menu_furniture") %></a></li>
			<li><a href="#"><%=resourcebundle.getString("menu_machines_tools_instruments") %></a></li>
			<li><a href="#"><%=resourcebundle.getString("menu_wood_filler_material") %></a></li>
			<li><a href="#">Keo da&#769;n g&ocirc;&#771;</a></li>
			<li><a href="#"><%=resourcebundle.getString("menu_surface_coating_materials") %></a></li>
			<li><a href="#"><%=resourcebundle.getString("menu_services") %></a></li>
		<li><a href="#"><%=resourcebundle.getString("menu_other_veneer") %></a></li>

			<div class="inner_copy">
				<a href="http://www.bestfreetemplates.org/">free templates</a><a
					href="http://www.bannermoz.com/">banner templates</a>
			</div>
		</ul>
	</div>
	<img src="images/end1.gif" alt="" width="247" height="16" /><br />
</div>