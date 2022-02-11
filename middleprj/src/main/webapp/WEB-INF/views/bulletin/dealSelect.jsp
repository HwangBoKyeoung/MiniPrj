<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>

	<form action="dealDelete.do" method="post" id="delFrm" name="delFrm">
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

				<div style="border-bottom: 1px solid #D5D5D5; margin-bottom: 10px;">
					<div style="margin-bottom: 10px">댓글</div>
					<div class="col-12">
						<div class="form-group">
							<form action="replyDealWrite.do" method="post" id="frm">
								<input type="hidden" id="replyWriter" name="replyWriter"
									value="${id }"> <input type="hidden" id="dealId"
									name="dealId" value="${deal.dealId }">
								<textarea class="form-control w-100" name="replyContent"
									id="replyContent" cols="30" rows="3"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = '댓글 입력'" placeholder="댓글 입력"></textarea>
								<div align="right" style="margin-top: 8px">
									<button type="submit">댓글등록</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				<form>
					<c:forEach items="${replyDeals }" var="replyDeal"
						varStatus="status">
						<c:if test="${replyDeal.dealId ==  deal.dealId}">
							<div class="deleteId${status.index}"
								style="border-bottom: 1px solid #D5D5D5; margin-top: 15px">
								<span>BY</span> <span style="font-weight: 600">${replyDeal.replyWriter}</span><br>
								<span>${replyDeal.replyContent}</span>
								<c:if test="${replyDeal.replyWriter == id}">
									<div align="right" style="margin-bottom: 2px; padding-top: 0">
										<button type="button"
											onclick="replyDelFnc(${replyDeal.replyId},${status.index})">댓글삭제</button>
									</div>
								</c:if>
							</div>
						</c:if>
					</c:forEach>

				</form>
				<br>
			</div>

			<c:choose>
				<c:when test="${id == deal.dealWriter}">
					<div style="display: inline-block;">
						<input type="button" value="수정"
							class="btn btn-secondary btn-icon-split"
							style="padding: 5px 10px 5px 10px"
							onclick="location.href='dealUpdateForm.do?id=${deal.dealId}'">
					</div>
					<div style="display: inline-block;">
						<input type="button" value="삭제"
							class="btn btn-secondary btn-icon-split"
							style="padding: 5px 10px 5px 10px"
							onclick="deleteFnc(${deal.dealId})">
					</div>
					<div style="display: inline-block">
						<input type="button" value="목록"
							class="btn btn-secondary btn-icon-split"
							style="padding: 5px 10px 5px 10px;"
							onclick="location.href='deal.do'">
					</div>
				</c:when>
				<c:when test="${author == 'admin'}">
					<div style="display: inline-block;">
						<input type="button" value="삭제"
							class="btn btn-secondary btn-icon-split"
							style="padding: 5px 10px 5px 10px"
							onclick="deleteFnc(${deal.dealId})">
					</div>
					<div style="display: inline-block">
						<input type="button" value="목록"
							class="btn btn-secondary btn-icon-split"
							style="padding: 5px 10px 5px 10px;"
							onclick="location.href='deal.do'">
					</div>
				</c:when>
				<c:otherwise>
					<div style="display: inline-block">
						<input type="button" value="목록"
							class="btn btn-secondary btn-icon-split"
							style="padding: 5px 10px 5px 10px;"
							onclick="location.href='deal.do'">
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</section>

	<script type="text/javascript">
	function deleteFnc(id) {
		document.forms.delFrm.id.value = id;
		document.forms.delFrm.submit();
	}

	function replyDelFnc(id,index) {
		alert('댓글이 삭제되었습니다.');
		 location.reload();
		 $.ajax({
			url: 'replydealDelete.do',
			data: {delId : id},
			dataType: 'json',
			success: function(result) {
				if(result == 'Success') {
					$(".deleteId" + index).remove();

				}
			}
		});
	}
	
</script>
</body>
</html>