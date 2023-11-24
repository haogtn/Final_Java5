<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="./img-dj/meo.png" type="image/x-icon">
<title>Trang chủ</title>
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


</head>
<style>

/* *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
body{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: #1f242d;
     */
.navbar {
	background: #1f242d;
	position: sticky;
	top: 0;
}

.socical-icon a {
	position: relative;
	display: inline-block;
	width: 45px;
	height: 45px;
	background: transparent;
	box-shadow: 0 4px 4px rgba(0, 0, 0, .3);
	margin: 0 8px;
	z-index: 1;
	text-align: center;
	line-height: 45px;
	transition: .3s;
}

.socical-icon a:hover {
	background-color: #0ef;
	transform: rotate(135deg);
	box-shadow: 0 0 5px #0ef, 0 0 0px #0ef;
}

.socical-icon a::before {
	content: '';
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 40px;
	height: 40px;
	background: #929498;
	z-index: -1;
}

.socical-icon a i {
	font-size: 18px;
	color: #000;
	transition: .3s;
}

.socical-icon a:hover i {
	transform: rotate(225deg);
	color: #0ef;
}

.anhchuyendong {
	display: flex;
	height: 20rem;
	gap: 1rem;
}

.anhchuyendong>div {
	flex: 1;
	border-radius: 1rem;
	background-position: center;
	background-repeat: no-repeat;
	background-size: auto 100%;
	transition: all .8s cubic-bezier(.25, .4, .45, 1.4);
}

.anhchuyendong>div:hover {
	flex: 5;
}

