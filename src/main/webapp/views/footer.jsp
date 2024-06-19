<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
<meta charset="UTF-8">
<title>Footer Example</title>
<style>
  .footer-custom {
    background-color: #343a40;
    color: #f8f9fa;
    padding: 40px 0;
  }
  .footer-custom a {
    color: #f8f9fa;
    text-decoration: none;
  }
  .footer-custom a:hover {
    color: #d1d1d1;
    text-decoration: underline;
  }
  .footer-custom .social-icons a {
    margin: 0 10px;
    color: #f8f9fa;
    font-size: 24px;
  }
  .footer-custom .social-icons a:hover {
    color: #d1d1d1;
  }
</style>
</head>
<body>
  <footer class="footer-custom">
    <div class="container">
      <div class="row">
        <div class="col-sm-3">
          <h5>CHĂM SÓC KHÁCH HÀNG</h5>
          <ul class="list-unstyled">
            <li><a href="#">Trung Tâm Trợ Giúp</a></li>
            <li><a href="#">SHOP HEADPHONE Blog</a></li>
            <li><a href="#">Shopee Mall</a></li>
            <li><a href="#">Hướng Dẫn Mua Hàng</a></li>
            <li><a href="#">Hướng Dẫn Bán Hàng</a></li>
          </ul>
        </div>
        <div class="col-sm-3">
          <h5>VỀ SHOP HEADPHONE</h5>
          <ul class="list-unstyled">
            <li><a href="#">Giới Thiệu Về Shope SHOP HEADPHONE Việt Nam</a></li>
            <li><a href="#">Tuyển Dụng</a></li>
            <li><a href="#">Điều Khoản SHOP HEADPHONE</a></li>
            <li><a href="#">Chính Sách Bảo Mật</a></li>
            <li><a href="#">Chính Hãng</a></li>
          </ul>
        </div>
        <div class="col-sm-3">
          <h5>THEO DÕI CHÚNG TÔI</h5>
          <div class="social-icons">
            <a href="#"><i class="bi bi-facebook"></i></a>
            <a href="#"><i class="bi bi-instagram"></i></a>
            <a href="#"><i class="bi bi-twitter"></i></a>
            <a href="#"><i class="bi bi-youtube"></i></a>
          </div>
        </div>
        <div class="col-sm-3">
          <h5>TẢI ỨNG DỤNG HEADPHONE</h5>
          <div>
            <a href="#"><img src="https://via.placeholder.com/150x50" alt="Google Play"></a>
            <a href="#"><img src="https://via.placeholder.com/150x50" alt="App Store"></a>
          </div>
        </div>
      </div>
      <div class="text-center mt-3">
        &copy; 2024 SHOP HEADPHONE. All rights reserved.
      </div>
    </div>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6jIj5fjw3f8wFVvHgtzTt5nSOMczp7l8I65Vohp4WZ7b43ewW9W" crossorigin="anonymous"></script>
</body>
</html>
