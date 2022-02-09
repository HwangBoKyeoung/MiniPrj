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

<form action="${pageContext.request.contextPath}/dealDelete.do"
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
								<h3 class="subject">${deal.dealTitle }</h3> <span
								class="subj-info"> <span class="writer">BY <span
										class="name">${deal.dealWriter }</span></span> <span
									class="date ff-lucida">${deal.dealDate }</span> <span
									class="hits ff-lucida">VIEW<span class="count">${deal.dealHit }</span></span>
							</span>
							</th>
						</tr>
					</tbody>
				</table>
				<div class="context" style="margin-top: 40px; padding-bottom: 80px">
					<p>${deal.dealSubject }</p>
				</div>
			</div>
		</div>
		<div style="display: inline-block;">
			<input type="button" value="수정"
				class="btn btn-secondary btn-icon-split" style="padding: 5px 10px 5px 10px"
				onclick="location.href='dealUpdateForm.do?id=${deal.dealId}'" >
		</div>
		<div style="display: inline-block;">
			<input type="button" value="삭제"
				class="btn btn-secondary btn-icon-split" style="padding: 5px 10px 5px 10px"
				onclick="deleteFnc(${deal.dealId})">
		</div>
		<div style="display: inline-block">
			<input type="button" value="목록"
			class="btn btn-secondary btn-icon-split" style="padding: 5px 10px 5px 10px;" 
			onclick="location.href='deal.do'">
		</div>
	</div>


</section>

</html>