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


<link href="css/photos.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/jphotogrid.css" rel="stylesheet" type="text/css"
	media="screen" />
<!--[if IE]>
			<link href="jphotogrid.ie.css" rel="stylesheet" type="text/css" media="screen" />
		<![endif]-->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script src="javascript/jphotogrid.js"></script>
<script src="javascript/jflickrfeed.js"></script>
<script src="javascript/setup.js"></script>


<!------------------------------------------>

</head>

<body>
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<jsp:include page="includes/header.jsp" flush="true" > 
		
		 <jsp:param name="p" value="4" />
		 
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
						<!-- ------------------------------------------------------------------- -->
						<div class="column2">

							<div id="title"><%= resourcebundle.getString("Photos") %></div>
							<div id="container">

								<ul id="pg">
									<li><img
										src="http://farm4.static.flickr.com/3397/3436188128_5e503cefcd.jpg"
										alt="DSC_0704"></li>
										<li><img
										src="http://farm4.static.flickr.com/3397/3436188128_5e503cefcd.jpg"
										alt="DSC_0704"></li>
										<li><img
										src="http://farm4.static.flickr.com/3397/3436188128_5e503cefcd.jpg"
										alt="DSC_0704"></li>
										<li><img
										src="http://farm4.static.flickr.com/3397/3436188128_5e503cefcd.jpg"
										alt="DSC_0704"></li>
										<li><img
										src="http://farm4.static.flickr.com/3397/3436188128_5e503cefcd.jpg"
										alt="DSC_0704"></li>
									<li><img
										src="http://farm4.static.flickr.com/3300/3436187796_4d228a5bde.jpg"
										alt="DSC_0699"></li>
									<li><img
										src="http://farm4.static.flickr.com/3386/3435382439_68b5e3742b.jpg"
										alt="DSC_0602"></li>
									<li><img
										src="http://farm4.static.flickr.com/3657/3436187288_e84058f54b.jpg"
										alt="DSC_0603"></li>

									<li><img
										src="http://farm4.static.flickr.com/3134/3434099407_32da82e761.jpg"
										alt="DSC_0590"></li>
									<li><img
										src="http://farm4.static.flickr.com/3570/3436186474_4e35487600.jpg"
										alt="DSC_0619"></li>
										
									<li><img
										src="http://farm4.static.flickr.com/3339/3434101571_30f6f2bffd.jpg"
										alt="DSC_0620"></li>
									<li><img
										src="http://farm4.static.flickr.com/3134/3434099407_32da82e761.jpg"
										alt="DSC_0590"></li>
								</ul>
							</div>
							<img src="images/end2.gif" alt="" width="545" height="15" /><br />
						</div>

						<!-- ------------------------------------------------------------------------ -->
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
