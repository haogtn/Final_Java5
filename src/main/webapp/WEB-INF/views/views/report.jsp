<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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

<title>Báo cáo</title>
<style type="text/css">
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
						<li class="sidebar-item"><a href="/account/views"
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
					
					<h2 class="text-white fw-bold text-center font-monospace">BẢNG THỐNG KÊ</h2>
		<div class="row mt-4 rounded">
			<table class="table text-white table-dark table-striped ">
				<tr>
					<th>Loại hàng</th>
					<th> Tổng giá</th>
					<th>Số sản phẩm</th>
				</tr>
				<c:forEach var="item" items="${items}">
					<tr>
						<td>${item.groups}</td>
						<td>${item.sum}</td>
						<td>${item.count}</td>
					</tr>
				</c:forEach>
			</table>


		</div>
		<p>${messageExcel}</p>
	<a href="/report/excel-sendMail" class="btn btn-outline-warning" >Share Report as Excel</a>
					</div>
				</div>
			</main>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
	<script>
		const toggler = document.querySelector(".btn");
		toggler.addEventListener("click", function() {
			document.querySelector("#sidebar").classList.toggle("collapsed");
		});
	</script>
</body>

</html>