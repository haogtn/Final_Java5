<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="./img-dj/meo.png" type="image/x-icon">
<title>Giỏ hàng</title>
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

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<style type="text/css">
body {
	margin-top: 20px;
	background: #eee;
}

h3 {
	font-size: 16px;
}

.text-navy {
	color: #1ab394;
}

.cart-product-imitation {
	text-align: center;
	padding-top: 30px;
	height: 80px;
	width: 80px;
	background-color: #f8f8f9;
}

.product-imitation.xl {
	padding: 120px 0;
}

.product-desc {
	padding: 20px;
	position: relative;
}

.ecommerce .tag-list {
	padding: 0;
}

.ecommerce .fa-star {
	color: #d1dade;
}

.ecommerce .fa-star.active {
	color: #f8ac59;
}

.ecommerce .note-editor {
	border: 1px solid #e7eaec;
}

table.shoping-cart-table {
	margin-bottom: 0;
}

table.shoping-cart-table tr td {
	border: none;
	text-align: right;
}

table.shoping-cart-table tr td.desc, table.shoping-cart-table tr td:first-child
	{
	text-align: left;
}

table.shoping-cart-table tr td:last-child {
	width: 80px;
}

.ibox {
	clear: both;
	margin-bottom: 25px;
	margin-top: 0;
	padding: 0;
}

.ibox.collapsed .ibox-content {
	display: none;
}

.ibox:after, .ibox:before {
	display: table;
}

.ibox-title {
	-moz-border-bottom-colors: none;
	-moz-border-left-colors: none;
	-moz-border-right-colors: none;
	-moz-border-top-colors: none;
	background-color: #ffffff;
	border-color: #e7eaec;
	border-image: none;
	border-style: solid solid none;
	border-width: 3px 0 0;
	color: inherit;
	margin-bottom: 0;
	padding: 14px 15px 7px;
	min-height: 48px;
}

.ibox-content {
	background-color: #ffffff;
	color: inherit;
	padding: 15px 20px 20px 20px;
	border-color: #e7eaec;
	border-image: none;
	border-style: solid solid none;
	border-width: 1px 0;
}

.ibox-footer {
	color: inherit;
	border-top: 1px solid #e7eaec;
	font-size: 90%;
	background: #ffffff;
	padding: 10px 15px;
}
</style>
</head>
<body>

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

	<div class="container font-monospace mt-4">
		<div class="wrapper wrapper-content animated fadeInRight">

			<div class="row">
				<div class="col-md-9">


					<div class="ibox">
						<div class="ibox-title">

							<h5>
								Items in your cart : <span></span>
							</h5>


						</div>

						<c:forEach var="item" items="${cart}">
							<form
								action="/shopping-cart/update/${item.productids}/${item.qty}"
								method="post">
								<input type="hidden" name="id" value="${item.productids}" />
								<div class="ibox-content">
									<div class="table-responsive">
										<table class="table shoping-cart-table">
											<tbody>
												<tr>
													<td width="90">

														<div class="">
															<img alt="" src="/img-dj/${item.image }" width="100px"
																height="120px">
														</div>
													</td>
													<td class="desc">
														<h3 class="text-success">${item.name }</h3>

														<dl class="small m-b-none">
															${item.productids}
															<dt>Description lists</dt>
															<dd>A description list is perfect for defining
																terms.</dd>
														</dl>

														<div class="m-t-sm">
															<a href="#" class="text-muted"><i class="bi bi-gift"></i>
																Add gift package</a> | <a
																href="/shopping-cart/del/${item.productids}"
																class="text-muted"><i class="bi bi-trash"></i>
																Remove item</a>
														</div>
													</td>

													<td class="align-middle">${item.price}$</td>
													<td class="align-middle"><input class="form-control" min="1"
														value="${item.qty }" name="qty"
														oninput="updateCartItem(this, ${item.price})" /></td>
													<td class="align-middle">${item.price*item.qty}$</td>
												</tr>
											</tbody>
										</table>
									</div>

									<!-- Button trigger modal -->

									<!-- Modal -->
									<div class="modal fade" id="exampleModal" tabindex="-1"
										aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header"></div>
												<div class="modal-body">
													<h5>
														Bạn đã thanh toán số tiền : <span class="text-danger">
															${totalQuantity} $</span>
													</h5>
												</div>

											</div>
										</div>
									</div>

								</div>
							</form>
						</c:forEach>

						<div class="ibox-content">
							<a class=" text-dark fw-bold fs-5 btn-sm" href="/sanpham/search"><i
								class="bi bi-arrow-left"></i> Continue shopping</a>


						</div>
					</div>


				</div>
				<div class="col-md-3">
					<div class="ibox">
						<div class="ibox-title">
							<h5>Cart Summary</h5>
						</div>
						<div class="ibox-content">
							<span> Total </span>
							<h2 class="font-bold">${totalQuantity}$</h2>

							<hr>
							<span class="text-muted small"> </span>
							<div class="m-t-sm">
								<div class="btn-group">
									<a data-bs-toggle="modal" data-bs-target="#exampleModal"
										href="#" class="btn btn-primary btn-sm m-1"><i
										class="fa fa-shopping-cart"></i> Checkout</a> <a
										class="btn btn-primary btn-sm m-1" href="/shopping-cart/del1/">Clear
										more</a>
								</div>
							</div>
						</div>
					</div>

					<div class="ibox">
						<div class="ibox-title">
							<h5>Support</h5>
						</div>
						<div class="ibox-content text-center">
							<h3>
								<i class="fa fa-phone"></i> +8455620053
							</h3>
							<span class="small">Nếu có gặp bất kì điều gì không tốt ở shop tui thì xin liên hệ số trên </span>
						</div>
					</div>

					<div class="ibox">
					
					</div>
				</div>
			</div>

		</div>
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


	<script>
		function updateCartItem(input, price, itemId) {
			var quantity = input.value;
			var totalPriceElement = input.parentNode.nextElementSibling;
			var totalPrice = quantity * price;
			totalPriceElement.textContent = totalPrice;

			// Gửi yêu cầu cập nhật đến server
			var csrfToken = document.querySelector("meta[name='_csrf']").content;
			var csrfHeader = document
					.querySelector("meta[name='_csrf_header']").content;

			var xhr = new XMLHttpRequest();
			xhr.open("POST", "/shopping-cart/update/" + itemId, true);
			xhr.setRequestHeader(csrfHeader, csrfToken);
			xhr.setRequestHeader("Content-Type",
					"application/x-www-form-urlencoded");
			xhr.send("quantity=" + quantity);
		}
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>