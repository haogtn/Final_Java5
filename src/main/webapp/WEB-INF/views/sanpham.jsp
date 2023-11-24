<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="./img-dj/meo.png" type="image/x-icon">
<title>Sản phẩm</title>
<meta charset="UTF-8">
<title></title>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif
}

body {
	background-color: #f4f4f4
}

.container {
	margin: 40px auto
}

#header {
	width: 100%;
	height: 60px;
	box-shadow: 5px 5px 15px #e8e8e8
}

.col-lg-4, .col-md-6 {
	padding-right: 0
}

button.btn.btn-hide {
	height: inherit;
	background-color: #ff935d;
	color: #fff;
	font-size: 0.82rem;
	padding-left: 40px;
	padding-right: 40px;
	border-top-right-radius: 0px;
	border-bottom-right-radius: 0px
}

.btn:focus {
	box-shadow: none
}

.box-label .btn {
	background-color: #fff;
	padding: 0;
	font-size: 0.8rem
}

.btn-red {
	background-color: #e00000ce
}

.btn-orange {
	background-color: #ffa500
}

.btn-pink {
	background-color: #e0009dce
}

.btn-green {
	background-color: #00811c
}

.btn-blue {
	background-color: #026bc2
}

.btn-brown {
	background-color: #994a00
}

.navbar {
	display: inline-flex
}

.pagination .page-item .page-link {
	color: #333;
	border: none;
	width: 40px;
	text-align: center
}

.pagination .page-item.active .page-link {
	background-color: #fff;
	border: 1px solid #333
}

select {
	outline: none;
	padding: 6px 12px;
	margin: 0px 4px;
	color: #999;
	font-size: 0.85rem;
	width: 140px
}

#select2 {
	border: 1px solid #777;
	color: #999
}

#pro {
	border: none;
	color: #333;
	font-weight: 700;
	padding-left: 0px;
	width: initial
}

#filterbar {
	width: 30%;
	background-color: #fff;
	border: 1px solid #ddd;
	border-radius: 15px;
	float: left
}

#filterbar input[type="radio"] {
	visibility: hidden
}

#filterbar input[type='radio']:checked {
	background-color: #16c79a;
	border: none
}

#filterbar .btn.btn-success {
	background-color: #ddd;
	color: #333;
	border: none;
	width: 115px
}

#filterbar .btn.btn-success:hover {
	background-color: #aff1e1;
	color: #444
}

#filterbar .btn-success:not(:disabled):not(.disabled).active, #filterbar .btn-success:not(:disabled):not(.disabled):active
	{
	background-color: #16c79a;
	color: #fff
}

label {
	cursor: pointer
}

.tick {
	display: block;
	position: relative;
	padding-left: 23px;
	cursor: pointer;
	font-size: 0.9rem;
	margin: 0
}

.tick input {
	position: absolute;
	opacity: 0;
	cursor: pointer;
	height: 0;
	width: 0
}

.check {
	position: absolute;
	top: 1px;
	left: 0;
	height: 18px;
	width: 18px;
	background-color: #fff;
	border: 1px solid #ddd;
	border-radius: 3px
}

.tick:hover input ~.check {
	background-color: #f3f3f3
}

.tick input:checked ~.check {
	background-color: #ffffff
}

.check:after {
	content: "";
	position: absolute;
	display: none
}

.tick input:checked ~.check:after {
	display: block;
	transform: rotate(45deg) scale(1)
}

.tick .check:after {
	left: 6px;
	top: 2px;
	width: 5px;
	height: 10px;
	border: solid rgb(0, 0, 0);
	border-width: 0 3px 3px 0;
	transform: rotate(45deg) scale(2)
}

.box {
	padding: 10px
}

.box-label {
	color: #11698e;
	font-size: 0.9rem;
	font-weight: 800
}

#inner-box, #inner-box2 {
	height: 150px;
	overflow-y: scroll
}

#inner-box2 {
	height: 132px
}

#inner-box::-webkit-scrollbar, #inner-box2::-webkit-scrollbar {
	width: 6px
}

