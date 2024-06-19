<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />

<div class="container" style="margin-top: 25px;">
	<div class="row">
		<br> <br>
		<div class="col-xs-12 col-sm-12 ">
			<div class="card card-info">
				<div class="card-header">
					<h3 class="card-title">Tên: ${ user.fullname }</h3>
				</div>
				<div class="card-body">
					<div class="row">
						<!-- <div class=" col-md-9 col-lg-9 "> -->
							<form:form class="form-horizontal" action="/myProfile"
								modelAttribute="user">
								<table class="table table-user-information text-center"
									style="font-size: medium;">
									<tbody>
									<lable class="m-2">Tên đăng nhập</lable>
									<form:input readonly="true" path="username" class="form-control m-2" />
									<lable class="m-2">Mật khẩu</lable>
									<form:password path="password" value="${ user.password }" class="form-control m-2" />
									<lable class="m-2">Họ và tên</lable>
									<form:input path="fullname" class="form-control m-2" />
									<lable class="m-2">Email</lable>
									<form:input path="email" class="form-control m-2" />
								</tbody>
								</table>

								<button class="btn btn-primary m-2" formaction="/myProfile/edit">
									Lưu
								</button>
							</form:form>
						<!-- </div> -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
	integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
	crossorigin="anonymous"></script>