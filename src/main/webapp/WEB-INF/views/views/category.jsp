<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="./img-dj/meo.png" type="image/x-icon">
<title>Quản lý sản phẩm</title>
<script src="https://kit.fontawesome.com/ae360af17e.js"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />

<style type="text/css">
.error {
	color: red;
}

@import
	url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

*, ::after, ::before {
	box-sizing: border-box;
}

body {
	font-family: 'Poppins', sans-serif;
	margin: 0;
	background-image:
		url("https://codzsword.github.io/bootstrap-sidebar/background-image.jpg");
	background-repeat: no-repeat;
	background-position: center bottom;
	background-size: cover;
}

h3 {
	font-size: 1.2375rem;
	color: #FFF;
}

a {
	cursor: pointer;
	text-decoration: none;
	font-family: 'Poppins', sans-serif;
}

li {
	list-style: none;
}

/* Layout skeleton */
.wrapper {
	align-items: stretch;
	display: flex;
	width: 100%;
}

#sidebar {
	max-width: 264px;
	min-width: 264px;
	transition: all 0.35s ease-in-out;
	box-shadow: 0 0 35px 0 rgba(49, 57, 66, 0.5);
	z-index: 1111;
}

/* Sidebar collapse */
#sidebar.collapsed {
	margin-left: -264px;
}

.main {
	display: flex;
	flex-direction: column;
	min-height: 100vh;
	width: 100%;
	overflow: hidden;
	transition: all 0.35s ease-in-out;
}

.sidebar-logo {
	padding: 1.15rem 1.5rem;
}

.sidebar-logo a {
	color: #e9ecef;
	font-size: 1.25rem;
	font-weight: 600;
}

.sidebar-nav {
	padding: 0;
}

.sidebar-header {
	color: #e9ecef;
	font-size: .75rem;
	padding: 1.5rem 1.5rem .375rem;
}

a.sidebar-link {
	padding: .625rem 1.625rem;
	color: #e9ecef;
	position: relative;
	display: block;
	font-size: 1rem;
}

.sidebar-link[data-bs-toggle="collapse"]::after {
	border: solid;
	border-width: 0 .075rem .075rem 0;
	content: "";
	display: inline-block;
	padding: 2px;
	position: absolute;
	right: 1.5rem;
	top: 1.4rem;
	transform: rotate(-135deg);
	transition: all .2s ease-out;
}

.sidebar-link[data-bs-toggle="collapse"].collapsed::after {
	transform: rotate(45deg);
	transition: all .2s ease-out;
}

.content {
	flex: 1;
	max-width: 100vw;
	width: 100vw;
}

/* Responsive */
@media ( min-width :768px) {
	.content {
		width: auto;
	}
}

* {
	margin: 0;
	padding: 0
}

.card {
	width: 350px;
	background-color: #efefef;
	border: none;
	cursor: pointer;
	transition: all 0.5s;
}

.image img {
	transition: all 0.5s
}

.card:hover .image img {
	transform: scale(1.5)
}

.btn1 {
	height: 140px;
	width: 140px;
	border-radius: 50%
}

.name {
	font-size: 22px;
	font-weight: bold
}

.idd {
	font-size: 14px;
	font-weight: 600
}

.idd1 {
	font-size: 12px
}

.number {
	font-size: 22px;
	font-weight: bold
}

.follow {
	font-size: 12px;
	font-weight: 500;
	color: #444444
}

.text span {
	font-size: 13px;
	color: #545454;
	font-weight: 500
}

.icons i {
	font-size: 19px
}

hr .new1 {
	border: 1px solid
}

.join {
	font-size: 14px;
	color: #a0a0a0;
	font-weight: bold
}

.date {
	background-color: #ccc
}
</style>
</head>
<body>
<div class="text-danger">
	<c:choose>
<c:when test="${empty sessionScope.user}">

</c:when>
<c:otherwise >
 Welcome ${sessionScope.user.fullname}

<c:if test="${sessionScope.user.admin}">

