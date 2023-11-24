<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!-- Thanh menu -->
  <div>
  
    <nav class="navbar navbar-expand-lg navbar-light  alert-secondary bg-dark  " style="width: 100%; height:7rem ">
        <img src="Black_and_white_minimalist_jewelry_logo-removebg-preview.png" width="50px" alt="">
        <div class="container-fluid">
          <a class="navbar-brand p-1" href="#"> <img class="rounded-pill" alt="" src="./img-dj/meo.png" style="width: 5rem"></a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 m-5">
                
                    <li class="nav-item">
                        <a class=" fw-bold nav-link active text-white font-monospace" aria-current="page"
                            href="./home">Trang Chủ</a>
                    </li>
                    <li class="nav-item">
                        <a class=" fw-bold nav-link active text-white font-monospace" aria-current="page"
                            href="sanpham.html">Sản phẩm</a>
                    </li>
                    <li class="nav-item">
                        <a class=" fw-bold nav-link active text-white font-monospace" aria-current="page" href="#">Liên
                            hệ</a>
                    </li>
                    <li class="nav-item">
                        <a class=" fw-bold nav-link active text-white font-monospace" aria-current="page"
                            href="tintuc.html">Tin tức</a>
                    </li>

                </ul>
                <form class="d-flex">
                
                    <div class="container d-flex justify-content-between align-items-center">
                        <div class="d-flex justify-content-between align-items-center">
                        </div>
                        <form class=" justify-content-center">
                            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
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
									<a href="/account/logout" class=""> <i class="fs-3 text-white p-3 bi bi-box-arrow-right"></i> </a>
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
</body>
</html>