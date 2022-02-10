<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt2" uri="http://java.sun.com/jstl/fmt_rt"%>
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
<script>
$("#place-order").click(function(){
	for(var i=0; i<document.purchaseinput.elements.length; i++)
	{
		if(document.purchaseinput.elements[i].value == "")
		{
			alert("모든 값을 입력 하셔야 합니다. ");
				document.purchaseinput.elements[i].focus();
				return false;
		}
	}
	let o_name = $("#o_name").val();
	let g_price = $("#g_price").val();
	let g_name = $("#g_name").val();
	
	
   IMP.init('imp66890146');
   function requestPay() {
      // IMP.request_pay(param, callback) 결제창 호출
      IMP.request_pay({ // param
         pg : "kakaopay",
         pay_method : "card",
         merchant_uid : 'merchant_' + new Date().getTime()
         name : "${membership.membershipName}",
         amount : "${membership.membershipPrice}",
         buyer_email : "test@test.com",
         buyer_name : "<%=(String)session.getAttribute("id")%>",
         buyer_tel : "<%=(String)session.getAttribute("tel")%>",
         buyer_addr : "<%=(String)session.getAttribute("address")%>"
      }, function(rsp) {
    	    if ( rsp.success ) {
    	       	console.log(rsp)
    	    	var msg = '결제가 완료되었습니다.';
    	        msg += '고유ID : ' + rsp.imp_uid;
    	        msg += '상점 거래ID : ' + rsp.merchant_uid;
    	        msg += '결제 상품명 : ' + "${membership.membershipName}";
    	        msg += '결제 금액 : ' + "${membership.membershipPrice}";
    	        msg += '카드 승인번호 : ' + rsp.apply_num;
    	        let OrderVo = {
    					o_name: <%=(String)session.getAttribute("id")%>,
    					g_price: "${membership.membershipPrice}",
    					g_name: "${membership.membershipName}"
    					
    					// 컨트롤러에 데이터를 전달하여 DB에 입력하는 로직
                		// 결제내역을 사용자에게 보여주기 위해 필요함.
               			$.ajax({
					url : "placeOrder.do",
					type : "get",
					data : OrderVO,
					dataType : "text",
					success : function(result){
						if(result == "y") {
							alert(msg);
							location.href = "paymentSuccess.do"; 
						}else{
							alert("디비입력실패");
							return false;
						}
					},
					error : function(a,b,c){}
				});
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
			}
		alert(msg);
		})
   };
</script>
</head>
<body>
	<!-- 수정 작업 -->
   <div class="container-table100">
      <div class="wrap-table100">

         <a class="btn btn-danger btn-icon-split btn-lg"> <span
            class="icon text-white-50"> <i class="fas fa-flag"></i>
         </span> <span class="text" style="color: white;">상품내역</span>
         </a><br> <br>

         <div class="table100 ver2 m-b-110">
            <div class="table100-head">
               <table>
                  <thead>
                     <tr class="row100 head">
                        <th class="cell100 column1">상품명</th>
                        <th class="cell100 column2" style="text-align: center;">상품소개</th>
                        <th class="cell100 column3">가격</th>
                     </tr>
                  </thead>
               </table>
            </div>

            <div class="table100-body js-pscroll">
               <table>
                  <tbody>
                     <tr class="row100 body">
                        <td class="cell100 column1" style="padding-left: 55px">${membership.membershipName}</td>
                        <td class="cell100 column2">""</td>
                        <td class="cell100 column3" style="padding-left: 14px"><fmt:formatNumber
                              value="${membership.membershipPrice}" pattern="###,###,###" /></td>
                     </tr>
                  </tbody>
               </table>
            </div>
         </div>
         <br> <br>
         <div style="float: left; margin-left: 400px;">
            <button onclick="requestPay()" class="boxed-btn3">결제</button>
         </div>
         <div style="float: left; margin-left: 50px;">
            <button onclick="location.href='memberShip.do#item'" class="boxed-btn3">상품목록</button>
         </div>
      </div>
   </div>

	<form id="place-order" action="placeOrder.do" method="get">
		<input type="hidden" id="g_name" name="g_name" value="${membership.membershipName}" readonly="readonly">
		<input type="hidden" id="g_price" name="g_price" value="${membership.membershipPrice}" readonly="readonly">
		<input type="hidden" id="m_id" name="m_id" value="${id}" readonly="readonly">
	</form>
</body>
</html>