.modall {
	margin: 0;
	padding: 0;
	font-family: sans-serif;
	background: linear-gradient(#141e30, #243b55);
}

.login-box {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 400px;
	padding: 40px;
	transform: translate(-50%, -50%);
	background: rgba(0, 0, 0, .5);
	box-sizing: border-box;
	box-shadow: 0 15px 25px rgba(0, 0, 0, .6);
	border-radius: 10px;
}

.login-box h2 {
	margin: 0 0 30px;
	padding: 0;
	color: #fff;
	text-align: center;
}

.login-box .user-box {
	position: relative;
}

.login-box .user-box input {
	width: 100%;
	padding: 10px 0;
	font-size: 16px;
	color: #fff;
	margin-bottom: 30px;
	border: none;
	border-bottom: 1px solid #fff;
	outline: none;
	background: transparent;
}

.login-box .user-box label {
	position: absolute;
	top: 0;
	left: 0;
	padding: 10px 0;
	font-size: 16px;
	color: #fff;
	pointer-events: none;
	transition: .5s;
}

.login-box .user-box input:focus ~ label, .login-box .user-box input:valid 
	 ~ label {
	top: -20px;
	left: 0;
	color: #03e9f4;
	font-size: 12px;
}

.login-box form a {
	position: relative;
	display: inline-block;
	padding: 10px 20px;
	color: #03e9f4;
	font-size: 16px;
	text-decoration: none;
	text-transform: uppercase;
	overflow: hidden;
	transition: .5s;
	margin-top: 40px;
	letter-spacing: 4px
}

.login-box a:hover {
	background: #03e9f4;
	color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 5px #03e9f4, 0 0 25px #03e9f4, 0 0 50px #03e9f4, 0 0
		100px #03e9f4;
}

.login-box a span {
	position: absolute;
	display: block;
}

.login-box a span:nth-child(1) {
	top: 0;
	left: -100%;
	width: 100%;
	height: 2px;
	background: linear-gradient(90deg, transparent, #03e9f4);
	animation: btn-anim1 1s linear infinite;
}

@
keyframes btn-anim1 { 0% {
	left: -100%;
}

50






%
,
100






%
{
left






:






100




%;
}
}
.login-box a span:nth-child(2) {
	top: -100%;
	right: 0;
	width: 2px;
	height: 100%;
	background: linear-gradient(180deg, transparent, #03e9f4);
	animation: btn-anim2 1s linear infinite;
	animation-delay: .25s
}

@
keyframes btn-anim2 { 0% {
	top: -100%;
}

50






%
,
100






%
{
top






:






100




%;
}
}
.login-box a span:nth-child(3) {
	bottom: 0;
	right: -100%;
	width: 100%;
	height: 2px;
	background: linear-gradient(270deg, transparent, #03e9f4);
	animation: btn-anim3 1s linear infinite;
	animation-delay: .5s
}

@
keyframes btn-anim3 { 0% {
	right: -100%;
}

50






%
,
100






%
{
right






:






100




%;
}
}
.login-box a span:nth-child(4) {
	bottom: -100%;
	left: 0;
	width: 2px;
	height: 100%;
	background: linear-gradient(360deg, transparent, #03e9f4);
	animation: btn-anim4 1s linear infinite;
	animation-delay: .75s
}

@
keyframes btn-anim4 { 0% {
	bottom: -100%;
}

50






%
,
100






%
{
bottom






:






100




%;
}
}
.anhjj {
	border-radius: 32px;
	background: #e0e0e0;
	box-shadow: 31px 31px 49px #b8b8b8, -31px -31px 49px #ffffff;
}

/* button */
button {
	position: relative;
	display: inline-block;
	cursor: pointer;
	outline: none;
	border: 0;
	vertical-align: middle;
	text-decoration: none;
	font-family: inherit;
	font-size: 15px;
}

button.learn-more {
	font-weight: 600;
	color: #382b22;
	text-transform: uppercase;
	padding: 1.25em 2em;
	background: #fff0f0;
	border: 2px solid #b18597;
	border-radius: 0.75em;
	-webkit-transform-style: preserve-3d;
	transform-style: preserve-3d;
	-webkit-transition: background 150ms cubic-bezier(0, 0, 0.58, 1),
		-webkit-transform 150ms cubic-bezier(0, 0, 0.58, 1);
	transition: transform 150ms cubic-bezier(0, 0, 0.58, 1), background
		150ms cubic-bezier(0, 0, 0.58, 1), -webkit-transform 150ms
		cubic-bezier(0, 0, 0.58, 1);
}

button.learn-more::before {
	position: absolute;
	content: '';
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: #f9c4d2;
	border-radius: inherit;
	-webkit-box-shadow: 0 0 0 2px #b18597, 0 0.625em 0 0 #ffe3e2;
	box-shadow: 0 0 0 2px #b18597, 0 0.625em 0 0 #ffe3e2;
	-webkit-transform: translate3d(0, 0.75em, -1em);
	transform: translate3d(0, 0.75em, -1em);
	transition: transform 150ms cubic-bezier(0, 0, 0.58, 1), box-shadow
		150ms cubic-bezier(0, 0, 0.58, 1), -webkit-transform 150ms
		cubic-bezier(0, 0, 0.58, 1), -webkit-box-shadow 150ms
		cubic-bezier(0, 0, 0.58, 1);
}

button.learn-more:hover {
	background: #ffe9e9;
	-webkit-transform: translate(0, 0.25em);
	transform: translate(0, 0.25em);
}

button.learn-more:hover::before {
	-webkit-box-shadow: 0 0 0 2px #b18597, 0 0.5em 0 0 #ffe3e2;
	box-shadow: 0 0 0 2px #b18597, 0 0.5em 0 0 #ffe3e2;
	-webkit-transform: translate3d(0, 0.5em, -1em);
	transform: translate3d(0, 0.5em, -1em);
}

button.learn-more:active {
	background: #ffe9e9;
	-webkit-transform: translate(0em, 0.75em);
	transform: translate(0em, 0.75em);
}

button.learn-more:active::before {
	-webkit-box-shadow: 0 0 0 2px #b18597, 0 0 #ffe3e2;
	box-shadow: 0 0 0 2px #b18597, 0 0 #ffe3e2;
	-webkit-transform: translate3d(0, 0, -1em);
	transform: translate3d(0, 0, -1em);
}

.input-wrapper {
	display: flex;
	align-items: center;
	justify-content: center;
	gap: 15px;
	position: relative;
}

.input {
	border-style: none;
	height: 50px;
	width: 50px;
	padding: 10px;
	outline: none;
	border-radius: 50%;
	transition: .5s ease-in-out;
	background-color: #7e4fd4;
	box-shadow: 0px 0px 3px #f3f3f3;
	padding-right: 40px;
	color: black;
}

.input::placeholder, .input {
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande',
		'Lucida Sans', Arial, sans-serif;
	font-size: 17px;
}

.input::placeholder {
	color: #8f8f8f;
}

.icon {
	display: flex;
	align-items: center;
	justify-content: center;
	position: absolute;
	right: 0px;
	cursor: pointer;
	width: 50px;
	height: 50px;
	outline: none;
	border-style: none;
	border-radius: 50%;
	pointer-events: painted;
	background-color: transparent;
	transition: .2s linear;
}

.icon:focus ~ .input, .input:focus {
	box-shadow: none;
	width: 250px;
	border-radius: 0px;
	background-color: transparent;
	border-bottom: 3px solid #7e4fd4;
	transition: all 500ms cubic-bezier(0, 0.110, 0.35, 2);
}

.navbar {
	background: #1f242d;
	position: sticky;
	top: 0;
}
</style>
<body ng-app="myapp">
	<!-- Modal -->
	<!-- Modal 2 -->
	<!-- Thanh menu -->

	<nav class="navbar navbar-expand-lg navbar-light  alert-secondary  ">
		<img
			src="Black_and_white_minimalist_jewelry_logo-removebg-preview.png"
			width="50px" alt="">
		<div class="container-fluid">
			<a class="navbar-brand p-1" href="#"> <img class="rounded-pill"
				alt="" src="./img-dj/meo.png" style="width: 2rem"></a>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a
						class=" fw-bold nav-link active text-white font-monospace"
						aria-current="page" href="./home">Trang Chủ</a></li>
					<li class="nav-item"><a
						class=" fw-bold nav-link active text-white font-monospace"
						aria-current="page" href="/sanpham/search">Sản phẩm</a></li>
					<li class="nav-item"><a
						class=" fw-bold nav-link active text-white font-monospace"
						aria-current="page" href="/sendMail">Liên hệ</a></li>
					<li class="nav-item"><a
						class=" fw-bold nav-link active text-white font-monospace"
						aria-current="page" href="tintuc.html">Tin tức</a></li>
					<li class="nav-item p-1">

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
				<div class="socical-icon ">
					<a href=""><i class="fa-brands fa-twitter"></i></a> <a href=""><i
						class="fa-brands fa-facebook"></i></a> <a href=""><i
						class="fa-brands fa-github"></i></a> <a href=""><i
						class="fa-brands fa-google"></i></a> <a href=""><i
						class="fa-brands fa-youtube"></i></a>
				</div>
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
	<!-- Slide -->
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
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img height="800px" src="/img-dj/music-g1c0ab21d7_1280.jpg"
					class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<div class="carousel-item">
				<img height="800px" src="/img-dj/monkey-g54744903a_1280.jpg"
					class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<div class="carousel-item">
				<img height="800px" src="/img-dj/piano-g35b6e27ee_1280.jpg"
					class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<!-- Container 2 -->
	<div class=" container mt-4 mb-4">
		<p class="text-center fw-bold fs-2 ">Dòng sản phẩm</p>
		<div class="row">
			<div class="col-md-2">
				<img width="200px" height="200px" class="rounded-circle p-3"
					src="img-dj/guitar1.jpg" alt="">
				<h5 class="text-center">Guitars</h5>
			</div>
			<div class="col-md-2">
				<img width="200px" height="200px" class="rounded-circle p-3"
					src="img-dj/loa1.jpg" alt="">
				<h5 class="text-center">Amps</h5>
			</div>
			<div class="col-md-2">
				<img width="200px" height="200px" class="rounded-circle p-3"
					src="img-dj/guitar2-1.jpg" alt="">
				<h5 class="text-center">Electric Guitars</h5>
			</div>
			<div class="col-md-2">
				<img width="200px" height="200px" class="rounded-circle p-3"
					src="img-dj/trong1.jpg" alt="">
				<h5 class="text-center">Drums</h5>
			</div>
			<div class="col-md-2">
				<img width="200px" height="200px" class="rounded-circle p-3"
					src="img-dj/trong2.jpg" alt="">
				<h5 class="text-center">The zither</h5>
			</div>
			<div class="col-md-2">
				<img width="200px" height="200px" class="rounded-circle p-3"
					src="img-dj/piano2.jpg" alt="">
				<h5 class="text-center">Piano</h5>
			</div>
			<div class="col-md-2">
				<img width="200px" height="200px" class="rounded-circle p-3"
					src="img-dj/sp1.jpg" alt="">
				<h5 class="text-center">Saxophone</h5>
			</div>
			<div class="col-md-2">
				<img width="200px" height="200px" class="rounded-circle p-3"
					src="img-dj/vl1.jpg" alt="">
				<h5 class="text-center">Violine</h5>
			</div>
			<div class="col-md-2">
				<img width="200px" height="200px" class="rounded-circle p-3"
					src="img-dj/dj1.jpg" alt="">
				<h5 class="text-center">DJ</h5>
			</div>
			<div class="col-md-2">
				<img width="200px" height="200px" class="rounded-circle p-3"
					src="img-dj/pk1.jpg" alt="">
				<h5 class="text-center">Headphone</h5>
			</div>
			<div class="col-md-2">
				<img width="200px" height="200px" class="rounded-circle p-3"
					src="img-dj/pk2.jpg" alt="">
				<h5 class="text-center">Disco Lights</h5>
			</div>
			<div class="col-md-2">
				<img width="200px" height="200px" class="rounded-circle p-3"
					src="img-dj/sp2.jpg" alt="">
				<h5 class="text-center">Harmonica</h5>
			</div>
		</div>
	</div>
	<!-- Container 3 -->

	<!-- Container 4  -->
	<h1 class="text-center fw-bold ">Những thông tin nhạc cụ</h1>
	<div class=" mt-5">
		<div class="row">
			<div class="col-md-6">
				<div class="anhjj">
					<img height="600px" src="img-dj/lady-gb470bd5b0_1280.jpg"
						class=" img-fluid rounded" alt="...">
				</div>
			</div>
			<div class="col-md-6">
				<h1 class="text-danger fw-bold font-monospace">Hãy thả hồn vào
					âm nhạc</h1>
				<span class="float-end font-monospace"> Hohner Unsere
					Lieblinge 48 C là một chiếc kèn harmonica quãng tám , có bộ điều
					chỉnh quãng tám Wiener 2 giọng nói , trong C-tuning , với 48 lưỡi
					gà bằng đồng , ống ngậm bằng gỗ thích và lược màu đen bằng gỗ thích
					. Sê-ri Unsere Lieblinge truyền thống đã được cả thế hệ trẻ và già
					yêu thích. Dạng cong vừa vặn hoàn hảo với môi và đặc biệt thoải mái
					khi chơi. Lược gỗ phong và tấm sậy chất lượng cao, quãng tám được
					điều chỉnh theo đúng ngữ điệu, đảm bảo âm thanh ấm áp, đầy đủ và
					chạm nổi chạm nổi trên vỏ thép không gỉ có hình dáng trang nhã đảm
					bảo rằng những mẫu này trông thực sự tuyệt vời. Tính năng của chiếc
					kèn harmonica Hohner Unsere Lieblinge 48 C này 48 sậy bằng đồng với
					các tấm sậy bằng đồng 0,9mm , điều chỉnh quãng tám Wiener 2 giọng
					nói và âm thanh mạnh mẽ đầy đủ.Hohner Unsere Lieblinge 48 C là một
					chiếc kèn harmonica quãng tám , có bộ điều chỉnh quãng tám Wiener 2
					giọng nói , trong C-tuning , với 48 lưỡi gà bằng đồng , ống ngậm
					bằng gỗ thích và lược màu đen bằng gỗ thích . Sê-ri Unsere
					Lieblinge truyền thống đã được cả thế hệ trẻ và già yêu thích. Dạng
					cong vừa vặn hoàn hảo với môi và đặc biệt thoải mái khi chơi. Lược
					gỗ phong và tấm sậy chất lượng cao, quãng tám được điều chỉnh theo
					đúng ngữ điệu, đảm bảo âm thanh ấm áp, đầy đủ và chạm nổi chạm nổi
					trên vỏ thép không gỉ có hình dáng trang nhã đảm bảo rằng những mẫu
					này trông thực sự tuyệt vời. Tính năng của chiếc kèn harmonica
					Hohner Unsere Lieblinge 48 C này 48 sậy bằng đồng với các tấm sậy
					bằng đồng 0,9mm , điều chỉnh quãng tám Wiener 2 giọng nói và âm
					thanh mạnh mẽ đầy đủ.Hohner Unsere Lieblinge 48 C là một chiếc kèn
					harmonica quãng tám , có bộ điều chỉnh quãng tám Wiener 2 giọng nói
					, trong C-tuning , với 48 lưỡi gà bằng đồng , ống ngậm bằng gỗ
					thích và lược màu đen bằng gỗ thích . Sê-ri Unsere Lieblinge truyền
					thống đã được cả thế hệ trẻ và già yêu thích. Dạng cong vừa vặn
					hoàn hảo với môi và đặc biệt thoải mái khi chơi. Lược gỗ phong và
					tấm sậy chất lượng cao, quãng tám được điều chỉnh theo đúng ngữ
					điệu, đảm bảo âm thanh ấm áp,n vỏ thép không gỉ có hình dáng trang
					nhã đảm bảo rằng những mẫu này trông thực sự tuyệt vời. Tính năng
					của chiếc kèn harmonica Hohner Unsere Lieblinge 48 C này 48 sậy
					bằng đồng với các tấm sậy bằng đồng 0,9mm , điều chỉnh quãng tám
					Wiener 2 giọng nói và âm thanh mạnh mẽ đầy đủ.Hohner Unsere
					Lieblinge 48 C là một chiếc kèn harmonica quãng tám , có bộ điều
					chỉnh quãng tám Wiener 2 giọng nói , trong C-tuning , với 48 lưỡi
					gà bằng đồng , ống ngậm bằng gỗ thích và lược màu đen bằng gỗ thích
					. Sê-ri Unsere Lieblinge truyền thống đã được cả thế hệ trẻ và già
					yêu thích. Dạng cong vừa vặn hoàn hảo với môi và đặc biệt thoải mái
					khi chơi. Lược gỗ phong và tấm sậy chất lượng cao, quãng tám được
					điều chỉnh theo đúng ngữ điệu, đảm bảo âm thanh ấm áp, đầy đủ và
					chạm nổi chạm nổi trên vỏ thép không gỉ có hình dáng trang nhã đảm
					bảo rằng những mẫu này trông thực sự tuyệt vời. Tính năng của chiếc
					kèn harmonica Hohner Unsere Lieblinge 48 C này 48 sậy bằng đồng với
					các tấm sậy bằng đồng 0,9mm , điều chỉnh quãng tám Wiener 2 giọng
					nói và âm thanh mạnh mẽ đầy đủ.Hohner Unsere Lieblinge 48 C là một
					chiếc kèn harmonica quãng tám , có bộ điều chỉnh quãng tám Wiener 2
					giọng nói , trong C-tuning , với 48 lưỡi gà bằng đồng , ống ngậm
					bằng gỗ thích và lược màu đen bằng gỗ thích . Sê-ri Unsere
					Lieblinge truyền thống đã được cả thế hệ trẻ và già yêu thích. Dạng
					congn vỏ thép không gỉ có hình dáng trang nhã đảm bảo rằng những
					mẫu này trông thực sự tuyệt vời. Tính năng của chiếc kèn harmonica
					Hohner Unsere Lieblinge 48 C này 48 sậy bằng., </span>
			</div>
		</div>

	</div>

	<div class=" mt-5">
		<div class="row">
			<div class="col-md-6">
				<h1 class="text-danger fw-bold font-monospace">Cháy hết mình
					với âm nhạc</h1>
				<span class="float-end font-monospace"> Hohner Unsere
					Lieblinge 48 C là một chiếc kèn harmonica quãng tám , có bộ điều
					chỉnh quãng tám Wiener 2 giọng nói , trong C-tuning , với 48 lưỡi
					gà bằng đồng , ống ngậm bằng gỗ thích và lược màu đen bằng gỗ thích
					. Sê-ri Unsere Lieblinge truyền thống đã được cả thế hệ trẻ và già
					yêu thích. Dạng cong vừa vặn hoàn hảo với môi và đặc biệt thoải mái
					khi chơi. Lược gỗ phong và tấm sậy chất lượng cao, quãng tám được
					điều chỉnh theo đúng ngữ điệu, đảm bảo âm thanh ấm áp, đầy đủ và
					chạm nổi chạm nổi trên vỏ thép không gỉ có hình dáng trang nhã đảm
					bảo rằng những mẫu này trông thực sự tuyệt vời. Tính năng của chiếc
					kèn harmonica Hohner Unsere Lieblinge 48 C này 48 sậy bằng đồng với
					các tấm sậy bằng đồng 0,9mm , điều chỉnh quãng tám Wiener 2 giọng
					nói và âm thanh mạnh mẽ đầy đủ.Hohner Unsere Lieblinge 48 C là một
					chiếc kèn harmonica quãng tám , có bộ điều chỉnh quãng tám Wiener 2
					giọng nói , trong C-tuning , với 48 lưỡi gà bằng đồng , ống ngậm
					bằng gỗ thích và lược màu đen bằng gỗ thích . Sê-ri Unsere
					Lieblinge truyền thống đã được cả thế hệ trẻ và già yêu thích. Dạng
					cong vừa vặn hoàn hảo với môi và đặc biệt thoải mái khi chơi. Lược
					gỗ phong và tấm sậy chất lượng cao, quãng tám được điều chỉnh theo
					đúng ngữ điệu, đảm bảo âm thanh ấm áp, đầy đủ và chạm nổi chạm nổi
					trên vỏ thép không gỉ có hình dáng trang nhã đảm bảo rằng những mẫu
					này trông thực sự tuyệt vời. Tính năng của chiếc kèn harmonica
					Hohner Unsere Lieblinge 48 C này 48 sậy bằng đồng với các tấm sậy
					bằng đồng 0,9mm , điều chỉnh quãng tám Wiener 2 giọng nói và âm
					thanh mạnh mẽ đầy đủ.Hohner Unsere Lieblinge 48 C là một chiếc kèn
					harmonica quãng tám , có bộ điều chỉnh quãng tám Wiener 2 giọng nói
					, trong C-tuning , với 48 lưỡi gà bằng đồng , ống ngậm bằng gỗ
					thích và lược màu đen bằng gỗ thích . Sê-ri Unsere Lieblinge truyền
					thống đã được cả thế hệ trẻ và già yêu thích. Dạng cong vừa vặn
					hoàn hảo với môi và đặc biệt thoải mái khi chơi. Lược gỗ phong và
					tấm sậy chất lượng cao, quãng tám được điều chỉnh theo đúng ngữ
					điệu, đảm bảo âm thanh ấm áp,n vỏ thép không gỉ có hình dáng trang
					nhã đảm bảo rằng những mẫu này trông thực sự tuyệt vời. Tính năng
					của chiếc kèn harmonica Hohner Unsere Lieblinge 48 C này 48 sậy
					bằng đồng với các tấm sậy bằng đồng 0,9mm , điều chỉnh quãng tám
					Wiener 2 giọng nói và âm thanh mạnh mẽ đầy đủ.Hohner Unsere
					Lieblinge 48 C là một chiếc kèn harmonica quãng tám , có bộ điều
					chỉnh quãng tám Wiener 2 giọng nói , trong C-tuning , với 48 lưỡi
					gà bằng đồng , ống ngậm bằng gỗ thích và lược màu đen bằng gỗ thích
					. Sê-ri Unsere Lieblinge truyền thống đã được cả thế hệ trẻ và già
					yêu thích. Dạng cong vừa vặn hoàn hảo với môi và đặc biệt thoải mái
					khi chơi. Lược gỗ phong và tấm sậy chất lượng cao, quãng tám được
					điều chỉnh theo đúng ngữ điệu, đảm bảo âm thanh ấm áp, đầy đủ và
					chạm nổi chạm nổi trên vỏ thép không gỉ có hình dáng trang nhã đảm
					bảo rằng những mẫu này trông thực sự tuyệt vời. Tính năng của chiếc
					kèn harmonica Hohner Unsere Lieblinge 48 C này 48 sậy bằng đồng với
					các tấm sậy bằng đồng 0,9mm , điều chỉnh quãng tám Wiener 2 giọng
					nói và âm thanh mạnh mẽ đầy đủ.Hohner Unsere Lieblinge 48 C là một
					chiếc kèn harmonica quãng tám , có bộ điều chỉnh quãng tám Wiener 2
					giọng nói , trong C-tuning , với 48 lưỡi gà bằng đồng , ống ngậm
					bằng gỗ thích và lược màu đen bằng gỗ thích . Sê-ri Unsere
					Lieblinge truyền thống đã được cả thế hệ trẻ và già yêu thích. Dạng
					congn vỏ thép không gỉ có hình dáng trang nhã đảm bảo rằng những
					mẫu này trông thực sự tuyệt vời. Tính năng của chiếc kèn harmonica
					Hohner Unsere Lieblinge 48 C này 48 sậy bằng., </span>
			</div>
			<div class="col-md-6 ">
				<div class="anhjj ">
					<img height="600px" src="img-dj/girl-g9048c1115_1280.jpg"
						class=" img-fluid rounded end-10" alt="...">
				</div>
			</div>
		</div>

	</div>
	<!-- Container 3 -->
	<h1 class=" text-center fw-bold mt-4">Âm nhạc ở quanh ta</h1>
	<div class="anhchuyendong mt-4 mb-4">

		<div
			style="background-image: url(img-dj/drummer-g9b7184ce1_1280.jpg);"></div>
		<div
			style="background-image: url(img-dj/concert-g853833af5_1280.jpg);"></div>
		<div
			style="background-image: url(img-dj/fantasy-gb3940483a_1280.jpg);"></div>
		<div
			style="background-image: url(img-dj/western-style-building-g66daff2d2_1280.jpg);"></div>
		<div
			style="background-image: url(img-dj/workshop-g1c75aa548_1280.jpg);"></div>

	</div>

	<!-- Container 4 -->


	<div>
		<center>
			<a href="/sanpham/search"><button class="learn-more">Xem
					Thêm</button></a>
		</center>
	</div>

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

	<!-- Angular -->
	<script>
		var app = angular.module("myapp", []);
		app.controller("myctrl", function($scope, $http) {
			$scope.products = product;
		});
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>

</html>