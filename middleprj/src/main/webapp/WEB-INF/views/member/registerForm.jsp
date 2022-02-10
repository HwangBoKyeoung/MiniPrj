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

				<!-- Nested Row within Card Body -->
						<div style="margin: 100px;" class="p-5" id="mustRegister">
							<div class="text-center">
								<h1 style="font-size: 35px; font-weight: 800;" class="h4 text-gray-900 mb-4">회 원 가 입</h1>
							</div>
							<form class="user" onsubmit="return checkForm()"
								action="register.do" method="post">
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="text" class="form-control form-control-user"
											id="id" name="id" placeholder="아이디">
									</div>
									<div class="col-sm-6">
										<button type="button"
											class="btn btn-primary btn-user btn-block" id="idKey"
											onclick="idCheck()" value="No">아이디 중복체크</button>
									</div>
								</div>
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="password" class="form-control form-control-user"
											id="password" name="password" placeholder="비밀번호">
									</div>
									<div class="col-sm-6">
										<input type="password" class="form-control form-control-user"
											id="repeatPassword" placeholder="비밀번호 재확인">
									</div>
								</div>
								<div class="form-group">
									<input type="text" class="form-control form-control-user"
										id="name" name="name" placeholder="성명" required="required">
								</div>
								<div class="form-group">
									<input type="text" class="form-control form-control-user"
										id="address" name="address" placeholder="주소">
								</div>
								<div class="form-group">
									<input type="tel" class="form-control form-control-user"
										id="tel" name="tel" placeholder="전화번호">
								</div>

								<button type="submit" class="btn btn-primary btn-user btn-block">
									회 원 가 입</button>
								<hr>
							</form>
							<div class="text-center">
								<a style="font-size: 20px;" class="small" href="loginForm.do">로그인 하시겠습니까?</a>
							</div>
						</div>
					</div>
	
	<script type="text/javascript">
		function idCheck() { // 아이디 중복체크 함수 ajax 이용 비동기 통신
			$.ajax({
				url : "idCheck.do",
				type : "post",
				data : {
					id : $("#id").val()
				}, // id 값이 id인 value를 가져옴
				dataType : "text",
				success : function(data) { // 변수에 돌아 올 값  
					console.log(data);
					if (data == "0") {
						alert($("#id").val() + "\n이미 존재하는 아이디 입니다.");
						$("#id").val("");
						$("#id").focus();
					} else {
						alert($("#id").val() + "\n사용가능한 아이디 입니다.");
						$("#idKey").val("Yes");
					}
				},
				error: function(err){
					console.log(err);
				}
			});
		}

		function checkForm() { // form validation
			if ($("#idKey").val() != "Yes") {
				alert("아이디 중복체크를 해주세요.");
				return false;
			}

			if ($("#password").val() != $("#repeatPassword").val()) {
				alert("패스워드가 일치 하지 않습니다.");
				$("#password").val("");
				$("#repeatPassword").val("");
				$("#password").focus;
				return false;
			}
			
			return true;
		}
	</script>
	
</body>
</html>