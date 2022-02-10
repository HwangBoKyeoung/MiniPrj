<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>중고거래</title>

<div class="container-table100">
	<div class="wrap-table100">


		<a href="deal.do" class="btn btn-secondary btn-icon-split btn-lg">
			<span class="icon text-white-50"> <i class="fas fa-flag"></i>
		</span> <span class="text">중고거래</span>
		</a><br><br>

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
						<c:forEach items="${deals }" var="deal">
							<tr class="row100 body"
								onclick="dealSelect(${deal.dealId})">
								<td class="cell100 column1" style="padding-left: 55px">${deal.dealId}</td>
								<td class="cell100 column2">${deal.dealTitle}</td>
								<td class="cell100 column3" style="padding-left: 4px">${deal.dealWriter}</td>
								<td class="cell100 column4" style="padding-left: -20px">${deal.dealDate}</td>
								<td class="cell100 column5" style="padding-left: 18px">${deal.dealHit}</td>
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
				onclick="location.href='dealWriteForm.do'">글쓰기</button>
		</div>
	</div>
</div>


<div>
	<form id="frm" action="dealSelect.do" method="post">
		<input type="hidden" id="dealId" name="dealId">
	</form>
</div>



<script type="text/javascript">
		function dealSelect(id) { 
			frm.dealId.value = id;
			frm.submit();
		}
</script>




</html>