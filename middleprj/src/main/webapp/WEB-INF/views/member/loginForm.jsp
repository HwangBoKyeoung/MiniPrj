<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">

		<!-- Outer Row -->
		<div class="row justify-content-center">

			<div class="col-xl-10 col-lg-12 col-md-9">


					<!-- Nested Row within Card Body -->
						<div></div>
							<div style="margin: 100px;" class="p-5">
								<div class="text-center">
									<h1 style="font-size: 35px; font-weight: 800;" class="h4 text-gray-900 mb-4">로 그 인</h1>
								</div>
								<form class="user" id="frm" action="login.do" method="post">
									<div class="form-group">
										<input type="text" class="form-control form-control-user"
											id="id" name="id" placeholder="아이디">
									</div>
									<div class="form-group">
										<input type="password" class="form-control form-control-user"
											id="password" name="password" placeholder="비밀번호">
									</div>
									<div class="form-group">
										<div class="custom-control custom-checkbox small">
											<input type="checkbox" class="custom-control-input"
												id="customCheck"> <label
												class="custom-control-label" for="customCheck">Remember
												Me</label>
										</div>
									</div>
									<button class="btn btn-primary btn-user btn-block">
										로 그 인</button>
								</form>
								<hr>

								<div class="text-center">
									<a style="font-size: 20px;" class="small" href="registerForm.do">회원가입 하시겠습니까?</a>
								</div>
							</div>
						</div>



		</div>

	</div>
</body>
</html>