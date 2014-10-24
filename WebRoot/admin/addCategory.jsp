<!doctype html>
<html lang="en">

<head>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Dashboard I Admin Panel</title>

<link rel="stylesheet" href="css/layout.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="css/datepicker.css" type="text/css"
	media="screen" />
<!--[if lt IE 9]>
	<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen" />
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
<script src="js/jquery-1.5.2.min.js" type="text/javascript"></script>
<script src="js/hideshow.js" type="text/javascript"></script>
<script src="js/jquery.tablesorter.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<script type="text/javascript" src="js/jquery.equalHeight.js"></script>
<script>
$(function() {
$( "#datepicker" ).datepicker();
});
</script>
</head>


<body>

	<jsp:include page="includes/header.jsp" flush="true" />
	<jsp:include page="includes/menu.jsp" flush="true" />



	<section id="main" class="column">

		<h4 class="alert_info">Welcome to the free MediaLoot admin panel
			template, this could be an informative message.</h4>

		<div class="clear"></div>

		<article class="module width_full">
			<header>
				<h3>Thêm danh mục sản phẩm</h3>
			</header>
			<div class="module_content">

				<fieldset>
					<!-- to make two field float next to one another, adjust values accordingly -->

					<label>Tên danh mục</label> <input type="text" style="width: 92%;">
				</fieldset>


			</div>
			<footer>
				<div class="submit_link">
					<input type="submit" value="Publish" class="alt_btn"> <input
						type="submit" value="Reset">
				</div>
			</footer>
		</article>
		<!-- end of post new article -->


		<h4 class="alert_warning">A Warning Alert</h4>

		<h4 class="alert_error">An Error Message</h4>

		<h4 class="alert_success">A Success Message</h4>


	</section>


</body>

</html>