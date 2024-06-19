<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<h2>
    <small>Trang Sản phẩm</small>
</h2>
<hr>
<div class="table-responsive">
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Tên sản phẩm</th>
                <th>Ảnh</th>
                <th>Giá</th>
                <th>Ngày tạo</th>
                <th>Trạng thái</th>
                <th>Tên loại</th>
                <th colspan="2">Thao tác</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${page.getContent()}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.name}</td>
                    <td><img alt="" src="/image/${item.image}"
                            style="width: 45px; height: 30px;"></td>
                    <td>${item.price}</td>
                    <td>${item.createDate}</td>
                    <td>${item.available ? 'Có sẵn' : 'Hết hàng'}</td>
                    <td>${item.category.name}</td>
                    <td><a href="/admin/product/edit/${item.id}"><button
                                class="btn btn-warning">
                                <span class="bi bi-pencil"></span> Sửa
                            </button></a></td>
                    <td><a href="/admin/product/delete/${item.id}"><button
                                class="btn btn-danger">
                                <span class="bi bi-trash"></span> Xóa
                            </button></a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <nav>
        <ul class="pagination justify-content-center">
            <li class="page-item"><a class="page-link"
                    href="/admin/product?p=0" aria-label="Đầu"><i
                        class="bi bi-skip-backward-fill"></i></a></li>
            <li class="page-item"><a class="page-link"
                    href="/admin/product?p=${page.number == 0 ? 0 : page.number-1}"
                    aria-label="Trước"><i class="bi bi-caret-left-fill"></i></a></li>
            <li class="page-item"><span
                    class="page-link bg-light text-dark">${page.number + 1} / ${page.totalPages}</span></li>
            <li class="page-item"><a class="page-link"
                    href="/admin/product?p=${page.number == page.totalPages - 1 ? page.totalPages - 1 : page.number + 1}"
                    aria-label="Tiếp"><i class="bi bi-caret-right-fill"></i></a></li>
            <li class="page-item"><a class="page-link"
                    href="/admin/product?p=${page.totalPages - 1}" aria-label="Cuối"><i
                        class="bi bi-skip-forward-fill"></i></a></li>
        </ul>
    </nav>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-11">
            <div class="cart-body">
                <form:form method="POST" action="/admin/product/save"
                    modelAttribute="prod" class="form-horizontal"
                    enctype="multipart/form-data">
                    <div class="mb-3">
                        <label for="id" class="form-label">ID:</label> <input
                            type="text" class="form-control" id="id" name="id"
                            value="${prod.id}" readonly="true"/>
                    </div>
                    <div class="mb-3">
                        <label for="name" class="form-label">Tên sản phẩm:</label> <input
                            type="text" class="form-control" id="name" name="name"
                            value="${prod.name}" />
                    </div>
                    <div class="mb-3">
                        <label for="price" class="form-label">Giá:</label> <input
                            type="text" class="form-control" id="price" name="price"
                            value="${prod.price}" />
                    </div>
                    <div class="mb-3">
                        <label for="image" class="form-label">Ảnh:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="image" name="image"
                                value="${prod.image}" readonly>
                            <button type="button" class="btn btn-secondary" id="chooseImage">Chọn Ảnh</button>
                        </div>
                        <input type="file" class="form-control-file" id="imageFile"
                            name="imageFile" style="display: none;">
                    </div>
                    <div class="mb-3">
                        <label for="category" class="form-label">Danh mục:</label> <select
                            id="category" name="category.id" class="form-select">
                            <c:forEach var="category" items="${categories}">
                                <option value="${category.id}"
                                    <c:if test="${category.id == prod.category.id}">selected</c:if>>${category.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="available" class="form-label">Tình trạng:</label> <select
                            id="available" name="available" class="form-select">
                            <c:forEach var="entry" items="${availables}">
                                <option value="${entry.key}"
                                    <c:if test="${entry.key == prod.available}">selected</c:if>>${entry.value}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="mb-3">
                        <button class="btn btn-primary" formaction="/admin/product/save">
                            <span class="glyphicon glyphicon-floppy-save"> Lưu</span>
                        </button>
                        <button class="btn btn-success" formaction="/admin/product/clear">
                            <span class="glyphicon glyphicon-refresh"> Làm mới</span>
                        </button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        $('#chooseImage').on('click', function() {
            $('#imageFile').click();
        });

        $('#imageFile').on('change', function() {
            var fileName = $(this).val().split('\\').pop();
            $('#image').val(fileName);
        });
    });
</script>
