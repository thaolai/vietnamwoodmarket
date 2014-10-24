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
<link rel="StyleSheet" type="text/css" href="../css/menustyle.css"
	media="screen">
<link rel="StyleSheet" type="text/css" href="../css/contact_styles.css"
	media="screen">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
<script type="text/javascript" src="../javascript/menuscript.js"> </script>
<script language="Javascript" type="text/javascript"
	src="../javascript/jquery-1.4.1.js"></script>


<!------------------------------------------>

</head>

<body>
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<jsp:include page="includes/header.jsp" flush="true" > 
		
		 <jsp:param name="p" value="6" />
		 
		</jsp:include>
		<tr>
			<td colspan="3">
				<div id="main">
					<div class="small_column">
						<div class="left_column">
							<jsp:include page="includes/category.jsp" flush="true" />
							<jsp:include page="../includes/adv_left.jsp" flush="true" />
							<div id="sidebar"></div>
						</div>
						<!-- ------------------------------------------------------------ -->
						<div class="column2">
							<div id="title"><%= resourcebundle.getString("Contact") %></div>
							<div class=contact_detail>
								<p><%= resourcebundle.getString("Chogovietnam") %></p>
								<%= resourcebundle.getString("Contact_details") %>
								<%= resourcebundle.getString("Contact_mess") %>
							</div>
							<form id="contact-form" action="" class="form_contact">
								<p id="formstatus"></p>
								<label for="name"><%= resourcebundle.getString("Name") %></label> <input type="text" name="name"
									value="" id="name" /> <label for="email">Email</label> <input
									type="text" name="email" value="" id="email" /> </br> 
									<label for="subject"><%= resourcebundle.getString("Title") %> </label> <input type="text"
									name="subject" value="" id="subject" /> <label for="email"><%= resourcebundle.getString("Content") %> </label>
								<textarea name="message" id="message"></textarea>

								<input type="image" src="images/submit_contact.png"
									name="submit" value="Gửi thông điệp" id="submit" width="80px"
									alt="Gửi thông điệp" />

							</form>
							<img src="images/end2.gif" alt="" width="545" height="15" /><br />
						</div>						<!-- -------------------------------------------------------------- -->
					</div>

					<div id="left_column">
						<jsp:include page="../includes/adv_right1.jsp" flush="true" />
						<jsp:include page="../includes/adv_right.jsp" flush="true" />
					</div>
				</div>
		</tr>
		<jsp:include page="includes/footer.jsp" flush="true" />
	</table>

</body>
</html>
