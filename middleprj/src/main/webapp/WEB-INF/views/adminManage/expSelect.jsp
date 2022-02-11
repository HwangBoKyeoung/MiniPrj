<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#trt:hover{
		background-color: yellow;
		color: red;
	}
</style>
</head>
<body>
	<script>
		function selectFnc(id){
			document.forms.frms.selc.value=id;
			document.forms.frms.submit();
		}
	</script>
	
	<form action="${pageContext.request.contextPath}/bulletinExperienceSelectOne.do" method="post" name="frms" id="frms">
		<input type="hidden" id="selc" name="selc">
	</form>
	<div class="container-fluid">
		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">체험신청문의</h1>
		<a target="_blank" href="mainM.do">홈으로</a>

		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">체험신청문의</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>순번</th>
								<th>날짜</th>
								<th>이름</th>
								<th>전화번호</th>
								<th>지역</th>
								<th>프로그램</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${exps}" var="exp">
								<tr id="trt" onclick="selectFnc(${exp.expId})">
									<td>${exp.expId}</td>
									<td>${exp.expDate}</td>
									<td>${exp.expName}</td>
									<td>${exp.expTel}</td>
									<td>${exp.expCity}</td>
									<td>${exp.expProgram}</td>
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