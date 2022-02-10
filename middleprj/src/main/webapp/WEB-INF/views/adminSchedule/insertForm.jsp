<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<section class="contact-section">
		<div class="container" style="margin-left: 30px">
			<div class="row">
				<div class="col-12">
					<h2 class="contact-title">일정작성</h2>
					<br>
				</div>
				<div class="col-lg-8">
					<form class="form-contact contact_form" action="${pageContext.request.contextPath}/insertCalendar.do"
						method="post" id="frm">
						<div class="row">
							<div class="col-12">
								<div class="form-group">
									<textarea class="form-control w-100" name="calTitle"
										id="calTitle" cols="3" rows="1"
										onfocus="this.placeholder = ''"
										onblur="this.placeholder = '제목'" placeholder="제목"></textarea>
								</div>
							</div>

							<div class="col-sm-6">
								<div class="form-group">
									<input class="form-control valid" name="calStart" id="calStart"
										type="date" onfocus="this.placeholder = ''">
								</div>
							</div>

							<div class="col-sm-6">
								<div class="form-group">
									<input class="form-control valid" name="calEnd" id="calEnd"
										type="date" onfocus="this.placeholder = ''">
								</div>
							</div>

						</div>
						<div>
							<button type="submit" class="btn btn-secondary btn-icon-split"
								style="padding: 5px 10px 5px 10px">등록</button>
							<br>
							<br>
						</div>
					</form>
				</div>

			</div>
		</div>
	</section>

	<script>
		document.getElementById('calStart').value = new Date().toISOString().substring(0, 10);
		document.getElementById('calEnd').value = new Date().toISOString().substring(0, 10);
	</script>

</body>
</html>