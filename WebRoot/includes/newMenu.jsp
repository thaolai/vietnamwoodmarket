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
		class="slice1" />

	<div id="title"><%=resourcebundle.getString("menu_categories") %></div>
	
	
	<div class="category_items">
		<ul class="small_nav2">

			<div id="wrapper">
				<dl>
					<dt>
						<a class="active" href="#"><%=resourcebundle.getString("menu_seed") %></a>
					</dt>
					<dd></dd>
					<dt>
						<a href="#"><%=resourcebundle.getString("menu_material") %></a>
					</dt>
					<dd>
						<ul>
							<li><a href="#"><%=resourcebundle.getString("menu_roundwood") %></a></li>
							<li><a href="#"><%=resourcebundle.getString("menu_lumber") %>̉</a></li>
							<li><a href="#"><%=resourcebundle.getString("menu_bamboo") %></a></li>
						</ul>
					</dd>
					<dt>
						<a href="#"><%=resourcebundle.getString("menu_veneer") %></a>
					</dt>
					<dd>
						<ul>
							<li><a href="#"><%=resourcebundle.getString("menu_bintangor") %></a></li>
							<li><a href="#"><%=resourcebundle.getString("menu_Sapele") %></a></li>
							<li><a href="#"><%=resourcebundle.getString("menu_menghundor") %></a></li>
							<li><a href="#"><%=resourcebundle.getString("menu_mahogany") %></a></li>
							<li><a href="#"><%=resourcebundle.getString("menu_canarium") %></a></li> 
							<li><a href="#"><%=resourcebundle.getString("menu_ash") %></a></li>
							<li><a href="#"><%=resourcebundle.getString("menu_oak") %></a></li>
							<li><a href="#"><%=resourcebundle.getString("menu_cherry") %></a></li>
							<li><a href="#"><%=resourcebundle.getString("menu_beech") %></a></li>
							<li><a href="#"><%=resourcebundle.getString("Menu_poplar") %></a></li>
							<li><a href="#"><%=resourcebundle.getString("menu_teak") %></a></li>
							<li><a href="#"><%=resourcebundle.getString("menu_other_veneer") %></a></li>
						</ul>
					</dd>
					<dt>
						<a href="#"><%=resourcebundle.getString("menu_artificial_wood_board") %></a>
					</dt>
					<dd>
						<ul>
							<li><a href="#"><%=resourcebundle.getString("menu_plywood") %></a></li>
							<li><a href="#"><%=resourcebundle.getString("menu_mdf") %></a></li>
							<li><a href="#"><%=resourcebundle.getString("menu_okan") %></a></li>
							<li><a href="#"><%=resourcebundle.getString("menu_wood_planks") %></a></li>
							<li><a href="#"><%=resourcebundle.getString("menu_artifact_other") %></a></li>
						</ul>
					</dd>
					<dt>
						<a href="#"><%=resourcebundle.getString("menu_furniture") %></a>
					</dt>
					<dd>
						<ul>
							<li><a href="#"><%=resourcebundle.getString("menu_outdoor_furniture") %></a></li>
							<li><a href="#"><%=resourcebundle.getString("menu_interior") %>̉</a></li>
							<li><a href="#"><%=resourcebundle.getString("menu_other") %></a></li>
						</ul>
					</dd>
					<dt>
						<a href="#"><%=resourcebundle.getString("menu_machines_tools_instruments") %></a>
					</dt>
					<dd>
						<ul>
					
							<li><a href="#"><%=resourcebundle.getString("menu_machine_equipment") %></a></li>
							<li><a href="#"><%=resourcebundle.getString("menu_materials_parts_tools") %></a></li>
						</ul>
					</dd>
					<dt>
						<a href="#"><%=resourcebundle.getString("menu_wood_filler_material") %></a>
					</dt>

					<dt>
						<a href="#"><%=resourcebundle.getString("menu_surface_coating_materials") %></a>
					</dt>

					<dt>
						<a href="#"><%=resourcebundle.getString("menu_services") %></a>
					</dt>
					<dt>
						<a href="#"><%=resourcebundle.getString("menu_other_veneer") %></a>
					</dt>

				</dl>
			</div>

			<div class="inner_copy"></div>
		</ul>
	</div>
	<img src="images/end1.gif" alt="" width="220" height="16" /><br />
</div>
