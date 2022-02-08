<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<table border="1">
				<thead>
					<tr>
						<th width="100">작성자</th>
						<td width="150">${notice.noticeWriter }</td>
						<th width="100">작성일</th>
						<td width="150">${notice.noticeDate }</td>
						<th width="100">조회수</th>
						<td width="100">${notice.noticeHit }</td>
					</tr>
					<tr>
						<th>제목</th>
						<td colspan="5"><textarea rows="1" cols="90">${notice.noticeTitle }</textarea></td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="5"><textarea rows="10" cols="90">${notice.noticeSubject }</textarea></td>
					</tr>
				</thead>
			</table>
		</div>
		<br>

		<div>
			<button type="button" onclick="location.href='notice.do'">수정완료</button>
		</div>
	</div>
</body>
</html>