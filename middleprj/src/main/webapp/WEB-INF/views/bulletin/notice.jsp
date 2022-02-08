<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NoticeList</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>공지사항</h1>
		</div>

	<div class="table100 ver2 m-b-110">
		<div class="table100-head">
			<table>
				<thead>
					<tr class="row100 head">
						<th class="cell100 column1">글번호</th>
						<th class="cell100 column2">글제목</th>
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
				<c:forEach items="${notices }" var="notice">
					<tr class="row100 body" onclick="noticeSelect(${notice.noticeId})">
						<td class="cell100 column1">${notice.noticeId}</td>
						<td class="cell100 column2">${notice.noticeTitle}</td>
						<td class="cell100 column3">${notice.noticeWriter}</td>
						<td class="cell100 column4">${notice.noticeDate}</td>
						<td class="cell100 column5">${notice.noticeHit}</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

		<div>
			<button type="button" onclick="location.href='noticeWriteForm.do'">글쓰기</button>
		</div>

		<div>
			<form id="frm" action="noticeSelect.do" method="post">
				<input type="hidden" id="noticeId" name="noticeId">
			</form>
		</div>
		</div>


	<script type="text/javascript">
		function noticeSelect(id) { 
			frm.noticeId.value = id;
			frm.submit();
		}
	</script>

</body>
</html>