</c:if>
</c:otherwise>
</c:choose>
</div>
	<div class="wrapper">
		<!-- Sidebar -->
		<aside id="sidebar">
			<div class="h-100">
				<div class="sidebar-logo">
					<a href="#">CodzSword</a>
				</div>
				<!-- Sidebar Navigation -->
				<ul class="sidebar-nav">
					<li class="sidebar-header">Tools & Components</li>
					<li class="sidebar-item"><a href="/account/register"
						class="sidebar-link"> <i class="fa-solid fa-list pe-2"></i>
							Profile
					</a></li>
					<li class="sidebar-item"><a href="/category/index"
						class="sidebar-link"> <i class=" bi bi-cart-fill pe-2"></i>
							Category
					</a></li>
					<li class="sidebar-item"><a href="/product/index"
						class="sidebar-link"> <i class="fa-regular fa-file-lines pe-2"></i>
							Product
					</a></li>
					<li class="sidebar-item"><a href="/product/views"
						class="sidebar-link"> <i class=" fa-solid fa-sliders pe-2"></i>List
							Product
					</a></li>
					<li class="sidebar-item"><a href="/product/views"
						class="sidebar-link"> <i class="fa-regular fa-file-lines pe-2"></i>
							List Profile
					</a></li>
					<li class="sidebar-item"><a href="/category/page"
						class="sidebar-link"> <i class=" fa-solid fa-sliders pe-2"></i>
							List Category
					</a></li>
					<li class="sidebar-item"><a href="/report/inventory-by-category"
						class="sidebar-link"> <i class=" fa-solid fa-sliders pe-2"></i>
							Report
					</a></li>
					<li class="sidebar-item"><a href="#"
						class="sidebar-link collapsed" data-bs-toggle="collapse"
						data-bs-target="#auth" aria-expanded="false" aria-controls="auth">
							<i class="fa-regular fa-user pe-2"></i> Auth
					</a>
						<ul id="auth" class="sidebar-dropdown list-unstyled collapse"
							data-bs-parent="#sidebar">
							<li class="sidebar-item"><a href="/account/login"
								class="sidebar-link">Login</a></li>
							<li class="sidebar-item"><a href="/account1/dangky"
								class="sidebar-link">Register</a></li>
							<li class="sidebar-item"><a href="/account/logout"
								class="sidebar-link">Logout</a></li>
						</ul></li>


				</ul>
			</div>
		</aside>
		<!-- Main Component -->
		<div class="main">
			<nav class="navbar navbar-expand px-3 border-bottom">
				<!-- Button for sidebar toggle -->
				<button class="btn" type="button" data-bs-theme="dark">
					<span class="navbar-toggler-icon"></span>
				</button>
			</nav>
			<!--Main-->
			<main class="content px-3 py-2">
				<div class="container-fluid">
					<div class="mb-3">

						<div>
							<div class="row">
								<div class="col-sm-12">
									<h2 class="font-monospace fw-bold text-white">PRODUCT</h2>
									<h5 class="font-monospace text-danger">${mes}</h5>
									<form:form action="/product/SaveOrUpdate"
										modelAttribute="PRODUCT" method="post"
										enctype="multipart/form-data">

										<div class="row">
											<div class="form-group col-md-6">
												<label class="text-white">Tên sản phẩm</label>
												<form:input type="text" class="form-control" path="name" />

											</div>
											<div class="form-group col-md-6">
												<label class="text-white">Giá tiền</label>
												<form:input type="text" class="form-control" path="price" />

											</div>
										</div>


										<div class="form-group ">
											<label class="text-white">Ngày</label>
											<form:input type="date" class="form-control"
												path="createDate" />

										</div>


										<div class="form-group ">
											<label class="text-white">Hình ảnh 1</label> <input
												type="file" class="form-control" name="image" />
											<p class="error">${ERROR_PHOTO }</p>
										</div>

										<div class="row">
											<div class="form-group col-md-6 ">
												<label class="text-white">Hình ảnh 2</label> <input
													type="file" class="form-control" name="image1" />
												<p class="error">${ERROR_PHOTO }</p>
											</div>
											<div class="form-group col-md-6 ">
												<label class="text-white">Hình ảnh 3</label> <input
													type="file" class="form-control" name="image2" />
												<p class="error">${ERROR_PHOTO }</p>
											</div>
										</div>
										<div class="row">
											<div class="form-group col-md-6">
												<label class="text-white">Hình ảnh 4</label> <input
													type="file" class="form-control" name="image3" />
												<p class="error">${ERROR_PHOTO }</p>
											</div>
											<div class="form-group col-md-6">
												<label class="text-white">Hình ảnh 5</label> <input
													type="file" class="form-control" name="image4" />
												<p class="error">${ERROR_PHOTO }</p>
											</div>
										</div>
								</div>

								<div class="form-group col-md-6">
									<label class="text-white">Loại hàng</label>
									 <form:select path="category.id"  class="form-control">
											<form:option value="">Select Category</form:option>
											<form:options items="${categories}" itemValue="id" itemLabel="name" />
										</form:select>
									
								</div>
								<div class="row">
									<div class="form-group col-md-6">
										<label class="text-white">Trạng thái</label>
										<div class="radio">

											<label class="checkbox-inline text-white "> <form:checkbox
													path="activated" />Activated
											</label>
										</div>

									</div>


								</div>



								<div class="text-center">
									<form:button type="submit" class="btn btn-outline-warning ">Save</form:button>
									<form:button type="reset" class="btn btn-outline-warning">Cancel</form:button>

								</div>
								</form:form>


							</div>
						</div>
					</div>


				</div>
		</div>
		</main>
	</div>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>

