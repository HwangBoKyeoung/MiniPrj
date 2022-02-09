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

#menus li {
	text-align: center;
	heigth: 20px;
	line-height: 20px;
	padding-top: 15px;
	padding-bottom: 15px;
	position: absolute;
  top: 50%;
  transform: translateY(-50%);
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
				<br>
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
							<td align="center">${user.membersName}</td>
							<td align="center">${user.membersTel}</td>
							<td align="center">${user.membersAddress}</td>
							<td align="center">${user.membersMembership}</td>
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
				<br>
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
				<br>
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
				<br>
				<div id="hide" align="center">
					<button id="button" class="genric-btn danger circle arrow e-large">
						<strong>회원정보수정</strong>
					</button>
					<form action="myInfoUpdate.do" method="post">
						<div id="divToggle" style="display: none;">
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
										<td align="center"><input type="text" name="userId"
											id="userId" value="${user.membersId}" readonly></td>
										<td align="center"><input type="password"
											name="userPassword" id="userPassword"></td>
										<td align="center"><input type="text" name="userAddress"
											id="userAddress" value="${user.membersAddress}"></td>
										<td align="center"><input type="text" name="userTel"
											id="userTel" value="${user.membersTel}"></td>
									</tr>
								</tbody>
							</table>

						</div>
						<br>
						<button type="submit" id="buttonUp" style="display: none;"
							class="genric-btn danger circle arrow e-large">
							<strong>수정완료</strong>
						</button>
						<button type="reset" id="buttonReset" style="display: none;"
							class="genric-btn danger circle arrow e-large">
							<strong>수정취소</strong>
						</button>
					</form>
				</div>
			</div>
			<br>
		</div>
		<br> <br> <br>

		<div align="center">
			<div>
				<h2>***회원탈퇴***</h2>
				<br>
				<button id="delBtn" class="genric-btn danger circle arrow e-large">
					<strong>회원탈퇴</strong>
				</button>
			</div>
			<br>
			<form action="deleteUser.do" onSubmit="return checkForm()"
				method="post">
				<div id="deleteForm" style="display: none;">
					<input type="text" name="deleteId" id="deleteId" value="${id}"
						readonly> <input type="password" name="deletePassword"
						id="deletePassword" placeholder="비밀번호를 입력하세요." required>
				</div>
				<br>
				<button style="display: none;" id="deleteFin"
					class="genric-btn danger circle arrow e-large">
					<strong>최종확인</strong>
				</button>
				<button style="display: none;" id="deleteReset"
					class="genric-btn danger circle arrow e-large">
					<strong>탈퇴취소</strong>
				</button>
			</form>
		</div>
	</div>
	<br>
	<br>
	<br>

	<script>
		/* 회원정보수정 */
		let btn = document.getElementById('button');
		btn.addEventListener('click', toggleFnc);
		let btnUp = document.getElementById('buttonUp');
		btnUp.addEventListener('click', toggleUpFnc);
		let dT = document.getElementById('divToggle');
		let buttonReset = document.getElementById('buttonReset');
		buttonReset.addEventListener('click', toggleResetFnc);

		function toggleFnc(item) {
			console.log(item);
			dT.style.display = '';
			btn.style.display = 'none';
			btnUp.style.display = '';
			buttonReset.style.display = '';
		}
		
		function toggleResetFnc(item){
			console.log(item);
			btnUp.style.display = 'none';
			buttonReset.style.display = 'none';
			dT.style.display = 'none';
			btn.style.display = '';
		}

		function toggleUpFnc(item) {
			console.log(item);
			btnUp.style.display = 'none';
			buttonReset.style.display = 'none';
			dT.style.display = 'none';
			btn.style.display = '';
		}
		
		/* 회원정보삭제 */
		let deleteForm = document.getElementById('deleteForm');
		let delBtn = document.getElementById('delBtn');
		delBtn.addEventListener('click',delBtnFnc);
		let userPassword = document.getElementById('userPassword');
		let deleteFin = document.getElementById('deleteFin');
		let deleteReset = document.getElementById('deleteReset');
		deleteReset.addEventListener('click', deleteResetFnc);
		
		function delBtnFnc(item){
			console.log(item);
			delBtn.style.display = 'none';
			deleteForm.style.display = '';
			deleteFin.style.display = '';
			deleteReset.style.display = '';
		}
		
		function deleteResetFnc(item){
			console.log(item);
			delBtn.style.display = '';
			deleteForm.style.display = 'none';
			deleteFin.style.display = 'none';
			deleteReset.style.display = 'none';
		}
		
		function checkForm(){
			let inputResult = confirm('정말 회원탈퇴를 진행하시겠습니까?');
			let deletePassword = document.getElementById('deletePassword');
			if(inputResult){
				alert('회원탈퇴 처리 중입니다.');
				return true;
			} else {
				alert('회원탈퇴가 취소되었습니다.');
				deletePassword.value = '';
				deletePassword.focus();
				return false;
			}
		}
	</script>

</body>
</html>