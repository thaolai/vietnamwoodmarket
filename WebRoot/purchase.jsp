<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Vietnam wooden market</title>
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
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script src="javascript/jquery.bubbleSlideshow/bgpos.js"></script>
<script
	src="javascript/jquery.bubbleSlideshow/jquery.bubbleSlideshow.js"></script>
<script src="javascript/jquery.bubbleSlideshow/ADVcen_script.js"></script>
<!-------------------Product----------------------->
<link rel="stylesheet" type="text/css" href="css/JobOppStyle.css" />
<script type="text/javascript" src="javascript/boxOver.js"></script>


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
								<jsp:include page="/includes/adv_left.jsp" flush="true" />
							</div>
						</div>


						<div class="column2">

							<div id="title"><%= resourcebundle.getString("Ads") %></div>


							<div class="prod_box_big">
								<div class="top_prod_box_big"></div>
								<div class="center_prod_box_big">

									<div class="product_img_big">
										<a
											href="javascript:popImage('images/products/ex.jpg','Some Title')"
											title="header=[Zoom] body=[&nbsp;] fade=[on]"><img
											src="images/products/ex.jpg" alt="" title="" border="0" /></a>
									</div>

								</div>
								<div class="details_big_box">
									<div class="product_title_big"><%= resourcebundle.getString("Title") %></div>
									<div class="specifications">
										<p>
											Ngày đăng: <span class="blue">ch&#432;a co&#769;</span><br />
											Hết hạn: <span class="blue">ch&#432;a co&#769;</span><br />
											Nơi đăng:<span class="blue">ch&#432;a co&#769;</span><br />
											Hình thức: <span class="blue">ch&#432;a co&#769;</span><br />
											Mô tả:<span class="blue">ch&#432;a co&#769;</span> <span
												class="blue">ch&#432;a co&#769;</span> <span class="blue">ch&#432;a
												co&#769;</span> <span class="blue">ch&#432;a co&#769;</span> <span
												class="blue">ch&#432;a co&#769;</span> <span class="blue">ch&#432;a
												co&#769;</span> <span class="blue">ch&#432;a co&#769;</span> <span
												class="blue">ch&#432;a co&#769;</span> <span class="blue">ch&#432;a
												co&#769;</span> <span class="blue">ch&#432;a co&#769;</span> <span
												class="blue">ch&#432;a co&#769;</span> <span class="blue">ch&#432;a
												co&#769;</span> <span class="blue">ch&#432;a co&#769;</span> <span
												class="blue">ch&#432;a co&#769;</span> <span class="blue">ch&#432;a
												co&#769;</span> <span class="blue">ch&#432;a co&#769;</span> <span
												class="blue">ch&#432;a co&#769;</span> <span class="blue">ch&#432;a
												co&#769;</span> <span class="blue">ch&#432;a co&#769;</span> <span
												class="blue">ch&#432;a co&#769;</span> <span class="blue">ch&#432;a
												co&#769;</span> <span class="blue">ch&#432;a co&#769;</span> <span
												class="blue">ch&#432;a co&#769;</span> <span class="blue">ch&#432;a
												co&#769;</span> <span class="blue">ch&#432;a co&#769;</span> <span
												class="blue">ch&#432;a co&#769;</span> <span class="blue">ch&#432;a
												co&#769;</span><br />
										</p>
									</div>
									<div class="prod_price_big">
										<span class="price">270$</span>
									</div>

									<a href="#" class="addtocart"><%= resourcebundle.getString("Contact") %></a>
								</div>
							</div>
							<div class="bottom_prod_box_big"></div>



							<div class="center_title_bar"><%= resourcebundle.getString("Details") %></div>
							<div class="_detail">

								Chưa có chưa có Chưa có chưa có Chưa có chưa có Chưa có
								chưa có Chưa có chưa có Chưa có chưa có Chưa có chưa có
								Chưa có chưa có Chưa có chưa có Chưa có chưa có Chưa có
								chưa có<br /> Chưa có chưa có Chưa có chưa có Chưa có
								chưa có Chưa có chưa có Chưa có chưa có Chưa có chưa có
								Chưa có chưa có Chưa có chưa có Chưa có chưa có Chưa có
								chưa có Chưa có chưa có<br /> Chưa có chưa có Chưa có
								chưa có Chưa có chưa có Chưa có chưa có Chưa có chưa có
								Chưa có chưa có Chưa có chưa có Chưa có chưa có Chưa có
								chưa có Chưa có chưa có Chưa có chưa có<br />

							</div>
							<div class="center_title_bar"><%= resourcebundle.getString("OtherAds") %></div>


							<div class="tinraovats">
								<div class="tinraovat_color">
									<div class="tinraovat">
										<li>
											<div class="STT">1</div>
											<div class="tenraovat">
												<a href="purchase.jsp"><%= resourcebundle.getString("Title") %> </a>
											</div>
											<div class="noiraovat"><%= resourcebundle.getString("Location") %></div>
										</li>
									</div>
								</div>
								<div class="tinraovat">
									<li>
										<div class="STT">1</div>
										<div class="tenraovat">
											<a href="purchase.jsp">Ten tin rao vat </a>
										</div>
										<div class="noiraovat">Noi dang tin</div>
									</li>
								</div>
								<div class="tinraovat_color">
									<div class="tinraovat">
										<li>
											<div class="STT">1</div>
											<div class="tenraovat">
												<a href="purchase.jsp">Ten tin rao vat </a>
											</div>
											<div class="noiraovat">Noi dang tin</div>
										</li>
									</div>
								</div>


								<div class="tinraovat">
									<li>
										<div class="STT">1</div>
										<div class="tenraovat">
											<a href="purchase.jsp">Ten tin rao vat </a>
										</div>
										<div class="noiraovat">Noi dang tin</div>
									</li>
								</div>
								<p>&nbsp;</p>
								<a href="purchases.jsp" class="more"><%= resourcebundle.getString("More") %> </a><br />

							</div>

							<img src="images/end2.gif" alt="" width="545" height="15" /><br />
						</div>



					</div>
					<div id="left_column">
						<jsp:include page="includes/adv_right1.jsp" flush="true" />
						<jsp:include page="includes/news.jsp" flush="true" />
						<jsp:include page="includes/adv_right.jsp" flush="true" />
					</div>
				</div>
		</tr>
		<jsp:include page="includes/bottom.jsp" flush="true" />

	</table>



</body>
</html>




