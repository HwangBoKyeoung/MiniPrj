<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<title>memberStatusUpdateForm</title>

<form action="${pageContext.request.contextPath}/memberStatusUpdate.do" method="post">
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
								<input class="form-control valid" name="membersId"
									id="membersId" value="${member.membersId}" readonly="readonly"
									type="text" onfocus="this.placeholder = ''">
							</div>
						</div>
						<div class="col-6">
							<div class="form-group">
								<input class="form-control valid" name="name"
									id="name" value="${member.membersName}"  readonly="readonly" type="text"
									onfocus="this.placeholder = ''">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<input class="form-control valid" name="tel"
									id="tel" value="${member.membersTel}"
									type="text" onfocus="this.placeholder = ''">
							</div>
						</div>
						<div class="col-12">
							<div class="form-group">
								<input class="form-control valid" name="address"
									id="address" value="${member.membersAddress}" readonly="readonly"
									 type="text"onfocus="this.placeholder = ''">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<input class="form-control valid" name="memberShip"
									id="memberShip" value="${member.membersMembership}" readonly="readonly"
									type="text" onfocus="this.placeholder = ''">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<input class="form-control valid" name="Weight"
									id="Weight" value="${member.membersWeight}"
									type="text" onfocus="this.placeholder = ''">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<input class="form-control valid" name="Height"
									id="Height" value="${member.membersHeight}"
									type="text" onfocus="this.placeholder = ''">
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	<div style="margin-left: 60px">
		<input type="hidden" name="membersId">
		<input type="submit" value="수정"
		class="btn btn-secondary btn-icon-split" style="padding: 5px 10px 5px 10px;">
	</div>
	</section>
</form>
</html>