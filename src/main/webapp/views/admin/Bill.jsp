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
	<small>Trang Hóa Đơn</small>
</h2>
<hr>
<div class="table-wrapper">
	<table class="table table-bordered table-striped">
		<thead>
			<tr>
				<th>Id</th>
				<th>Tên khách hàng</th>
				<th>Địa chỉ</th>
				<th>Ngày tạo</th>
				<th>Trạng thái</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="o" items="${page.getContent()}">
				<tr>
					<td>${o.id}</td>
					<td>${o.account.fullname}</td>
					<td>${o.address}</td>
					<td>${o.createDate}</td>
					<td>
						<form action="/admin/bill/${o.id}" method="post">
							<select class="form-control" onchange="this.form.submit()"
								name="stt"
								${o.status == 3 ? 'style="color: green;" disabled' : ''}>
								<option value="0" ${o.status == 0 ? 'selected' : ''}>Đang
									xử lý</option>
								<option value="1" ${o.status == 1 ? 'selected' : ''}
									${o.status < 0 ? 'disabled' : ''}>Đang lấy hàng</option>
								<option value="2" ${o.status == 2 ? 'selected' : ''}
									${o.status < 1 ? 'disabled' : ''}>Đang giao hàng</option>
								<option value="3" ${o.status == 3 ? 'selected' : ''}
									${o.status < 2 ? 'disabled' : ''}>Đã giao hàng</option>
							</select>
						</form>
					</td>
					<td><a href="/admin/bill/OrderDetails/${o.id}"><button
								class="btn btn-info">Chi tiết đơn hàng</button></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
