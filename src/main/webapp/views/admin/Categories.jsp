<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<h2>
	<small>Trang Quản Lý Loại Sản Phẩm</small>
</h2>
<hr>
<div class="table-responsive">
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>Id</th>
				<th>Tên loại</th>
				<th colspan="2">Thao tác</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${page.getContent()}">
				<tr>
					<td>${item.id}</td>
					<td>${item.name}</td>
					<td><a href="/admin/category/edit/${item.id}"><button
								class="btn btn-warning open-formEdit">
								<span class="bi bi-pencil"></span> Sửa
							</button></a></td>
					<td><a href="/admin/category/delete/${item.id}"><button
								class="btn btn-danger">
								<span class="bi bi-trash"></span> Xóa
							</button></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<nav>
		<ul class="pagination justify-content-center">
			<!-- Đường dẫn phân trang -->
			<li class="page-item"><a class="page-link"
				href="/admin/category?p=0" aria-label="Đầu tiên"><i
					class="bi bi-skip-backward-fill"></i></a></li>
			<li class="page-item"><a class="page-link"
				href="/admin/category?p=${page.number == 0 ? 0 : page.number-1}"
				aria-label="Trước đó"><i class="bi bi-caret-left-fill"></i></a></li>
			<li class="page-item"><span class="page-link bg-light text-dark">${page.number + 1}
					/ ${page.totalPages}</span></li>
			<li class="page-item"><a class="page-link"
				href="/admin/category?p=${page.number == page.totalPages - 1 ? page.totalPages - 1 : page.number + 1}"
				aria-label="Tiếp theo"><i class="bi bi-caret-right-fill"></i></a></li>
			<li class="page-item"><a class="page-link"
				href="/admin/category?p=${page.totalPages - 1}"
				aria-label="Cuối cùng"><i class="bi bi-skip-forward-fill"></i></a></li>
		</ul>
	</nav>
</div>
<br>
<div class="container">
	<div class="row justify-content-center">
		<div class="col-md-11">
			<div class="cart-body">
				<form:form method="POST" class="form-horizontal"
					action="/admin/category" modelAttribute="cate">
					<div class="mb-3">
						<label for="idCate" class="form-label">Id:</label>
						<form:input path="Id" type="text" class="form-control" id="idCate"
							name="id" readonly="true" />
					</div>
					<div class="mb-3">
						<label for="catename" class="form-label">Tên loại:</label>
						<form:input path="Name" type="text" class="form-control"
							id="catename" />
					</div>
					<div class="mb-3">
						<button class="btn btn-primary" formaction="/admin/category/save">
							<span class="glyphicon glyphicon-floppy-save"> Lưu</span>
						</button>
						<button class="btn btn-success" formaction="/admin/category/clear">
							<span class="glyphicon glyphicon-refresh"> Làm mới</span>
						</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>
