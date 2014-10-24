
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<aside id="sidebar" class="column">
	<form class="quick_search">
		<input type="text" value="Quick Search"
			onfocus="if(!this._haschanged){this.value=''};this._haschanged=true;">
	</form>
	<hr />
	<h3>Sản phẩm</h3>
	<ul class="toggle">
		<li class="icn_new_article"><a href="addProduct.jsp">Thêm
				sản phẩm</a></li>
		<li class="icn_edit_article"><a href="products.jsp">Xóa/
				Sửa sản phẩm</a></li>
		<li class="icn_categories"><a href="#">Thêm danh mục</a></li>
		<li class="icn_categories"><a href="#">Xóa/ Sửa Danh mục</a></li>
	</ul>
	<h3>Tin rao vặt</h3>
	<ul class="toggle">
		<li class="icn_new_article"><a href="addPurchase.jsp">Thêm
				tin rao vặt</a></li>
		<li class="icn_edit_article"><a href="purchases.jsp">Xóa/
				sửa tin rao vặt</a></li>
	</ul>
	<h3>Tin tuyển dụng</h3>
	<ul class="toggle">
		<li class="icn_new_article"><a href="addRecruitment.jsp">Thêm
				tin tuyển dụng</a></li>
		<li class="icn_edit_article"><a href="recruitments.jsp">Xóa/
				Sửa tin tuyển dụng</a></li>
	</ul>

	<h3>Người dùng</h3>
	<ul class="toggle">
		<li class="icn_add_user"><a href="addUser.jsp">Thêm người
				dùng</a></li>
		<li class="icn_view_users"><a href="users.jsp">Quản lý
				người dùng</a></li>
		<li class="icn_profile"><a href="addUser.jsp">Thông tin cá
				nhân</a></li>
	</ul>
	<h3>Banner quảng cáo</h3>
	<ul class="toggle">
		<li class="icn_new_article"><a href="#">Thêm banner quảng
				cáo</a></li>
		<li class="icn_edit_article"><a href="banners.jsp">Xóa/ Sửa
				banner quảng cáo</a></li>
	</ul>

	<h3>Quản lý hình ảnh doanh nghiệp</h3>
	<ul class="toggle">
		<li class="icn_photo"><a href="photos.jsp">Hình ảnh</a></li>
	</ul>


	<h3>Admin</h3>


	<ul class="toggle">
		<li class="icn_settings"><a href="#">Quản lý khác</a></li>
		<li class="icn_security"><a href="#">Bảo mật</a></li>
		<li class="icn_jump_back"><a href="#">Thoát</a></li>
	</ul>

	<footer>
		<hr />
		<p>
			<strong>Copyright &copy; 2011 Website Admin</strong>
		</p>
		<p>
			Theme by <a href="http://www.medialoot.com">MediaLoot</a>
		</p>
	</footer>
</aside>
<!-- end of sidebar -->
