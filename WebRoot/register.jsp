<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>RealEstate</title>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="StyleSheet" type="text/css" href="css/style.css"
	media="screen">
<link rel="StyleSheet" type="text/css" href="css/blinds.css"
	media="screen">
<link rel="StyleSheet" type="text/css" href="css/menustyle.css"
	media="screen">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
<script type="text/javascript" src="javascript/menuscript.js"> </script>
<script language="Javascript" type="text/javascript"
	src="javascript/jquery-1.4.1.js"></script>
<script language="Javascript" type="text/javascript"
	src="javascript/jquery.cycle.lite.js"></script>
<script language="Javascript" type="text/javascript"
	src="javascript/jquery.blinds-0.9.js"></script>
<!-- BB_adv -->

<link rel="stylesheet" href="css/styles_bb.css" />
<link rel="stylesheet" href="css/jquery.bubbleSlideshow.css" />
<link rel="stylesheet" type="text/css" href="css/contact_styles.css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script src="javascript/jquery.bubbleSlideshow/bgpos.js"></script>
<script
	src="javascript/jquery.bubbleSlideshow/jquery.bubbleSlideshow.js"></script>
<script src="javascript/jquery.bubbleSlideshow/ADVcen_script.js"></script>
<!------------------------------------------>

</head>

<body>

	<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<jsp:include page="includes/header.jsp" flush="true" />
		<tr>
			<td colspan="3">
				<div id="main">
					<div class="small_column">
						<jsp:include page="includes/login.jsp" flush="true" />
						<jsp:include page="includes/adv_center.jsp" flush="true" />
						<jsp:include page="includes/menu.jsp" flush="true" />
						<div class="left_column">
							<jsp:include page="includes/newMenu.jsp" flush="true" />
							<jsp:include page="includes/newcompanies.jsp" flush="true" />
							<div id="sidebar">
								<jsp:include page="includes/adv_left.jsp" flush="true" />
							</div>
						</div>
						<div class="column2">
							<div id="title"><%= resourcebundle.getString("Register") %></div>
							<div class=contact_detail><%= resourcebundle.getString("Register_des") %></div>
							<form id="contact-form" action="" class="form_contact">
								<p id="formstatus"></p>

								<label for="username"><%= resourcebundle.getString("Username") %> </label><input type="text"
									name="username" value="" id="username" /> <label for="pass"><%= resourcebundle.getString("Password") %> </label> <input type="password" name="pass" value="" id="pass" />
								<label for="repass">Xác nhận mật khẩu: </label><input
									type="password" name="repass" value="" id="repass" /> <label
									for="name"><%= resourcebundle.getString("Name") %> </label> <input type="text" name="name"
									value="" id="name" /> <label for="email">Email: </label> <input
									type="text" name="email" value="" id="email" /> </br> <label
									for="reemail"><%= resourcebundle.getString("ReEmail") %> </label> <input type="text"
									name="reemail" value="" id="reemail" /></br> <label for="phone"><%= resourcebundle.getString("Phone") %>
									 </label> <input type="text" name="phone" value=""
									id="phone" /> <label for="company"><%= resourcebundle.getString("Company") %></label><input
									type="text" name="company" value="" id="company" /> <label
									for="cmnd">CMND: </label><input type="text" name="cmnd"
									value="" id="cmnd" /> <label for="Address"><%= resourcebundle.getString("Address") %>
									 </label> <input type="text" name="text" value="" id="text" /></br>
								<div class="contact_detail2">
									<%= resourcebundle.getString("Agree") %> <a href="#"> <%= resourcebundle.getString("Policy")  %></a> </br>
								</div>

								<input type="image" src="images/submit_contact.png"
									name="submit" value="Gửi thông điệp" id="submit" width="80px"
									alt="Gửi thông điệp" />


							</form>
							<img src="images/end2.gif" alt="" width="545" height="15" /><br />
						</div>
					</div>

					<div id="left_column">
						<jsp:include page="includes/adv_right1.jsp" flush="true" />
						<jsp:include page="includes/news.jsp" flush="true" />
						<jsp:include page="includes/adv_right.jsp" flush="true" />
					</div>
				</div>
			</td>
		</tr>
		<jsp:include page="includes/bottom.jsp" flush="true" />
	</table>

</body>
</html>
