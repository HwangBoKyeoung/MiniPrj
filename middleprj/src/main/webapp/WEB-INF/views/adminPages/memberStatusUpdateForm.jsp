<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<title>memberStatusUpdateForm</title>

<form action="memberStatusUpdate.do" method="post">
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
								회원 아이디<input class="form-control valid" name="membersId"
									id="membersId" value="${members.membersId}" readonly="readonly"
									type="text" >
							</div>
						</div>
						<div class="col-6">
							<div class="form-group">
								이름<input class="form-control valid" name="memName"
									id="memName" value="${members.membersName}"  readonly="readonly" type="text"
									">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								전화번호<input class="form-control valid" name="memTel"
									id="memTel" value="${members.membersTel}"
									type="text" readonly="readonly">
							</div>
						</div>
						<div class="col-12">
							<div class="form-group">
								주소<input class="form-control valid" name="memAddress"
									id="memAddress" value="${members.membersAddress}" readonly="readonly"
									 type="text">
							</div>
						</div>
						<div class="col-12">
							<div class="form-group">
								멤버쉽등급<input class="form-control valid" name="memMemberShip"
									id="memMemberShip" value="${members.membersMembership}" readonly="readonly"
									type="text" >
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								몸무게(kg)<input class="form-control valid" name="memWeight"
									id="memWeight" value="${members.membersWeight}" placeholder="몸무게(kg)"
									type="text">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								신장(cm)<input class="form-control valid" name="memHeight"
									id="memHeight" value="${members.membersHeight}" placeholder="키(cm)"
									type="text">
							</div>
						</div> 
						
					</div>
				</div>
			</div>
		</div>
	<div style="margin-left: 60px">
		<input type="submit" value="수정"
		class="btn btn-secondary btn-icon-split" style="padding: 5px 10px 5px 10px;">
	</div>
	</section>
</form>
</html>