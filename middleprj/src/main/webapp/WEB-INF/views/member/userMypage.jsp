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
	display: table-cell;
	vertical-align: middle;
}

#menus li:hover {
	background-color: yellow;
}

#menus li {
	text-align: center;
	heigth: 20px;
	line-height: 20px;
	padding-top: 15px;
	padding-bottom: 15px;
}

@media ( min-width :560px) {
	#menus {
		height: 800px;
	}
}

#contents {
	padding-bottom: 30px;
}

#imgstyle {
	text-align: center;
	border-radius: 30px;
}

th {
	text-align: center;
}

#seperate {
	width: 70%;
	heigth: 20px;
	background-color: grey;
}
</style>

<body>
	<div id="lists">
		<div class="rounded shadow p-4 sticky-bar">
			<div id="scroll">
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
	</div>

	<div id="contents">
		<h1 style="text-align: center;">
			<br>${name}님 환영합니다!
		</h1>
		<p style="text-align: center;">welcome MyPage</p>
		<br> <br> <br>

		<div id="orderlist" align="center">
			<div>
				<h2>***나의정보***</h2>
				<table border="1">
					<thead>
						<tr>
							<th width="250">성명</th>
							<th width="250">연락처</th>
							<th width="250">주소</th>
							<th width="250">멤버십</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td align="center">${name}</td>
							<td align="center">${tel}</td>
							<td align="center">${address}</td>
							<td align="center">${membership}</td>
						</tr>
					</tbody>
				</table>
			</div>
			<br>
		</div>
		<br> <br> <br>

		<div id="actionlist" align="center">
			<div>
				<h2>***주문목록***</h2>
				<table border="1">
					<thead>
						<tr>
							<th width="250">ㅇㅇㅇ</th>
							<th width="250">ㅇㅇㅇ</th>
							<th width="250">ㅇㅇㅇ</th>
							<th width="250">ㅇㅇㅇ</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td align="center">${name}</td>
							<td align="center">${tel}</td>
							<td align="center">${address}</td>
							<td align="center">${membership}</td>
						</tr>
					</tbody>
				</table>
			</div>
			<br>
		</div>
		<br> <br> <br>

		<div id="updateinfo" align="center">
			<div>
				<h2>***체험신청조회***</h2>
				<table border="1">
					<thead>
						<tr>
							<th width="250">ㅇㅇㅇ</th>
							<th width="250">ㅇㅇㅇ</th>
							<th width="250">ㅇㅇㅇ</th>
							<th width="250">ㅇㅇㅇ</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td align="center">${name}</td>
							<td align="center">${tel}</td>
							<td align="center">${address}</td>
							<td align="center">${membership}</td>
						</tr>
					</tbody>
				</table>
			</div>
			<br>
		</div>
		<br> <br> <br>

		<div id="deleteInfo" align="center">
			<div>
				<h2>***회원정보수정***</h2>
				<div id="hide" align="center">
					<button id="button" class="genric-btn danger circle arrow e-large">
						<strong>회원정보수정</strong>
					</button>
					<div id="divToggle" style="display : none;">
						<table border="1">
							<thead>
								<tr>
									<th width="250">아이디</th>
									<th width="250">비밀번호</th>
									<th width="250">주소</th>
									<th width="250">연락처</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td align="center"><input type="text" name="id" id="id"
										value="${id}" readonly></td>
									<td align="center"><input type="text" name="password"
										id="password"></td>
									<td align="center"><input type="text" name="address"
										id="address" value="${address}"></td>
									<td align="center"><input type="text" name="tel" id="tel"
										value="${tel}"></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<br>
		</div><br>
	<br>
	<br>

		<div id="" align="center">
			<div>
				<h2>***회원탈퇴***</h2>
				<button class="genric-btn danger circle arrow e-large">
					<strong>회원탈퇴</strong>
				</button>
			</div>
			<br>
		</div>
	</div>
	<br>
	<br>
	<br>


	<script>
		$(function() {
			$('#button').click(function() {
				$('#divToggle').toggle();
			});
		});
	</script>
</body>
</html>