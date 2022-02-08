<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NoticeList</title>
</head>
<body>
<div align="center">
	<div><h1>공지사항 목록</h1></div>
	<div>
		<table border="1">
			<thead>
				<tr>
					<th width="50">글번호</th>
					<th width="250">글제목</th>
					<th width="150">작성자</th>
					<th width="150">날짜</th>
					<th width="70">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${notices }" var="notice">
					<tr onclick="noticeSelect(${notice.noticeId})">
						<td align="center">${notice.noticeId}</td>
						<td>${notice.noticeTitle}</td>
						<td align="center">${notice.noticeWriter}</td>
						<td align="center">${notice.noticeDate}</td>
						<td align="center">${notice.noticeHit}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div><br>
	
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