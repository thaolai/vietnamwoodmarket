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

	<div id="title"><%= resourcebundle.getString("Categories") %></div>
	<div class="category_items">
		<ul class="small_nav2">


			<div id="wrapper">
				<dl>
					<dt>
						<a class="active" href="#">Category 1</a>
					</dt>
					<dt>
						<a class="active" href="#">Category 1</a>
					</dt>
					<dt>
						<a class="active" href="#">Category 1</a>
					</dt>
					<dt>
						<a class="active" href="#">Category 1</a>
					</dt>
					<dt>
						<a class="active" href="#">Category 1</a>
					</dt>
					<dt>
						<a class="active" href="#">Category 1</a>
					</dt>
					<dt>
						<a class="active" href="#">Category 1</a>
					</dt>

				</dl>
			</div>

			<div class="inner_copy"></div>
		</ul>
	</div>
	<img src="images/end1.gif" alt="" width="220" height="16" /><br />
</div>
