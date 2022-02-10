<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<title>Insert title here</title>

<form action="${pageContext.request.contextPath}/updateCalendar.do" method="post">
	<section class="contact-section">
		<div class="container" style="margin-left: 30px">
			<div class="row">
				<div class="col-12">
					<h2 class="contact-title">수정</h2>
					<br>
				</div>
				<div class="col-lg-8">
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<input class="form-control valid" name="calId"
									id="calId" value="${cal.id}" readonly="readonly"
									type="text" onfocus="this.placeholder = ''"
									>
							</div>
						</div>
						
						<div class="col-12">
							<div class="form-group">
								<textarea class="form-control w-100" name="title"
									id="title" cols="3" rows="1"
									onfocus="this.placeholder = ''">${cal.title}</textarea>
							</div>
						</div>
						
						<div class="col-sm-6">
							<div class="form-group">
								<input class="form-control valid" name="start"
									id="start" value="${cal.start}"
									type="date" onfocus="this.placeholder = ''"
									>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<input class="form-control valid" name="end"
									id="end" value="${cal.end}"
									type="date" onfocus="this.placeholder = ''">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<div style="margin-left: 60px">
		<input type="hidden" name="calId">
		<input type="submit" value="수정완료"
		class="btn btn-secondary btn-icon-split" style="padding: 5px 10px 5px 10px;">
	</div>
	</section>
</form>


</html>