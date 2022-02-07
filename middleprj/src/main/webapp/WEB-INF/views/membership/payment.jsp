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
	
	$(document).ready(function(){
		$("#checkbox1").change(function(){         
		        if($("#checkbox1").is(":checked") == true){
		           $("#sst1").val("1");
		        }else {
		        	$("#sst1").val("0");
		        }
		    });
		});
	
	$(document).ready(function(){
		$("#checkbox2").change(function(){         
		        if($("#checkbox2").is(":checked") == true){
		           $("#sst2").val("1");
		        }else {
		        	$("#sst2").val("0");
		        }
		    });
		});
	
	$(document).ready(function(){
		$("#checkbox3").change(function(){         
		        if($("#checkbox3").is(":checked") == true){
		           $("#sst3").val("1");
		        }else {
		        	$("#sst3").val("0");
		        }
		    });
		});


</script>
<style>
	#container {
		padding-top:50px;
	}
</style>
<!-- CSS============================================= -->
<link rel="stylesheet" href="css/linearicons.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/themify-icons.css">
<link rel="stylesheet" href="css/nice-select.css">
<link rel="stylesheet" href="css/nouislider.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<div>
		<div class="container" id="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="section_title text-center mb-73">
							<!--================Cart Area =================-->
							<section class="cart_area">
								<div class="container">
									<div class="cart_inner">
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th scope="col">선 택</th>
														<th scope="col">상 품</th>
														<th scope="col">월별 가격</th>
														<th scope="col">기간(개월)</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><input type="checkbox" id="checkbox1" ></td>
														<td>
															<div class="media">
																<div class="d-flex">
																	<img src="img/cart.jpg" alt="">
																</div>
																<div class="media-body">
																	<p>Silver</p>
																</div>
															</div>
														</td>
														<td>
															<h5>&#8361; 50,000 / Month</h5>
														</td>
														<td>
															<div class="product_count">
																<input type="text" name="qty" id="sst1" maxlength="12"
																	value="0" title="Quantity:" class="input-text qty">
																<button
																	onclick="var result = document.getElementById('sst1'); var sst1 = result.value; if( !isNaN( sst1 )) result.value++;return false;"
																	class="increase items-count" type="button" id="plus" style="width:20pt;height:23pt;">+
																	<i class="lnr lnr-chevron-up"></i>
																</button>
																<button
																	onclick="var result = document.getElementById('sst1'); var sst1 = result.value; if( !isNaN( sst1 ) &amp;&amp; sst1 > 0 ) result.value--;return false;"
																	class="reduced items-count" type="button" id="minus"style="width:20pt;height:23pt;">-
																	<i class="lnr lnr-chevron-down"></i>
																</button>
															</div>
														</td>
													</tr>
													<tr>
														<td><input type="checkbox" id="checkbox2"></td>														
														<td>
															<div class="media">
																<div class="d-flex">
																	<img src="img/cart.jpg" alt="">
																</div>
																<div class="media-body">
																	<p>Gold</p>
																</div>
															</div>
														</td>
														<td>
															<h5>&#8361; 100,000 / Month</h5>
														</td>
														<td>
															<div class="product_count">
																<input type="text" name="qty" id="sst2" maxlength="12"
																	value="0" title="Quantity:" class="input-text qty">
																<button
																	onclick="var result = document.getElementById('sst2'); var sst2 = result.value; if( !isNaN( sst2 )) result.value++;return false;"
																	class="increase items-count" type="button" id="plus" style="width:20pt;height:25pt;">+
																	<i class="lnr lnr-chevron-up"></i>
																</button>
																<button
																	onclick="var result = document.getElementById('sst2'); var sst2 = result.value; if( !isNaN( sst2 ) &amp;&amp; sst2 > 0 ) result.value--;return false;"
																	class="reduced items-count" type="button" id="minus" style="width:20pt;height:25pt;">-
																	<i class="lnr lnr-chevron-down"></i>
																</button>
															</div>
														</td>
													</tr>					
													<tr>
														<td><input type="checkbox" id="checkbox3"></td>
														<td>
															<div class="media">
																<div class="d-flex">
																	<img src="img/cart.jpg" alt="">
																</div>
																<div class="media-body">
																	<p>Platinum</p>
																</div>
															</div>
														</td>
														<td>
															<h5>&#8361; 150,000 / Month</h5>
														</td>
														<td>
															<div class="product_count">
																<input type="text" name="qty" id="sst3" maxlength="12"
																	value="0" title="Quantity:" class="input-text qty">
																<button
																	onclick="var result = document.getElementById('sst3'); var sst3 = result.value; if( !isNaN( sst3 )) result.value++;return false;"
																	class="increase items-count" type="button" id="plus" style="width:20pt;height:25pt;">+
																	<i class="lnr lnr-chevron-up"></i>
																</button>
																<button
																	onclick="var result = document.getElementById('sst3'); var sst3 = result.value; if( !isNaN( sst3 ) &amp;&amp; sst3 > 0 ) result.value--;return false;"
																	class="reduced items-count" type="button" id="minus" style="width:20pt;height:25pt;">-
																	<i class="lnr lnr-chevron-down"></i>
																</button>
															</div>
														</td>
													</tr>								
													<tr>
														<td></td>
														<td></td>
														<td>
															<h5>최종 가격</h5>
														</td>
														<td>
															<h5>$2160.00</h5>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							<div>
							<button onclick="requestPay();" class="boxed-btn3">결 제</button>
							</div>
							</section>
							<!--================End Cart Area =================-->
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>