#inner-box::-webkit-scrollbar-track, #inner-box2::-webkit-scrollbar-track
	{
	background-color: #ddd;
	border-radius: 2px
}

#inner-box::-webkit-scrollbar-thumb, #inner-box2::-webkit-scrollbar-thumb
	{
	background-color: #333;
	border-radius: 2px
}

#price {
	height: 45px
}

#size input[type="checkbox"] {
	visibility: hidden
}

#size input[type='checkbox']:checked {
	background-color: #16c79a;
	border: none
}

#size .btn.btn-success {
	background-color: #ddd;
	color: #333;
	border: none;
	width: 40px;
	font-size: 0.8rem;
	border-radius: 0
}

#size .btn.btn-success:hover {
	background-color: #aff1e1;
	color: #444
}

#size .btn-success:not(:disabled):not(.disabled).active, #size .btn-success:not(:disabled):not(.disabled):active
	{
	background-color: #16c79a;
	color: #fff
}

#size label {
	margin: 10px;
	margin-left: 0px
}

.card {
	padding: 10px;
	cursor: pointer;
	transition: .3s all ease-in-out;
	height: 350px
}

.card:hover {
	box-shadow: 2px 2px 15px #fd9a6ce5;
	transform: scale(1.02)
}

.card .product-name {
	font-weight: 600
}

.card-body {
	padding-bottom: 0
}

.card .text-muted {
	font-size: 0.82rem
}

.card-img img {
	padding-top: 10px;
	width: inherit;
	height: 180px;
	object-fit: contain;
	display: block
}

.card-body .btn-group .btn {
	padding: 0;
	width: 20px;
	height: 20px;
	margin-right: 5px;
	border-radius: 50%;
	position: relative
}

.card-body .btn-group>.btn-group:not(:last-child)>.btn, .card-body .btn-group>.btn:not(:last-child):not(.dropdown-toggle)
	{
	border-radius: 50%;
	transition: ease-in all .4s
}

.card-body input[type="radio"] {
	visibility: hidden
}

.card-body .btn:not(:disabled):not(.disabled).active::after, .card-body .btn:not(:disabled):not(.disabled):active::after
	{
	content: "";
	width: 10px;
	height: 10px;
	border-radius: 50%;
	top: 4px;
	left: 4.2px;
	background-color: #fff;
	position: absolute;
	transition: ease-in all .4s
}

.card-body .btn.btn-light:not(:disabled):not(.disabled).active::after,
	.card-body .btn.btn-light:not(:disabled):not(.disabled):active::after {
	background-color: #000
}

#avail-size input[type="checkbox"] {
	visibility: hidden
}

#avail-size input[type='checkbox']:checked {
	background-color: #16c79a;
	border: none
}

#avail-size .btn.btn-success {
	background-color: #ddd;
	color: #333;
	border: none;
	width: 20px;
	font-size: 0.7rem;
	border-radius: 0;
	padding: 0
}

#avail-size .btn.btn-success:hover {
	background-color: #aff1e1;
	color: #444
}

#avail-size .btn-success:not(:disabled):not(.disabled).active,
	#avail-size .btn-success:not(:disabled):not(.disabled):active {
	background-color: #16c79a;
	color: #fff
}

#avail-size label {
	margin: 10px;
	margin-left: 0px
}

#shirt {
	height: 170px
}

.middle {
	position: relative;
	width: 100%;
	margin-top: 25px
}

.slider {
	position: relative;
	z-index: 1;
	height: 5px;
	margin: 0 15px
}

.slider>.track {
	position: absolute;
	z-index: 1;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	border-radius: 5px;
	background-color: #ddd
}

.slider>.range {
	position: absolute;
	z-index: 2;
	left: 25%;
	right: 25%;
	top: 0;
	bottom: 0;
	border-radius: 5px;
	background-color: #36a31b
}

.slider>.thumb {
	position: absolute;
	top: 2px;
	z-index: 3;
	width: 20px;
	height: 20px;
	background-color: #36a31b;
	border-radius: 50%;
	box-shadow: 0 0 0 0 rgba(63, 204, 75, 0.705);
	transition: box-shadow .3s ease-in-out
}

