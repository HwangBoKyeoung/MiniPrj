<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="contact-section">
		<div class="container">
			<div class="d-none d-sm-block mb-5 pb-4">
				<div class="row">
					<div class="col-12">
						<h2 class="contact-title">위치정보</h2>
					</div>
				</div>
				<div id="map"
					style="width: 100%; height: 500px; position: relative; overflow: hidden;"></div>

				<script type="text/javascript"
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9e46d4c14573f15bdc90d9870215de52"></script>

				<script>
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					mapOption = {
						center : new kakao.maps.LatLng(35.86912916282664,
								128.59322572345448), // 지도의 중심좌표
						level : 3
					// 지도의 확대 레벨
					};

					var map = new kakao.maps.Map(mapContainer, mapOption);

					// 마커가 표시될 위치입니다 
					var markerPosition = new kakao.maps.LatLng(
							35.86912916282664, 128.59322572345448);

					// 마커를 생성합니다
					var marker = new kakao.maps.Marker({
						position : markerPosition
					});

					// 마커가 지도 위에 표시되도록 설정합니다
					marker.setMap(map);

					var iwContent = '<div style="padding:5px;">GymYD <br><a href="https://map.kakao.com/link/map/GymYD,35.86912916282664, 128.59322572345448" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/GymYD,35.86912916282664, 128.59322572345448" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
					iwPosition = new kakao.maps.LatLng(35.86912916282664,
							128.59322572345448); //인포윈도우 표시 위치입니다

					// 인포윈도우를 생성합니다
					var infowindow = new kakao.maps.InfoWindow({
						position : iwPosition,
						content : iwContent
					});

					// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
					infowindow.open(map, marker);
				</script>

			</div>


			<div class="row">
				<div class="col-12">
					<h2 class="contact-title">상담문의</h2>
				</div>
				<div class="col-lg-8">
					<form id="frm" class="form-contact contact_form"
						action="insertEnquiry.do" method="post" id="contactForm"
						novalidate="novalidate">
						<div class="row">

							<div class="col-12">
								<div class="form-group">
									<input class="form-control" name="subject" id="subject"
										type="text" onfocus="this.placeholder = ''"
										onblur="this.placeholder = '제목'" placeholder="제목">
								</div>
							</div>

							<div class="col-sm-6">
								<div class="form-group">
									<input class="form-control valid" name="name" id="name"
										type="text" onfocus="this.placeholder = ''"
										onblur="this.placeholder = '성명'" placeholder="성명">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<input type="email" class="form-control valid"
										name="email" id="email" onfocus="this.placeholder = ''"
										onblur="this.placeholder = '이메일'" placeholder="이메일">
								</div>
							</div>
							<div class="col-12">
								<div class="form-group">
									<textarea class="form-control w-100" name="message"
										id="message" cols="30" rows="9"
										onfocus="this.placeholder = ''"
										onblur="this.placeholder = '문의사항을 작성하세요!'"
										placeholder="문의사항을 작성하세요!"></textarea>
								</div>
							</div>


						</div>
						<div class="form-group mt-3">
							<button type="submit" id="btn"
								class="genric-btn danger">보내기</button>
						</div>
					</form>
				</div>

				<c:forEach items="${gymInfo}" var="info">
					<div class="col-lg-3 offset-lg-1">
						<div class="media contact-info">
							<span class="contact-info__icon"><i class="ti-home"></i></span>
							<div class="media-body">
								<h3>${info.gymLoc}</h3>
								<p>${info.gymAdd}</p>
							</div>
						</div>
						<div class="media contact-info">
							<span class="contact-info__icon"><i class="ti-tablet"></i></span>
							<div class="media-body">
								<h3>${info.gymTel}</h3>
								<p>Mon to Fri ${info.gymStart} to ${info.gymEnd}</p>
							</div>
						</div>
						<div class="media contact-info">
							<span class="contact-info__icon"><i class="ti-email"></i></span>
							<div class="media-body">
								<h3>${info.gymMail}</h3>
								<p>Send us your query anytime!</p>
							</div>
						</div>
					</div>
				</c:forEach>


			</div>
		</div>
	</section>

	<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
	<script>
		$('#btn').on('click', function() {
			let subject = $('#subject').val();
			let name = $('#name').val();
			let email = $('#email').val();
			let message = $('#message').val();

			if (subject == '' || name == '' || email == '' || message == '') {
				alert('필수값을 입력해주세요');
			} else {
				alert('정상적으로 처리되었습니다.');
			}
		});
	</script>

</body>
</html>