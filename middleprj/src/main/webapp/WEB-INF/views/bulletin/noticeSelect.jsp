<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Insert title here</title>


<script type="text/javascript">
	function deleteFnc(id) {
		document.forms.delFrm.id.value = id;
		document.forms.delFrm.submit();
	}
</script>

<form action="${pageContext.request.contextPath}/noticeDelete.do"
	method="post" id="delFrm" name="delFrm">
	<input type="hidden" name="id">
</form>

<section>
	<div class="section-inner"
		style="width: 40%; margin-top: 100px; margin-bottom: 100px; margin-left: 50px">
		<div id="board-view" class="board-wrap">
			<div class="cmd"></div>
			<div class="article-wrap">
				<table class="article-info">
					<colgroup>
						<col>
					</colgroup>
					<tbody>
						<tr>
							<th>
								<h3 class="subject">${notice.noticeTitle }</h3> <span
								class="subj-info"> <span class="writer">BY <span
										class="name">${notice.noticeWriter }</span></span> <span
									class="date ff-lucida">${notice.noticeDate }</span> <span
									class="hits ff-lucida">VIEW<span class="count">${notice.noticeHit }</span></span>
							</span>
							</th>
						</tr>
					</tbody>
				</table>
				<div class="context">
					<p>${notice.noticeSubject }</p>
				</div>
			</div>
		</div>
		<div>
			<input type="button" value="수정"
				onclick="location.href='noticeUpdateForm.do?id=${notice.noticeId}'">
			<input type="button" value="삭제"
				onclick="deleteFnc(${notice.noticeId})">
			<button type="button" onclick="location.href='notice.do'">목록</button>
		</div>
	</div>


</section>

</html>