.slider>.thumb::after {
	position: absolute;
	width: 8px;
	height: 8px;
	left: 28%;
	top: 30%;
	border-radius: 50%;
	content: '';
	background-color: #fff
}

.slider>.thumb.left {
	left: 25%;
	transform: translate(-15px, -10px)
}

.slider>.thumb.right {
	right: 25%;
	transform: translate(15px, -10px)
}

.slider>.thumb.hover {
	box-shadow: 0 0 0 10px rgba(125, 230, 134, 0.507)
}

.slider>.thumb.active {
	box-shadow: 0 0 0 10px rgba(63, 204, 75, 0.623)
}

input[type=range] {
	position: absolute;
	pointer-events: none;
	-webkit-appearance: none;
	z-index: 2;
	height: 10px;
	width: 100%;
	opacity: 0
}

input[type=range]::-webkit-slider-thumb {
	pointer-events: all;
	width: 30px;
	height: 30px;
	border-radius: 0;
	border: 0 none;
	background-color: red;
	-webkit-appearance: none
}

.del {
	text-decoration: line-through;
	color: red
}

@media ( min-width :1199.6px) {
	#filterbar {
		width: 25%
	}
}

@media ( max-width :1199.5px) {
	#filterbar {
		width: 28%
	}
	.card {
		height: 350px
	}
	.price {
		font-size: 0.9rem
	}
	.product-name {
		font-size: 0.8rem
	}
}

@media ( max-width : 991.5px) {
	.navbar-nav {
		min-width: 290px;
		position: absolute;
		left: -168px;
		bottom: -146px;
		padding: 20px 10px;
		display: block;
		background-image: none;
		z-index: 2;
		background-color: #1d1c1cb2
	}
	#filterbar {
		width: 36%
	}
	#sort {
		background-color: inherit;
		color: #fff;
		margin: 0;
		margin-bottom: 20px;
		width: 100%
	}
	#sort option, #pro option {
		color: #000
	}
	#pro, #select2, .result {
		background-color: inherit;
		color: #fff
	}
	.card {
		height: 345px
	}
	.price {
		font-size: 0.85rem
	}
}

@media ( max-width : 767.5px) {
	#filterbar {
		width: 50%
	}
}

@media ( max-width : 525.5px) {
	#filterbar {
		float: none;
		width: 100%;
		margin-bottom: 20px;
		border-radius: 5px
	}
	#content.my-5 {
		margin-top: 20px !important;
		margin-bottom: 20px !important
	}
	.col-lg-4, .col-md-6 {
		padding-left: 0
	}
}

