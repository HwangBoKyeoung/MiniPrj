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
	<script>
	function deleteBtn(membersId){
		document.forms.frm.deleteId.value = membersId;
		document.forms.frm.submit();
	}
		function clickTr(id){
			document.forms.frms.trt.value=id;
			document.forms.frms.submit();
	}
	</script>
	<form action="${pageContext.request.contextPath}/memberStatusDelete.do"
		id="frm" name="frm">
		<input type="hidden" id="deleteId" name="deleteId">
	</form>
	<form action="${pageContext.request.contextPath}/memberSelect.do" id="frms" name="frms" method="post">
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
								<th>memberId</th>
								<th>name</th>
								<th>tel</th>
								<th>address</th>
								<th>membership</th>
								<th>weight(kg)</th>
								<th>height(cm)</th>
								<th>수정</th>
								<th>삭제</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${members}" var="member">
								<tr id="tt" onclick="clickTr(${member.membersId})">
									<td>${member.membersId}</td>
									<td>${member.membersName}</td>
									<td>${member.membersTel}</td>
									<td>${member.membersAddress}</td>
									<td>${member.membersMembership}</td>
									<td>${member.membersWeight}</td>
									<td>${member.membersHeight}</td>
									<td>
										<input type="button" value="수정"
											onclick="location.href='memberStatusUpdate.do?membersId=${member.membersId}'">
									</td>
									<td><input type="button" value="삭제"
										onclick="deleteBtn(${member.membersId})">
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>

	</div>
	
</body>
</html>