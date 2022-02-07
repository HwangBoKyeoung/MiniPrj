<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체험문의</title>
</head>
<body>
	<br>
	<br>
	<br>
	<div class="col-lg-8 col-md-8">
		<h3 class="mb-30">체험문의</h3>
		<form action="#">
			<div class="mt-10">
				<input type="text" name="name" placeholder="이름"
					onfocus="this.placeholder = ''" onblur="this.placeholder = 'name'"
					required class="single-input">
			</div>
			<div class="mt-10">
				<input type="text" name="tel" placeholder="연락처"
					onfocus="this.placeholder = ''" onblur="this.placeholder = 'tel'"
					required class="single-input">
			</div>
			<div class="input-group-icon mt-10">
				<div class="icon">
					<i class="fa fa-plane" aria-hidden="true"></i>
				</div>
				<div class="form-select" id="default-select">
					<select>
						<option value="1">거주지역</option>
						<option value="1">서울특별시</option>
						<option value="1">부산광역시</option>
						<option value="1">대구광역시</option>
						<option value="1">인천광역시</option>
						<option value="1">광주광역시</option>
						<option value="1">대전광역시</option>
						<option value="1">울산광역시</option>
						<option value="1">세종특별자치시</option>
						<option value="1">경기도</option>
						<option value="1">강원도</option>
						<option value="1">충청북도</option>
						<option value="1">충청남도</option>
						<option value="1">전라북도</option>
						<option value="1">전라남도</option>
						<option value="1">경상북도</option>
						<option value="1">경상남도</option>
						<option value="1">제주특별자치도</option>
					</select>
				</div>
			</div>
			<div class="single-element-widget mt-30">
				<h3 class="mb-30">관심 프로그램</h3>
				<div class="switch-wrap d-flex justify-content-between">
					<p>01. Sample Checkbox</p>
					<div class="primary-checkbox">
						<input type="checkbox" id="default-checkbox"> <label
							for="default-checkbox"></label>
					</div>
				</div>
				<div class="switch-wrap d-flex justify-content-between">
					<p>02. Primary Color Checkbox</p>
					<div class="primary-checkbox">
						<input type="checkbox" id="primary-checkbox" checked> <label
							for="primary-checkbox"></label>
					</div>
				</div>
				<div class="switch-wrap d-flex justify-content-between">
					<p>01. Sample Checkbox</p>
					<div class="primary-checkbox">
						<input type="checkbox" id="default-checkbox"> <label
							for="default-checkbox"></label>
					</div>
				</div>
				<div class="switch-wrap d-flex justify-content-between">
					<p>02. Primary Color Checkbox</p>
					<div class="primary-checkbox">
						<input type="checkbox" id="primary-checkbox" checked> <label
							for="primary-checkbox"></label>
					</div>
				</div>

			</div>
			<div class="mt-10">
				<textarea class="single-textarea" placeholder="남기실 메세지"
					onfocus="this.placeholder = ''"
					onblur="this.placeholder = 'message'" required></textarea>
			</div><br>
			<button>보내기</button>
		</form>
		<br> <br> <br>
	</div>

</body>
</html>