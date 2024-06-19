<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<h2>
    <small>Trang Người dùng</small>
</h2>
<hr>
<div class="table-responsive">
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Tên đăng nhập</th>
                <th>Họ và tên</th>
                <th>Email</th>
                <th>Đã kích hoạt</th>
                <th>Vai trò</th>
                <th colspan="2">Thao tác</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${page.getContent()}">
                <tr>
                    <td>${ item.username }</td>
                    <td>${ item.fullname }</td>
                    <td>${ item.email }</td>
                    <td>${ item.activated ? 'Activated' : 'No Activated' }</td>
                    <td>${ item.role ? 'Admin' : 'User' }</td>
                    <td><a href="/admin/users/edit/${item.username}"><button
                                class="btn btn-warning">
                                <i class="bi bi-pencil"></i> Sửa
                            </button></a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <nav>
        <ul class="pagination justify-content-center">
            <li class="page-item"><a class="page-link"
                href="/admin/users?p=0" aria-label="Đầu"> <i
                    class="bi bi-skip-backward-fill"></i>
            </a></li>
            <li class="page-item"><a class="page-link"
                href="/admin/users?p=${page.number == 0 ?  0 : page.number-1}"
                aria-label="Trước"> <i class="bi bi-caret-left-fill"></i>
            </a></li>
            <li class="page-item"><span class="page-link bg-light text-dark">${page.number+1}
                    / ${page.totalPages}</span></li>
            <li class="page-item"><a class="page-link"
                href="/admin/users?p=${page.number == page.totalPages-1 ? page.totalPages-1 : page.number+1}"
                aria-label="Tiếp"> <i class="bi bi-caret-right-fill"></i>
            </a></li>
            <li class="page-item"><a class="page-link"
                href="/admin/users?p=${page.totalPages-1}" aria-label="Cuối"> <i
                    class="bi bi-skip-forward-fill"></i>
            </a></li>
        </ul>
    </nav>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-11">
            <div class="cart-body">
                <form:form method="POST" action="/admin/users/save"
                    modelAttribute="user" class="form-horizontal">
                    <div class="mb-3">
                        <label for="username" class="form-label">Tên đăng nhập:</label>
                        <form:input type="text" class="form-control" id="username"
                            path="username" readonly="true" />
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Mật khẩu:</label>
                        <form:input type="password" class="form-control" id="pwd"
                            path="password" readonly="true" />
                    </div>
                    <div class="mb-3">
                        <label for="fullname" class="form-label">Họ và tên:</label>
                        <form:input type="text" class="form-control" id="fullname"
                            path="fullname" readonly="true" />
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email:</label>
                        <form:input type="text" class="form-control" id="email"
                            path="email" readonly="true" />
                    </div>
                    <div class="mb-3">
                        <label for="activated" class="form-label">Trạng thái:</label>
                        <div>
                            <form:radiobuttons id="activated" path="activated"
                                items="${activated}" class="form-check-input" />
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="role" class="form-label">Vai trò:</label>
                        <div>
                            <form:radiobuttons path="role" items="${roles}"
                                class="form-check-input" />
                        </div>
                    </div>
                    <div class="mb-3">
                        <button class="btn btn-primary" formaction="/admin/users/save">
                            <span class="glyphicon glyphicon-floppy-save"> Lưu</span>
                        </button>
                        <button class="btn btn-success" formaction="/admin/users/clear">
                            <span class="glyphicon glyphicon-refresh"> Làm mới</span>
                        </button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
