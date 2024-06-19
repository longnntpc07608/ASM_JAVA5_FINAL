<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<h3>
    <a href="/admin/bill"><i class="bi bi-arrow-left"></i></a>
</h3>
<h2>
    <small>Trang Chi Tiết Hóa Đơn</small>
</h2>
<hr>
<div class="table-responsive">
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Tên sản phẩm</th>
                <th>Hình ảnh</th>
                <th>Giá</th>
                <th>Số lượng</th>
                <th>Thành tiền</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${listOD}">
                <tr>
                    <td><b>${item.product.name}</b> <br> <br></td>
                    <td><img alt="" src="/image/${item.product.image}"
                        style="width: 45px; height: 30px;"></td>
                    <td>${item.price} VNĐ</td>
                    <td><b>${item.quantity}</b></td>
                    <td>${item.price * item.quantity} VNĐ</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
<br>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="alert alert-primary text-center" role="alert">
                <b>Trạng thái:</b>
                <c:choose>
                    <c:when test="${Status == 0}">Đang xử lý</c:when>
                    <c:when test="${Status == 1}">Đang lấy hàng</c:when>
                    <c:when test="${Status == 2}">Đang giao hàng</c:when>
                    <c:when test="${Status == 3}">Đã giao hàng</c:when>
                </c:choose>
            </div>
        </div>
        <div class="col-md-6">
            <div class="alert alert-secondary text-center" role="alert"><b>Tổng tiền:</b>
                ${TongTien} VNĐ
            </div>
        </div>
    </div>
</div>
