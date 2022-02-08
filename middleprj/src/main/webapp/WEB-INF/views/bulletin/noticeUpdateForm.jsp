<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function updateFnc(id) {
		document.forms.updateFrm.id.value = id;
		document.forms.updateFrm.submit();
	}
</script>

<form action="${pageContext.request.contextPath}/noticeUpdate.do"
	method="post" id="updateFrm" name="updateFrm">
	<input type="hidden" name="id">
</form>

<div align="center">
<form action="${pageContext.request.contextPath}/noticeUpdate.do" method="post">
	<div>
		<table border="1">
			<thead>
				<tr>
					<th width="100">작성자</th>
					<td width="150">${notice.noticeWriter }</td>
					<th width="100">작성일</th>
					<td width="150">${notice.noticeDate}</td>
					<th width="100">조회수</th>
					<td width="100">${notice.noticeHit }</td>
				</tr>
				<tr>
					<th>제목</th>
					<td colspan="5"><textarea name="title" rows="1" cols="90">${notice.noticeTitle }</textarea></td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="5"><textarea name="subject" rows="10" cols="90">${notice.noticeSubject }</textarea></td>
				</tr>
			</thead>
		</table>
	</div>
	<br>

	<div>
		<input type="hidden" name="noticeId" value="${notice.noticeId}">
		<input type="submit" value="수정완료">
	</div>
	</form>
</div>

</html>