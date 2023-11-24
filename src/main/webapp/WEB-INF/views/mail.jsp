<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="./img-dj/meo.png" type="image/x-icon">
<title>Gửi Mail</title>
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
<title>JSP Page</title>
<style type="text/css">
body{
background-image: url("https://thuthuatnhanh.com/wp-content/uploads/2019/11/anh-bau-troi-sao-dem-lung-linh.jpg");
}


@import
	url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif
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
<%@include file="header.jsp" %>
	<div class="container mt-4" style="margin-top: 10px;">
		<div class="row"
			style=" width: 50%; margin: 0 auto; padding: 20px;">
			<div class="col-sm-12">
				<h2 class="myclass text-center text-white fw-bold font-monospace">SEND MAIL</h2>
				
								<form class="mb-5" enctype="multipart/form-data" action="/send-email" method="post">
								<div class="row">
									<div class="col-md-12 form-group">
										<input type="text" class="form-control" name="txtTo" id="txtTo"
											placeholder="To"/>
											<span class="text-danger">${erTo}</span>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12 form-group">
										<input type="text" class="form-control" name="txtSubject"
											id="txtSubject" placeholder="Subject"/>
											<span class="text-danger">${erSubject}</span>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12 form-group">
										<input type="text" class="form-control" name="txtCC" id="txtCC"
											placeholder="txtCC"/>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12 form-group">
										<input type="text" class="form-control" name="txtBCC"
											id="txtBCC" placeholder="txtBCC"/>
									</div>
								</div>
								
								
								<div class="row">
									<div class="col-md-12 form-group">
										<input type="file" class="form-control" name="file"
											id="files"/>
									</div>
								</div>
								

								<div class="row">
									<div class="col-md-12 form-group">
										<textarea class="form-control" name="txtContent" id="txtContent" cols="10"
											rows="3" placeholder="Write your message"></textarea>
											<span class="text-danger">${erBody}</span>
									</div>
								</div>
								<div class="row">
									<div class="col-12">
										<button type="submit"
											class="btn btn-outline-warning ">Send</button>
									</div>

								</div>
								<div class="mt-3">
				<div class="alert alert-info">${mailSendingMessage}</div>
			</div>
							</form>

							
			</div>
		</div>
	</div>
	<script type="text/javascript">
        const btnMore = document.querySelector('#btnMore');
        const fileMore = document.querySelector(".form-group:last-child");
        btnMore.addEventListener('click', () => {
            fileMore.style.display = "block";
        });
    </script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>