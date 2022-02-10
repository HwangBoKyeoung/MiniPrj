<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체험문의</title>
</head>
<body>
	<br>
	<br>
	<br>
	<div class="whole-wrap">
		<div class="container box_1170">
			<div class="section-top-border">
				<div class="row">
					<div class="col-lg-8 col-md-8">
						<h3 class="mb-30">체험신청</h3>

						<form action="expRequest.do" method="post" id="frm">

							<div class="mt-10">
								<input type="date" name="expDate" id="expDate" placeholder="원하는 체험일" required
								 class="single-input">
							</div>
							<script type="text/javascript">
								var today = new Date();
								var dd = today.getDate() + 1;
								var mm = today.getMonth() + 1;
								var yyyy = today.getFullYear();

								if (dd < 10) {
									dd = '0' + dd;
								}

								if (mm < 10) {
									mm = '0' + mm;
								}
								today = yyyy + '-' + mm + '-' + dd;
								document.getElementById("expDate").setAttribute(
										"min", today);
							</script>

							<div class="mt-10">
								<input type="text" name="expName" id="expName" placeholder="이름"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = '이름'" required class="single-input">
							</div>
							<div class="mt-10">
								<input type="tel" name="expTel" id="expTel" placeholder="연락처"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = '연락처'" required class="single-input">
							</div>
							<div class="input-group-icon mt-10">
								<div class="form-select" id="default-select">
									<select style="display: none;" name="expCity" id="expCity">
										<option value="거주지역">거주지역</option>
										<option value="서울특별시">서울특별시</option>
										<option value="부산광역시">부산광역시</option>
										<option value="대구광역시">대구광역시</option>
										<option value="인천광역시">인천광역시</option>
										<option value="광주광역시">광주광역시</option>
										<option value="대전광역시">대전광역시</option>
										<option value="울산광역시">울산광역시</option>
										<option value="세종특별자치시">세종특별자치시</option>
										<option value="경기도">경기도</option>
										<option value="강원도">강원도</option>
										<option value="충청북도">충청북도</option>
										<option value="충청남도">충청남도</option>
										<option value="전라북도">전라북도</option>
										<option value="전라남도">전라남도</option>
										<option value="경상북도">경상북도</option>
										<option value="경상남도">경상남도</option>
										<option value="제주특별자치도">제주특별자치도</option>
									</select>
								</div>
							</div>

							<div class="input-group-icon mt-10">
								<div class="form-select" id="default-select">
									<select style="display: none;" name="expProgram" id="expProgram">
										<option value="관심 프로그램">관심 프로그램</option>
										<option value="스트롱 바이 줌바">스트롱 바이 줌바</option>
										<option value="플라잉 요가">플라잉 요가</option>
										<option value="바디컴뱃">바디컴뱃</option>
										<option value="Vg댄스">Vg댄스</option>
										<option value="다이어트댄스">다이어트댄스</option>
										<option value="그룹P.T">그룹P.T</option>
										<option value="스피닝">스피닝</option>
										<option value="점핑잭">점핑잭</option>
									</select>
								</div>
								<div align="right">
									<a href="infoUse.do" class="genric-btn default circle"
										style="margin-top: 12px;">프로그램 보러가기 ></a>
								</div>
							</div>
							<div class="mt-10">
								<textarea class="single-textarea" name="expMessage" id="expMessage"	
									placeholder="남기실 메세지" onfocus="this.placeholder = ''"
									onblur="this.placeholder = '남기실 메세지'" required></textarea>
							</div>
							<br>
							<div align="right">
								<button type="submit" class="genric-btn danger">보내기</button>
							</div>

						</form>

						<br> <br> <br>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>