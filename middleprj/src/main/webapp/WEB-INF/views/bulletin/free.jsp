<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>자유게시판</title>

<div class="container-table100">
	<div class="wrap-table100">


		<a href="free.do" class="btn btn-secondary btn-icon-split btn-lg">
			<span class="icon text-white-50"> <i class="fas fa-flag"></i>
		</span> <span class="text">자유게시판</span>
		</a><br> <br>

		<div class="table100 ver5 m-b-110">
			<div class="table100-head">
				<table>
					<thead>
						<tr class="row100 head">
							<th class="cell100 column1">글번호</th>
							<th class="cell100 column2" style="text-align: center;">글제목</th>
							<th class="cell100 column3">작성자</th>
							<th class="cell100 column4">날짜</th>
							<th class="cell100 column5">조회수</th>
						</tr>
					</thead>
				</table>
			</div>

			<div class="table100-body js-pscroll">
				<table>
					<tbody>
						<c:forEach items="${frees }" var="free">
							<tr class="row100 body" onclick="freeSelect('${free.freeId}')">
								<td class="cell100 column1" style="padding-left: 55px">${free.freeId}</td>
								<td class="cell100 column2">${free.freeTitle}</td>
								<td class="cell100 column3" style="padding-left: 14px">${free.freeWriter}</td>
								<td class="cell100 column4" style="padding-right: 30px">${free.freeDate}</td>
								<td class="cell100 column5" style="padding-left: 32px">${free.freeHit}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<br> <br>
		<div align="center">
			<button type="button" class="btn btn-secondary btn-icon-split"
				style="padding: 5px 10px 5px 10px"
				onclick="location.href='freeWriteForm.do'">글쓰기</button>
		</div>
	</div>
</div>


<div>
	<form id="frm" action="freeSelect.do" method="post">
		<input type="hidden" id="freeId" name="freeId">
	</form>
</div>


<script type="text/javascript">
		function freeSelect(id) { 
			frm.freeId.value = id;
			frm.submit();
		}
</script>


</html>