<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
 
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Calibri:400,300,700)
	;

body {
	vertical-align: middle;
	display: flex;
	font-family: 'Calibri', sans-serif !important;
	background-color: #eee
}

.mt-100 {
	margin-top: 100px
}

.product-wrapper, .product-img {
	overflow: hidden;
	position: relative
}

.mb-45 {
	margin-bottom: 45px
}

.product-action {
	bottom: 0px;
	left: 0;
	opacity: 0;
	position: absolute;
	right: 0;
	text-align: center;
	transition: all 0.6s ease 0s
}

.product-wrapper {
	border-radius: 10px
}

.product-img>span {
	background-color: #fff;
	box-shadow: 0 0 8px 1.7px rgba(0, 0, 0, 0.06);
	color: #333;
	display: inline-block;
	font-size: 12px;
	font-weight: 500;
	left: 20px;
	letter-spacing: 1px;
	padding: 3px 12px;
	position: absolute;
	text-align: center;
	text-transform: uppercase;
	top: 20px
}

.product-action-style {
	background-color: #fff;
	box-shadow: 0 0 8px 1.7px rgba(0, 0, 0, 0.06);
	display: inline-block;
	padding: 16px 2px 12px
}

.product-action-style>a {
	color: #979797;
	line-height: 1;
	padding: 0 21px;
	position: relative
}

.product-action-style>a.action-plus {
	font-size: 18px
}

.product-wrapper:hover .product-action {
	bottom: 20px;
	opacity: 1
}
.button-container {
  display: flex;
  background-color: rgba(245, 73, 144);
  width: 250px;
  height: 40px;
  align-items: center;
  justify-content: space-around;
  border-radius: 10px;
  box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px,
        rgba(245, 73, 144, 0.5) 5px 10px 15px;
}

.button {
  outline: 0 !important;
  border: 0 !important;
  width: 40px;
  height: 40px;
  border-radius: 50%;
  background-color: transparent;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #fff;
  transition: all ease-in-out 0.3s;
  cursor: pointer;
}

.button:hover {
  transform: translateY(-3px);
}

.icon {
  font-size: 20px;
}
</style>
<title>Insert title here</title>
</head>
<body>

