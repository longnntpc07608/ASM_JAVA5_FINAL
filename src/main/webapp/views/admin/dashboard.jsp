<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<style>
.table-wrapper {
    height: calc(5 * 50px + 2.5em);
    /* Điều chỉnh giá trị này dựa trên chiều cao của mỗi hàng */
    overflow-y: auto;
    margin-top: -1px;
}

.table-wrapper table {
    width: 100%;
    border-collapse: collapse;
}

.table-wrapper thead {
    position: sticky;
    top: 0;
    background: white;
    z-index: 1;
}

.table-wrapper th, .table-wrapper td {
    padding: 8px 12px;
    border: 1px solid #ddd;
    text-align: left;
}

.table-wrapper th {
    background: #f9f9f9;
}
</style>
<h2>
    <small>Trang Thống Kê</small>
</h2>
<hr>
<div class="table-wrapper">
    <div class="table-responsive">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Loại sản phẩm</th>
                    <th>Doanh thu</th>
                    <th>Số lượng đã bán</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="r" items="${report}">
                    <tr>
                        <td>${r.loai.name}</td>
                        <td>${r.doanhthu.toString().replace(".0", " VNĐ")}</td>
                        <td>${r.soLuong}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
