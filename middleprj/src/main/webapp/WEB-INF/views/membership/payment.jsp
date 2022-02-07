<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
	IMP.init('imp66890146');
	function requestPay() {
		// IMP.request_pay(param, callback) 결제창 호출
		IMP.request_pay({ // param
			pg : "kakaopay",
			pay_method : "card",
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : "노르웨이 회전 의자",
			amount : 50,
			buyer_email : "gildong@gmail.com",
			buyer_name : "홍길동",
			buyer_tel : "010-4242-4242",
			buyer_addr : "서울특별시 강남구 신사동",
			buyer_postcode : "01181"
		}, function(rsp) { // callback
			if (rsp.success) {
				//         	alert('결제성공');
				location.href = "paymentSuccess.do";
			} else {
				alert('결제가 취소되었습니다.');
				location.href = "payment.do";
			}
		});
	}
</script>
<style>
/* table { */
/* 	maring-left: 250px; */
/* 	text-align: center; */
/* } */
/* .boxed-btn3 { */
/*  margin top- */
/* } */
</style>
</head>
<body>
	<div class="priscing_area">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="section_title text-center mb-73">
						<div>
							<button onclick="requestPay();" class="boxed-btn3">결 제</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>