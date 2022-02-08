<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function updateFnc(id) {
		document.forms.frm.id.value = id;
		document.forms.frm.submit();
	}
	function deleteFunc(id) {
		document.forms.delFrm.id.value = id;
		document.forms.delFrm.submit();
	}

</script>


<form action="${pageContext.request.contextPath}/noticeUpdateForm.do" method="post" id="frm" name="frm">
	<input type="hidden" name="id">
</form>
<form name="delFrm" action="${pageContext.request.contextPath }/noticeDelete.do" method="post">
	<input type="hidden" name="id">
</form>

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
						<td colspan="5">${notice.noticeTitle }</td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="5">${notice.noticeSubject }</td>
					</tr>
				</thead>
			</table>
		</div>
		<br>

		<div>
			<button type="button" onclick="location.href='notice.do'">목록</button>
			<input type="button" value="수정" onclick="location.href='noticeUpdateForm.do'">
			<input type="button" value="삭제" onclick="deleteFnc(${notice.noticeId})">
		</div>
	</div>

</html>