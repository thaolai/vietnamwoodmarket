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
<link rel="StyleSheet" type="text/css" href="css/menustyle.css" media="screen">
<script type="text/javascript"src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
<script type="text/javascript" src="javascript/menuscript.js"></script>
<script language="Javascript" type="text/javascript"
	src="javascript/jquery-1.4.1.js"></script>
<script language="Javascript" type="text/javascript"
	src="javascript/jquery.cycle.lite.js"></script>
<script language="Javascript" type="text/javascript"
	src="javascript/jquery.blinds-0.9.js"></script>
<!-- BB_adv -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script src="../javascript/jquery.bubbleSlideshow/jquery.bubbleSlideshow.js"></script>

<!-------------------Product----------------------->
<link rel="stylesheet" type="text/css" href="../css/productStyle.css" />
<script src="../javascript/jquery-1.8.3.min2.js" type="text/javascript"></script>
<script src="../javascript/jquery.elevateZoom-2.5.5.min.js"
	type="text/javascript"></script>


</head>

<body>
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<jsp:include page="includes/header.jsp" flush="true" />
		<tr>
			<td colspan="3">
				<div id="main">
					<div class="small_column">
						<div class="left_column">
							<jsp:include page="includes/category.jsp" flush="true" />
							<jsp:include page="../includes/adv_left.jsp" flush="true" />
							<div id="sidebar"></div>
						</div>
						<div class="column2">
							<img src="images/slice2.gif" alt="" width="22" height="81"
								class="slice1" />

							<div id="title"><%= resourcebundle.getString("Products") %> </div>

	<div class="prod_box_big">
								<div class="center_prod_box_big">
									<div class="product_title_big">T&ecirc;n Sa&#777;n
										Ph&acirc;&#777;m</div>

									<div class="product_img_big">
										<img style="border:1px solid #e8e8e6;" id="zoom_03"
											src="http://www.elevateweb.co.uk/wp-content/themes/radial/zoom/images/small/image3.png"
											data-zoom-image="http://www.elevateweb.co.uk/wp-content/themes/radial/zoom/images/large/image3.jpg"
											width="411" />
									</div>

									<div id="gallery_01">
										<div class="thumbs">
											<div class=product_img_small>
												<a href="#" class="elevatezoom-gallery active"
													data-update=""
													data-image="http://www.elevateweb.co.uk/wp-content/themes/radial/zoom/images/small/image1.png"
													data-zoom-image="http://www.elevateweb.co.uk/wp-content/themes/radial/zoom/images/large/image1.jpg">
													<img
													src="http://www.elevateweb.co.uk/wp-content/themes/radial/zoom/images/small/image1.png"
													width="100" />
												</a>
											</div>
											<div class=product_img_small>
												<a href="#" class="elevatezoom-gallery"
													data-image="http://www.elevateweb.co.uk/wp-content/themes/radial/zoom/images/small/image2.png"
													data-zoom-image="http://www.elevateweb.co.uk/wp-content/themes/radial/zoom/images/large/image2.jpg"><img
													src="http://www.elevateweb.co.uk/wp-content/themes/radial/zoom/images/small/image2.png"
													width="100" /></a>
											</div>
											<div class=product_img_small>
												<a href="tester" class="elevatezoom-gallery"
													data-image="http://www.elevateweb.co.uk/wp-content/themes/radial/zoom/images/small/image3.png"
													data-zoom-image="http://www.elevateweb.co.uk/wp-content/themes/radial/zoom/images/large/image3.jpg">
													<img
													src="http://www.elevateweb.co.uk/wp-content/themes/radial/zoom/images/small/image3.png"
													width="100" />
												</a>
											</div>
											<div class=product_img_small>
												<a href="tester" class="elevatezoom-gallery"
													data-image="http://www.elevateweb.co.uk/wp-content/themes/radial/zoom/images/small/image4.png"
													data-zoom-image="http://www.elevateweb.co.uk/wp-content/themes/radial/zoom/images/large/image4.jpg"
													class="slide-content"><img
													src="http://www.elevateweb.co.uk/wp-content/themes/radial/zoom/images/small/image4.png"
													width="100" /></a>
											</div>
										</div>

										<script type="text/javascript">
											$(document)
													.ready(
															function() {
																$("#zoom_03")
																		.elevateZoom(
																				{
																					gallery : 'gallery_01',
																					cursor : 'pointer',
																					galleryActiveClass : "active"
																				});
															});
										</script>

									</div>
								</div>
								<div class="details_big_box">

									<div class="specifications">
										<p>
											<%= resourcebundle.getString("Location") %><span class="blue">ch&#432;a
												co&#769;</span><br />
												<%= resourcebundle.getString("Unit") %><span class="blue">ch&#432;a
												co&#769;</span><br />
												<%= resourcebundle.getString("Packing") %><span
												class="blue"> chưa có</span><br /> <%= resourcebundle.getString("Issued_Date") %><span class="blue">ch&#432;a
												co&#769;</span><br />
												<%= resourcebundle.getString("Description") %><span class="blue">ch&#432;a
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
												co&#769;</span> <span class="blue">ch&#432;a co&#769;</span> <span
												class="blue">ch&#432;a co&#769;</span><br /> <a href="#">
												
												<%= resourcebundle.getString("Click") %></a>
										</p>
									</div>
									<div class="prod_price_big">
										<span class="price">270$</span>
									</div>

									<a href="#" class="addtocart">Li&ecirc;n h&ecirc;&#803;</a>
								</div>
							</div>
							<div class="bottom_prod_box_big"></div>
							<div class="center_title_bar"><%=resourcebundle.getString("Details")%></div>
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


							<div class="center_title_bar">Sa&#777;n ph&acirc;&#777;m
								cu&#768;ng nha&#768; cung c&acirc;&#769;p</div>


							<div class="item_block">
								<a href="product.jsp"> <img src="images/pic.jpg" /></a>
								<div id="sub_title">Go tram bong vang</div>
							</div>

							<div class="item_block">
								<a href="product.jsp"> <img src="images/pic.jpg" /></a>
								<div id="sub_title">Go tram bong vang</div>
							</div>
							<div class="item_block">
								<a href="product.jsp"> <img src="images/pic.jpg" /></a>
								<div id="sub_title">Go tram bong vang</div>
							</div>
							<div class="item_block">
								<a href="product.jsp"> <img src="images/pic.jpg" /></a>
								<div id="sub_title">Go tram bong vang</div>
							</div>

							<div class="item_block">
								<a href="product.jsp"> <img src="images/pic.jpg" /></a>
								<div id="sub_title">Go tram bong vang</div>
							</div>

							</br>

							<p>
								<a href="products.jsp" class="more"><%=resourcebundle.getString("More")%></a>
							</p>


							<div class="center_title_bar"><%=resourcebundle.getString("Others")%></div>


							<div class="item_block">
								<a href="product.jsp"> <img src="images/pic.jpg" /></a>
								<div id="sub_title">Go tram bong vang</div>
							</div>


							<div class="item_block">
								<a href="product.jsp"> <img src="images/pic.jpg" /></a>
								<div id="sub_title">Go tram bong vang</div>
							</div>

							<div class="item_block">
								<a href="product.jsp"> <img src="images/pic.jpg" /></a>
								<div id="sub_title">Go tram bong vang</div>
							</div>
							<div class="item_block">
								<a href="product.jsp"> <img src="images/pic.jpg" /></a>
								<div id="sub_title">Go tram bong vang</div>
							</div>

							<div class="item_block">
								<a href="product.jsp"> <img src="images/pic.jpg" /></a>
								<div id="sub_title">Go tram bong vang</div>
							</div>

							<p>
								<a href="products.jsp" class="more">Xem hết</a>
							</p>

							<img src="images/end2.gif" alt="" width="545" height="15" /><br />
						</div>



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