@media ( max-width : 500.5px) {
	.pagination {
		display: none
	}
}
</style>
</head>
<body>

	<nav
		class="navbar navbar-expand-lg navbar-light  alert-secondary bg-dark  "
		style="width: 100%; height: 7rem">
		<img
			src="Black_and_white_minimalist_jewelry_logo-removebg-preview.png"
			width="50px" alt="">
		<div class="container-fluid">
			<a class="navbar-brand p-1" href="#"> <img class="rounded-pill"
				alt="" src="/img-dj/meo.png" style="width: 5rem"></a>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 m-5">

					<li class="nav-item"><a
						class=" fw-bold nav-link active text-white font-monospace"
						aria-current="page" href="/home">Trang Chủ</a></li>
					<li class="nav-item"><a
						class=" fw-bold nav-link active text-white font-monospace"
						aria-current="page" href="/sanpham/search">Sản phẩm</a></li>
					<li class="nav-item"><a
						class=" fw-bold nav-link active text-white font-monospace"
						aria-current="page" href="/sendMail">Liên hệ</a></li>
					<li class="nav-item"><a
						class=" fw-bold nav-link active text-white font-monospace"
						aria-current="page" href="tintuc.html">Tin tức</a></li>
					<li class="nav-item p-4">

						<div class="text-danger">
							<c:choose>
								<c:when test="${empty sessionScope.user}">
									Welcome
								</c:when>
								<c:otherwise>
 									${sessionScope.user.fullname}

										<c:if test="${sessionScope.user.admin}">

									</c:if>
								</c:otherwise>
							</c:choose>
						</div>
					</li>
				</ul>
				<form class="d-flex">

					<div
						class="container d-flex justify-content-between align-items-center">
						<div class="d-flex justify-content-between align-items-center">
						</div>
						<form class=" justify-content-center">
							<input class="form-control me-2" type="search"
								placeholder="Search" aria-label="Search">
							<button class="btn btn-outline-success" type="submit">Search</button>
						</form>
						<div>
							<div class="row">

								<div class="col-md-4">
									<a href="/account/login"> <i
										class="bi bi-person-circle fs-3 text-white p-3 "></i>
									</a>
								</div>
								<div class="col-md-4 position-relative">
									<a href="/shopping-cart/views" class=""> <i
										class="bi bi-cart-fill fs-3 text-white p-3  "></i>
									</a>
								</div>
								<div class="col-md-4 position-relative">
									<a href="/account/logout" class=""> <i
										class="fs-3 text-white p-3 bi bi-box-arrow-right"></i>
									</a>
								</div>
							</div>
							<!-- <a href="" class=" position-relative">
                                <i class="bi bi-cart3  fs-3 text-dark p-3"></i>
                                <span class="position-absolute top-0 start-15 translate-middle badge rounded-pill bg-danger">
                                    00
                                    <span class="visually-hidden">unread messages</span>
                                  </span>
                            </a>
                         -->


						</div>
					</div>
				</form>
			</div>
		</div>
	</nav>
	</div>
	<div class="">
		<div class="row p-3">
			<div class=" col-md-8">
				<div id="carouselExampleCaptions" class="carousel slide"
					data-bs-ride="carousel">

					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleCaptions"
							data-bs-slide-to="0" class="active" aria-current="true"
							aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleCaptions"
							data-bs-slide-to="1" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleCaptions"
							data-bs-slide-to="2" aria-label="Slide 3"></button>
					</div>
					<div class="carousel-inner rounded">
						<div class="carousel-item active">
							<img height="650px" src="/img-dj/monkey-g54744903a_1280.jpg"
								class="d-block w-100" alt="...">
							<div class="carousel-caption d-none d-md-block"></div>
						</div>
						<div class="carousel-item">
							<img height="650px" src="/img-dj/piano-g35b6e27ee_1280.jpg"
								class="d-block w-100" alt="...">
							<div class="carousel-caption d-none d-md-block"></div>
						</div>
						<div class="carousel-item">
							<img height="650px" src="/img-dj/music-g1c0ab21d7_1280.jpg"
								class="d-block w-100" alt="...">
							<div class="carousel-caption d-none d-md-block"></div>
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
			<div class="col-md-4">
				<img class=" img-fluid rounded mb-4"
					src="/img-dj/drum-set-gda2c5375b_1280.jpg" alt=""> <img
					class="img-fluid rounded" src="/img-dj/violins-g40731e6b4_1280.jpg"
					alt="">
			</div>
		</div>
	</div>

	<!-- Container 2 -->
	<center>
		<div class="container-fluid shadow p-2 rounded">
			<h1 class="fw-bold font-monospace mb-2">Hãng sản xuất</h1>
			<div class="row">
				<div class="col-md-3 mb-2">
					<img class="rounded" width="250px"
						src="https://i.pinimg.com/originals/dd/66/0c/dd660c960f1b690041a1838414ec840f.jpg"
						alt="">
				</div>
				<div class="col-md-3 mb-2">
					<img class="rounded" width="200px"
						src="data:image/png;base64,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"
						alt="">
				</div>
				<div class="col-md-3 mb-2">
					<img class="rounded" width="250px"
						src="data:image/png;base64,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"
						alt="">
				</div>
				<div class="col-md-3 mb-2">
					<img class="rounded" width="200px"
						src="https://cdn.freebiesupply.com/logos/large/2x/paiste-logo-svg-vector.svg"
						alt="">
				</div>
				<div class="col-md-3 mb-2">
					<img class="rounded" width="200px"
						src="https://upload.wikimedia.org/wikipedia/commons/e/e7/Cort_logo.jpg"
						alt="">
				</div>
				<div class="col-md-3 mb-2">
					<img class="rounded" width="200px"
						src="https://alchetron.com/cdn/young-chang-ed6ce873-a7e2-4a35-9654-7d7155413e4-resize-750.png"
						alt="">
				</div>
				<div class="col-md-3 mb-2">
					<img class="rounded" width="200px"
						src="data:image/png;base64,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"
						alt="">
				</div>
				<div class="col-md-3 mb-2">
					<img class="rounded" width="200px"
						src="https://www.logolynx.com/images/logolynx/57/574b6aa77a14c95847532ad6f2b205e2.jpeg"
						alt="">
				</div>

			</div>
		</div>
	</center>



	<div class="mt-4 ">


		<div id="content " class="my-5">


			<div id="products">
				<div class="row mx-0">
					<form action="/sanpham/search" method="post">
						<div class="row text-center container">
							<div class="col-md-2">
								<label class="font-monospace  ">Giá thấp</label> <input
									class="form-control" name="min" value="${param.min}"
									placeholder="Min Price?">
							</div>
							<div class="col-md-2">
								<label class="font-monospace  ">Giá cao</label> <input
									class="form-control" name="max" value="${param.max}"
									placeholder="Max Price?">
							</div>

							<div class="col-md-2">
								<label class="font-monospace  ">Theo tên</label> <input
									class="form-control" name="keywords" value="${keywords}"
									placeholder="Ten?">
							</div>
							<div class="col-md-2 p-5">

								<button class="btn btn-outline-warning">Search</button>
							</div>
							<div class="col-md-2 ">

								<label class="font-monospace fw-bold text-dark">Kích
									thức trang</label>

								<div class="">
									<input class="form-control" style="width: 50px"
										placeholder="${page.numberOfElements }">
								</div>
							</div>
							<div class="col-md-1 ">

								<label class="font-monospace fw-bold text-dark">Số trang</label>

								<div class="">
									<input class="form-control" style="width: 50px"
										placeholder="${page.number }">
								</div>
							</div>
							<div class="col-md-1 ">

								<label class="font-monospace fw-bold text-dark">Tổng </label>

								<div class="">
									<input class="form-control" style="width: 50px"
										placeholder="${page.totalElements }">
								</div>
							</div>
						</div>

						<div class="row mt-4 container ">
							<c:forEach items="${page.content}" varStatus="status" var="item">
								<div style="height: 35rem;"
									class="col-md-3 mt-4 font-monospace fw-bold text-center shadow  bg-body-tertiary rounded ">

									<a href="/sanpham/search/${item.id}"> <img
										class="rounded-pill img-fluid" height="30px" width="200px"
										src="/img-dj/${item.image}" alt=""></a>
									<h6>${item.name}</h6>
									<!-- <div class="row">
                <div class="col">
                   <span class="border border-danger text-danger"># Nhập mã nhận</span>
                </div>
                <div class="col">
                    <span class="border border-danger text-danger"># Siêu ưu đãi</span>
                </div>
            </div> -->
									<span class="mt-1 "><i
										class="bi bi-cash align-items-center"> ${item.price} $</i></span>
									<div>
										<i class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i>
										<i class="bi bi-star-half"></i>
									</div>
									<a class="btn btn-outline-warning"
										href="/shopping-cart/add/${item.id}">Mua hàng</a>


									<!-- Modal1 -->
								</div>
							</c:forEach>
							<div class="row"></div>
							<div class="text-center">
								<a class="btn btn-outline-warning" href="/sanpham/search?p=0">First</a>
								<a class="btn btn-outline-warning"
									href="/sanpham/search?p=${page.number-1}">Previous</a> <a
									class="btn btn-outline-warning"
									href="/sanpham/search?p=${page.number+1}">Next</a> <a
									class="btn btn-outline-warning"
									href="/sanpham/search?p=${page.totalPages-1}">Last</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

	</div>

	<!-- Container 4 -->




	<!-- footer -->
	<div class=" mt-4 bg-dark rounded">
		<div class="row p-3">
			<div class="col-md-3    ">
				<img class="img-fluid rounded  "
					src="Black_and_white_minimalist_jewelry_logo-removebg-preview.png"
					alt="">
				<div class="row rounded ">
					<img class="rounded col-md-2"
						src="https://classic.vn/wp-content/uploads/2022/04/logo-shopee.png"
						alt="" width="35" height="35"> <img class="rounded col-md-2"
						src="https://upload.wikimedia.org/wikipedia/commons/0/09/Lazada_Vietnam_Logo_Version_6.png"
						alt="" width="35" height="35"> <img class="rounded col-md-2"
						src="https://cdn-icons-png.flaticon.com/512/5969/5969008.png"
						alt="" width="35" height="35"> <img class="rounded col-md-2"
						src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1200px-Facebook_Logo_%282019%29.png"
						alt="" width="35" height="35"> <img class="rounded col-md-2"
						src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/2048px-Instagram_logo_2016.svg.png"
						alt="" width="35" height="35"> <img class="rounded col-md-2"
						src="https://assets-global.website-files.com/6257adef93867e50d84d30e2/636e0a6a49cf127bf92de1e2_icon_clyde_blurple_RGB.png"
						alt="" width="35" height="35">
				</div>
			</div>
			<div class="col-md-5 p-5 container  rounded">
				<p class="text-start text-white fs-3 fw-bold font-monospace ">Shop
					Nhạc Cụ Aries and Supreme</p>
				<p class="text-start text-white  p-1 font-monospace">
					<i class="bi bi-envelope p-1"></i>Mail: hapgtnps25509@gmail.com
				</p>
				<p class="text-start text-white  p-1 font-monospace">
					<i class="bi bi-telephone p-1"></i>Phone: 09874216214
				</p>
				<p class="text-start text-white  p-1 font-monospace">
					<i class="bi bi-geo-alt p-1"></i>Địa chỉ: Công viên phần mềm Quang
					Trung
				</p>
				<p class="text-start text-white p-1 font-monospace">
					<i class="bi bi-journal-code p-1"></i>Mã số thuế: 0612345315
				</p>
				<p class="text-start text-white p-1 font-monospace">
					<i class="bi bi-book p-1"></i>Giấy phép kinh doanh: 016546516556
				</p>
			</div>
			<div class="col-md-4 p-5 container  rounded">
				<p class="text-start text-white fs-3 fw-bold font-monospace ">Chính
					sách - Điều khoản</p>
				<p class="text-start text-white  p-1 font-monospace">
					<i class="bi bi-envelope p-1"></i>Chính sách bảo mật
				</p>
				<p class="text-start text-white  p-1 font-monospace">
					<i class="bi bi-telephone p-1"></i>Điều khoản sử dụng
				</p>
				<p class="text-start text-white  p-1 font-monospace">
					<i class="bi bi-geo-alt p-1"></i>Chính sách đổi trả
				</p>
				<p class="text-start text-white  p-1 font-monospace">
					<i class="bi bi-journal-code p-1"></i>Tư vấn - hỗ trở
				</p>
				<p class="text-start text-white p-1 font-monospace">
					<i class="bi bi-book p-1"></i>Những câu hỏi thường gặp
				</p>
			</div>
		</div>
	</div>

	<script>


document.addEventListener("DOMContentLoaded", function(event) {
	const cartButtons = document.querySelectorAll('.cart-button');
	cartButtons.forEach(button => {
	button.addEventListener('click',cartClick);
	});
	function cartClick(){
		let button =this;
		button.classList.add('clicked');
	}
	});



document.addEventListener('DOMContentLoaded', function() {
    var myModal = new bootstrap.Modal(document.getElementById('exampleModal1'));
    myModal.show();
}); 

</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>