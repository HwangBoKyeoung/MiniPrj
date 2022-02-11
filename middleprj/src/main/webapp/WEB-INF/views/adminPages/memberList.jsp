<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#tt:hover{
		background-color: yellow;
		color: red;
	}
</style>
</head>
<body>

	<form action="${pageContext.request.contextPath}/memberStatusDelete.do" id="frm" name="frm" method="post">
		<input type="hidden" name="deleteId" id="deleteId">
	</form>
	<form action="${pageContext.request.contextPath}/memberStatusUpdateForm.do" id="frms" name="frms" method="post">
		<input type="hidden" name="trt" id="trt">
	</form>
	
	<div class="container-fluid">
		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">회원 리스트</h1>
		<a target="_blank" href="main.do">홈으로</a>

		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">회원 리스트</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
				
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>회원 아이디</th>
								<th>이 름</th>
								<th>전화번호</th>
								<th>주 소</th>
								<th>멤버쉽등급</th>
								<th>몸무게(kg)</th>
								<th>신 장(cm)</th>
								<th>수정</th>
								<th>삭제</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${members}" var="member">
								<tr id="tt">
									<td>${member.membersId}</td>
									<td>${member.membersName}</td>
									<td>${member.membersTel}</td>
									<td>${member.membersAddress}</td>
									<td>${member.membersMembership}</td>
									<td>${member.membersWeight}</td>
									<td>${member.membersHeight}</td>
									<td>
										<input type="button" value="수정"
											onclick="location.href='memberStatusUpdateForm.do?id=${member.membersId}'">
									</td>
									<td>
									<input type="button" value="삭제"
										onclick="deleteBtn('${member.membersId}')">
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>

	</div>
		<script>
	function deleteBtn(id){
		console.log(id);
		document.forms.frm.deleteId.value = id;
		document.forms.frm.submit();
	}
		function clickTr(id){
			document.forms.frms.trt.value=id;
			document.forms.frms.submit();
	}
	</script>
</body>
</html>