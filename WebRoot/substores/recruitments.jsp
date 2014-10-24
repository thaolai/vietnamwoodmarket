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
		
		 <jsp:param name="p" value="3" />
		 
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
						<!-- -------------------------------------------------------------------- -->
						<div class="column2">
							<div id="title"><%= resourcebundle.getString("JobOpportunities") %></div>

							<div class="recuits">
								<div class="recuit">
									<div>
										<a href="recruitment.jsp"> <img src="images/photo2.jpg"
											alt="" /> <span class="time">CONG TY TNHH GO LANG CAN
												TUYEN</span></a>
										<p>
											Noi dung nay se duoc cap nhat sau Noi dung nay se duoc cap
											nhat sau Noi dung nay se duoc cap nhat sau Noi dung nay se
											duoc cap nhat sau Noi dung nay se duoc cap nhat sau<br />
										</p>
									</div>
								</div>

								<div class="recuit">
									<div>
										<img src="images/photo2.jpg" alt="" /> <span class="time">CONG
											TY TNHH GO LANG CAN TUYEN</span>
										<p>
											Noi dung nay se duoc cap nhat sau Noi dung nay se duoc cap
											nhat sau Noi dung nay se duoc cap nhat sau Noi dung nay se
											duoc cap nhat sau Noi dung nay se duoc cap nhat sau<br />
										</p>
									</div>
								</div>


								<div class="recuit">
									<div>
										<img src="images/photo2.jpg" alt="" /> <span class="time">CONG
											TY TNHH GO LANG CAN TUYEN</span>
										<p>
											Noi dung nay se duoc cap nhat sau Noi dung nay se duoc cap
											nhat sau Noi dung nay se duoc cap nhat sau Noi dung nay se
											duoc cap nhat sau Noi dung nay se duoc cap nhat sau<br />
										</p>
									</div>
								</div>
							</div>
							<br /> <img src="images/end2.gif" alt="" width="545" height="15" /><br />
						</div>
						<!-- -------------------------------------------------------------------------- -->
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
