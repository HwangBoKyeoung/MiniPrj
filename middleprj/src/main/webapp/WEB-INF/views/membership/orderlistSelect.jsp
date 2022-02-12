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
	height: 300px;
	display: table-cell;
	vertical-align: middle;
}

#menus li:hover {
	background-color: yellow;
}

table {
	width: 55%;
}

@media ( min-width :560px) {
	#menus {
		height: 850px;
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
					<li><a onclick="orderlistSelect('${id}')" class="mouse-down h6 text-dark">결제 내역 조회</a><br>
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
				<h2>***결제내역***</h2>
				<br>
				<table border="1">
					<thead>
						<tr>
							<th width="250">회원아이디</th>
							<th width="250">멤버십상품</th>
							<th width="250">결제가격</th>
							<th width="250">결제날짜</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td align="center">${orderlist.membersId}</td>
							<td align="center">${orderlist.orderName}</td>
							<td align="center">${orderlist.orderPrice}</td>
							<td align="center">${orderlist.orderDate}</td>
						</tr>
					</tbody>
				</table>
			</div>
			<br>
		</div>
		<br> <br> <br>
	</div>
	
	<br><br><br><br><br><br><br><br><br><br><br>
	
	

	

</body>
</html>