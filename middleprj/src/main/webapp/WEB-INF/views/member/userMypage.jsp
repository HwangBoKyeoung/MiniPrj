<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="kr">
<style>
#lists {
	float: left;
	box-sizing: border-box;
	width: 30%;
	padding: 20px;
	margin: 10px;
}

#menus li:hover {
	background-color: yellow;
}

#menus li {
	text-align: center;
	heigth: 20px;
	line-height: 20px;
}

#imgstyle {
	text-align: center;
	border-radius: 30px;
}

#tbl{
	border: 0.5px grey solid;
}

#seperate{
	width: 70%;
	heigth: 20px;
	background-color: grey;
}

</style>


<body>
	<div id="lists">
		<div class="rounded shadow p-4 sticky-bar">
			<div id="imgstyle">
				<img src="img/mypage.png" alt="본인사진">
			</div>
			<br> <br>
			<ul id="menus" class="list-unstyled mb-0">
				<li><a href="#general" class="mouse-down h6 text-dark">나의정보</a><br>
				<br></li>
				<li><a href="#orderlist" class="mouse-down h6 text-dark">주문목록</a><br>
				<br></li>
				<li><a href="#actionlist" class="mouse-down h6 text-dark">체험신청조회</a><br>
				<br></li>
				<li><a href="#updateinfo" class="mouse-down h6 text-dark">회원정보수정</a><br>
				<br></li>
				<li><a href="#deleteinfo" class="mouse-down h6 text-dark">회원탈퇴</a><br>
				<br></li>
			</ul>
		</div>
	</div>

	<div id="contents">
		<h1 style="text-align: center;">
			<br>${name}님 환영합니다!
		</h1>
		
		<p style="text-align: center;">welcome MyPage</p>
		<br>
		
		<div id="general" align="center">
			<!-- 내이름 - gym이름 - 담당강사? -->
			<div>
				<table id="tbl">
					<tr>
						<th>성명</th>
						<th>Gym이름</th>
						<th>담당트레이너</th>
					</tr>
					<tr>
						<td>${name}</td>
						<td>GymYD</td>
						<td>ㅇㅇㅇ</td>
					</tr>
				</table>
			</div>
		</div>
		
		
		<div id="deleteInfo" align="center">
			<div id="seperate"></div>
			<button class="genric-btn danger circle arrow e-large"><strong>회원탈퇴</strong></button>
		</div>
		<p style="text-align: center; color: red;">
			<strong>Copyright information for the template can't be
				altered/removed unless you purchase a license.</strong>
		<p style="text-align: center;">
			<strong>Removing copyright information without the license
				will result in suspension of your hosting and/or domain name(s).</strong>
		<p style="text-align: center;">
			<strong>More information about the license is available <a
				href="https://colorlib.com/wp/licence/">here</a></strong>.
		</p>
		<p style="text-align: center; color: red;">
			<strong>Copyright information for the template can't be
				altered/removed unless you purchase a license.</strong>
		<p style="text-align: center;">
			<strong>Removing copyright information without the license
				will result in suspension of your hosting and/or domain name(s).</strong>
		<p style="text-align: center;">
			<strong>More information about the license is available <a
				href="https://colorlib.com/wp/licence/">here</a></strong>.
		</p>
		<p style="text-align: center; color: red;">
			<strong>Copyright information for the template can't be
				altered/removed unless you purchase a license.</strong>
		<p style="text-align: center;">
			<strong>Removing copyright information without the license
				will result in suspension of your hosting and/or domain name(s).</strong>
		<p style="text-align: center;">
			<strong>More information about the license is available <a
				href="https://colorlib.com/wp/licence/">here</a></strong>.
		</p>
	</div>


</body>
</html>