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
	
	<form action="programSelectOne.do" method="post" name="frms" id="frms">
		<input type="hidden" id="selc" name="selc">
	</form>
	<div class="container-fluid">
		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">서비스조회</h1>
		<a target="_blank" href="mainM.do">홈으로</a>

		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">서비스조회</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>순번</th>
								<th>프로그램명</th>
								<th>프로그램설명</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${programs}" var="program">
								<tr id="trt" onclick="selectFnc(${program.programId})">
									<td>${program.programId}</td>
									<td>${program.programName}</td>
									<td>${program.programContent}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table><br>
					<input
					type="button" value="등록" class="btn btn-secondary btn-icon-split"
					style="padding: 5px 10px 5px 10px;"
					onclick="location.href='insertService.do'">
				</div>
			</div>
		</div>

	</div>
</body>
</html>