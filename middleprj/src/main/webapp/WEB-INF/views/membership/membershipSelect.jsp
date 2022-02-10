<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
   src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript"
   src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript">
   function idCheck() { // 아이디 중복체크 함수 ajax 이용 비동기 통신
      $.ajax({
         url : "idCheck.do",
         type : "post",
         data : {
            id : $("#id").val()
         }, // id 값이 id인 value를 가져옴
         dataType : "text",
         success : function(data) { // 변수에 돌아 올 값  
            console.log(data);
            if (data == "0") {
               alert($("#id").val() + "\n이미 존재하는 아이디 입니다.");
               $("#id").val("");
               $("#id").focus();
            } else {
               alert($("#id").val() + "\n사용가능한 아이디 입니다.");
               $("#idKey").val("Yes");
            }
         },
         error : function(err) {
            console.log(err);
         }
      });
   }
</script>
<script>
   IMP.init('imp66890146');
   function requestPay() {
      // IMP.request_pay(param, callback) 결제창 호출
      IMP.request_pay({ // param
         pg : "kakaopay",
         pay_method : "card",
         merchant_uid : 'merchant_' + new Date().getTime(),
         name : "${membership.membershipName}",
         amount : 50,
         buyer_email : "test@test.com",
         buyer_name : "<%=(String)session.getAttribute("id")%>",
         buyer_tel : "<%=(String)session.getAttribute("tel")%>",
         buyer_addr : "<%=(String)session.getAttribute("address")%>",
      }, function(rsp) { // callback
         if (rsp.success) {
            //            alert('결제성공');
            location.href = "paymentSuccess.do";
         } else {
            alert('결제가 취소되었습니다.');
            location.href = "payment.do";
         }
      });
   }
</script>
</head>
<body>
   <h2>session.getAttribute("id")</h2>
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
         <td colspan="2"><a href="payment.do">상품목록</a></td>
      </tr>
   </table>
   <div>
      <button onclick="requestPay();" class="boxed-btn3">결 제</button>
   </div>
</body>
</html>