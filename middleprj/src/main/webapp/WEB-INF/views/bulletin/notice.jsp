<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>NoticeList</title>



<div class="container-table100">
	<div class="wrap-table100">


		<a href="notice.do" class="btn btn-danger btn-icon-split btn-lg"> <span
			class="icon text-white-50"> <i class="fas fa-flag"></i>
		</span> <span class="text">공지사항</span>
		</a><br><br>

		<div class="table100 ver2 m-b-110">
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
						<c:forEach items="${notices }" var="notice">
							<tr class="row100 body"
								onclick="noticeSelect(${notice.noticeId})">
								<td class="cell100 column1" style="padding-left: 55px">${notice.noticeId}</td>
								<td class="cell100 column2">${notice.noticeTitle}</td>
								<td class="cell100 column3" style="padding-left: 14px">${notice.noticeWriter}</td>
								<td class="cell100 column4" style="padding-right: 30px">${notice.noticeDate}</td>
								<td class="cell100 column5" style="padding-left: 38px">${notice.noticeHit}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<br> <br>
		<div align="center">
			<button type="button" class="btn btn-danger btn-icon-split"
				style="padding: 5px 10px 5px 10px"
				onclick="location.href='noticeWriteForm.do'">글쓰기</button>
		</div>
	</div>
</div>


<div>
	<form id="frm" action="noticeSelect.do" method="post">
		<input type="hidden" id="noticeId" name="noticeId">
	</form>
</div>



<script type="text/javascript">
		function noticeSelect(id) { 
			frm.noticeId.value = id;
			frm.submit();
		}
	</script>

</html>