<a onclick="" href="" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1"
								data-abc="true"></a>
								
	<div class="modal fade" id="exampleModal1" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-fullscreen">
								<div class="modal-content">
									<div class="modal-header">
										<a href="/product/views" type="button" class="btn-close"
											></a>
									</div>
									<div class="modal-body">
										<div class="container ">
											<div class="row align-items-start">
												<div class=" col-md-6">
													<div id="carouselExampleInterval" class="carousel slide"
														data-bs-ride="carousel">
														<div class="carousel-inner">
															<div class="carousel-item active"
																data-bs-interval="10000">
																<img src="/image/${item.image}" class="d-block w-100"
																	alt="...">
																<h1>${index2 }</h1>
															</div>
															<div class="carousel-item" data-bs-interval="2000">
																<img src="/image/${item.image1}" class="d-block w-100"
																	alt="...">
																	<h1>${index2 }</h1>
															</div>
															<div class="carousel-item">
																<img src="/image/${item.image2}" class="d-block w-100"
																	alt="...">
																	<h1>${index2 }</h1>
															</div>
															<div class="carousel-item">
																<img src="/image/${item.image3}" class="d-block w-100"
																	alt="...">
															</div>
															<div class="carousel-item">
																<img src="/image/${item.image4}" class="d-block w-100"
																	alt="...">
															</div>
														</div>
														<button class="carousel-control-prev" type="button"
															data-bs-target="#carouselExampleInterval"
															data-bs-slide="prev">
															<span class="carousel-control-prev-icon"
																aria-hidden="true"></span> <span class="visually-hidden">Previous</span>
														</button>
														<button class="carousel-control-next" type="button"
															data-bs-target="#carouselExampleInterval"
															data-bs-slide="next">
															<span class="carousel-control-next-icon"
																aria-hidden="true"></span> <span class="visually-hidden">Next</span>
														</button>
													</div>
													<div class="row mt-1">
														<div class="col">
															<img width="100" src="/image/${item.image}"
																class="img-thumbnail" alt="...">
														</div>
														<div class="col">
															<img width="100" src="/image/${item.image1}"
																class="img-thumbnail" alt="...">
														</div>
														<div class="col">
															<img width="100" src="/image/${item.image2}"
																class="img-thumbnail" alt="...">
														</div>
														<div class="col">
															<img width="100" src="/image/${item.image3}"
																class="img-thumbnail" alt="...">
														</div>
														<div class="col">
															<img width="100" src="/image/${item.image4}"
																class="img-thumbnail" alt="...">
														</div>
													</div>
												</div>
												<div class=" col-md-6 text-start">
													<div>
														<h3 class="font-monospace text-warning">${item.name }</h3>
														<div class="row">
															<div class=" col-md-12">
																<h5 class="text-danger font-monospace">
																	${item.price } $<span
																		class="text-dark text-decoration-line-through">${item.price1 } $</span>
																</h5>
																<div class="col-md-12 mt-2">
																	<p class="font-monospace">- Đàn Guitar Điện 6 Dây
																		Dòng ST Vintage</p>
																	<p class="font-monospace">- Chiều dài áo: 72cm</p>
																	<p class="font-monospace">- Chiều rộng áo: 50cm</p>
																	<p class="font-monospace">- Cơ thể: Alder</p>
																	<p class="font-monospace">- Cổ: Gỗ phong Canada</p>
																	<p class="font-monospace">- Cần đàn: Gỗ hồng mộc</p>
																	<p class="font-monospace">- 3x Pick-Up một cuộn gốm
																		Wilkinson</p>
																	<p class="font-monospace">- Công tắc chọn lưỡi dao
																		5 chiều</p>
																	<p class="font-monospace">- Hệ thống Tremolo cổ
																		điển</p>
																	<p class="font-monospace">- Cơ chế đúc</p>
																	<p class="font-monospace">- Hồ sơ cổ 'C' mỏng</p>
																	<p class="font-monospace">- Kết thúc: Màu xanh</p>
																</div>
																<div class="row">
																	<div class="col-md-4 mt-3">
																		<h6 class="font-monospace">Màu sắc</h6>
																	</div>
																	<div class="col-md-6">
																		<div class="btn-group ">
																			<button type="button"
																				class="btn btn-light font-monospace">Chọn
																				màu sắc</button>
																			<button type="button"
																				class="btn btn-light dropdown-toggle dropdown-toggle-split"
																				data-bs-toggle="dropdown" aria-expanded="false">
																				<span class="visually-hidden">Toggle Dropdown</span>
																			</button>
																			<ul class="dropdown-menu">
																				<li><a class="dropdown-item font-monospace"
																					href="">Hồng cánh sen</a></li>
																				<li><a class="dropdown-item font-monospace"
																					href="">Tím mộng mơ</a></li>
																			</ul>
																		</div>
																	</div>
																</div>
															</div>
															<!-- <div class="col-md-5">
                    <h6>Cấu hình:</h6>
                    <div class="badge bg-success text-wrap m-2" style="width: 6rem; height: 2rem;">
                        4GB-128GB
                      </div>
                      <div class="badge bg-success text-wrap m-2" style="width: 6rem; height: 2rem;">
                        8GB-256GB
                      </div>
                </div> -->
														</div>

														<div class=" mt-4">
															<a type=" button" href="/shopping-cart/add/${item.id}" class="btn btn-danger"><i
																class="bi bi-cart3 p-1" role="button"></i> Mua Ngay</a>
															<button type="button" class="btn btn-primary">
																<i class="bi bi-cart-plus"></i> Thêm vào giỏ hàng
															</button>
														</div>
													</div>

												</div>
												<div class="mt-4 text-start">
													<h2 class="fw-blod">Mô tả:</h2>
													<p class="fw-blod">
														<span class="text-primary"> J &D ST Vintage (Xanh
															lam)</span> là Ghi-ta điện 6 dây thuộc Sê-ri ST Vintage, cung
														cấp Âm thanh cổ điển và tinh tế ở mức giá bình dân. ST
														Vintage Instruments sử dụng 3x Pick-Up cuộn dây đơn
														Wilkinson cùng với Cấu hình cổ 'C' mỏng cổ điển, làm cho
														nó trở thành một nhạc cụ tuyệt vời cho người mới bắt đầu
														đầy tham vọng, cũng như các chuyên gia cần hỗ trợ. Mong
														đợi một Thiết lập phần cứng vững chắc dưới dạng Cơ chế
														điều chỉnh Tremolo cổ điển và khuôn đúc được gắn vít để
														hoàn thành bức tranh.
													</p>

												</div>
												<!-- Chi tiet -->
												<div class="row">
													<div class="col-md-6">
														<div class="clearfix">
															<img width="150px" height="300px"
																src="/image/${item.image2}"
																class="col-md-6 float-md-start mb-3 ms-md-3 rounded"
																alt="...">
															<h5 class="fw-bold text-danger">Cổ & Thân Gỗ</h5>
															<p>Điểm độc đáo trong tầm giá này là Thân đàn bằng gỗ
																Alder chắc chắn và Cần đàn bằng gỗ phong Rock Maple của
																Canada bắt vít, mang đến cho ST Vintage Đặc tính sắc nét
																và Phản hồi giống như tiếng chuông. Cần đàn có Cấu hình
																'C' Mỏng cung cấp cho người mới bắt đầu cơ sở thoải mái
																cho các Hợp âm, Riff và Licks đầu tiên cho đến các Thanh
																ghi cao nhất của Bàn phím.</p>
														</div>
													</div>
													<div class="col-md-6">
														<div class="clearfix">
															<img width="150px" height="300px"
																src="/image/${item.image3}"
																class="col-md-6 float-md-start mb-3 ms-md-3 rounded"
																alt="...">
															<h5 class="fw-bold text-danger">Cuộn dây đơn
																Wilkinson</h5>
															<p>Với Pick-Up thương hiệu từ các chuyên gia Trevor
																Wilkinson, ST Vintage mang đến âm thanh chính thức với
																đặc tính thời cổ điển có thể nghe rõ ràng, phù hợp hoàn
																hảo với Blues, Country và Rock. Các cuộn dây đơn sở hữu
																Khả năng tái tạo trong suốt và Dải động rực rỡ, cả trên
																Kênh bộ khuếch đại sạch và được điều khiển. Tất cả các
																Pick-Up 3x đều được điều khiển thông qua Công tắc lưỡi 5
																chiều để lựa chọn, cũng như Điều khiển âm lượng chính và
																2x Tone.</p>
														</div>
													</div>
												</div>

												<!-- Danh gia -->
												<div>

													<h3 class="fw-bold font-monospace">
														<i class="bi bi-star-fill text-warning"></i> <i
															class="bi bi-star-fill text-warning"></i> FEEDBACK <i
															class="bi bi-star-fill text-warning"></i> <i
															class="bi bi-star-fill text-warning"></i>
													</h3>
													<div class="row row-cols-1 row-cols-md-3 g-4">
														<div class="col">
															<div class="card h-100">
																<img width="50px" height="300px" src="/image/gx1.jpg"
																	class="p-5 card-img-top rounded-circle" alt="...">
																<div class="card-body">
																	<h5 class="card-title fw-bold text-danger">Nguyễn
																		Ngọc Hương Giang</h5>
																	<p class="card-text">Giao hàng rất nhanh, cây đàn
																		đẹp nguyên liệu chắc chắn móc rất sướng tai, thêm anh
																		shipper hướng dẫn tận tình nữa đánh giá 5 sao.</p>
																	<p>
																		Đánh giá: <i class="bi bi-star-fill text-warning"></i>
																		<i class="bi bi-star-fill text-warning"></i> <i
																			class="bi bi-star-fill text-warning"></i> <i
																			class="bi bi-star-fill text-warning"></i> <i
																			class="bi bi-star-fill text-warning"></i>
																	</p>
																</div>
																<div class="card-footer">
																	<small class="text-body-secondary">Last updated
																		3 mins ago</small>
																</div>
															</div>
														</div>
														<div class="col">
															<div class="card h-100">
																<img width="50px" height="300px" src="/image/gx2.jpg"
																	class="card-img-top rounded-circle p-5" alt="...">
																<div class="card-body">
																	<h5 class="card-title fw-bold text-danger">Lê Kiều
																		Khã Nhi</h5>
																	<p class="card-text">Giao hàng rất nhanh, cây đàn
																		đẹp nguyên liệu chắc chắn móc rất sướng tai, thêm anh
																		shipper hướng dẫn tận tình nữa đánh giá 5 sao.</p>
																	<p>
																		Đánh giá: <i class="bi bi-star-fill text-warning"></i>
																		<i class="bi bi-star-fill text-warning"></i> <i
																			class="bi bi-star-fill text-warning"></i> <i
																			class="bi bi-star-fill text-warning"></i> <i
																			class="bi bi-star-fill text-warning"></i>
																	</p>
																</div>
																<div class="card-footer">
																	<small class="text-body-secondary">Last updated
																		5 mins ago</small>
																</div>
															</div>
														</div>
														<div class="col">
															<div class="card h-100">
																<img width="50px" height="300px" src="/image/gx3.jpg"
																	class="card-img-top rounded-circle p-5" alt="...">
																<div class="card-body">
																	<h5 class="card-title  fw-bold text-danger">
																		Nguyễn Quỳnh Như</h5>
																	<p class="card-text">Giao hàng rất nhanh, cây đàn
																		đẹp nguyên liệu chắc chắn móc rất sướng tai, thêm anh
																		shipper hướng dẫn tận tình nữa đánh giá 5 sao.</p>
																	<p>
																		Đánh giá: <i class="bi bi-star-fill text-warning"></i>
																		<i class="bi bi-star-fill text-warning"></i> <i
																			class="bi bi-star-fill text-warning"></i> <i
																			class="bi bi-star-fill text-warning"></i> <i
																			class="bi bi-star-fill text-warning"></i>
																	</p>

																</div>
																<div class="card-footer">
																	<small class="text-body-secondary">Last updated
																		10 mins ago</small>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
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