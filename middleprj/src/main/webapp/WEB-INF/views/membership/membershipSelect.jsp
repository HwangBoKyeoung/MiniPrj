<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>상품 상세정보</h2>
	<table border="1" style="height: 300px; width: 400px;">
		<tr align="center">
			<td>상품명</td>
			<td>${membership.membershipName}</td>
		</tr>
		<tr align="center">
			<td>가격</td>
			<td><fmt:formatNumber value="${membership.membershipPrice}"
					pattern="###,###,###" /></td>
		</tr>
		<tr align="center">
			<td>상품소개</td>
			<td>""</td>
		</tr>
		<tr align="center">
			<td colspan="2">
				<form name="form1" method="post"
					action="cartForm.do">
					<input type="hidden" name="membershipNum"
						value="${membership.membershipNum }"> <select
						name="amount">
						<c:forEach begin="1" end="12" var="i">
							<option value="${i}">${i}</option>
						</c:forEach>
					</select>&nbsp;달 <input type="submit" value="장바구니에 담기">
				</form> <a href="memberShip.do#item">상품목록</a>
			</td>
		</tr>
	</table>
</body>
</html>