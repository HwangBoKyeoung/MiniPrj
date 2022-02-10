<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function updateFnc(id) {
		document.forms.updateFrm.id.value = id;
		document.forms.updateFrm.submit();
	}
</script>

<form action="${pageContext.request.contextPath}/freeUpdate.do"
	method="post" id="updateFrm" name="updateFrm">
	<input type="hidden" name="id">
</form>

<form action="${pageContext.request.contextPath}/freeUpdate.do"
	method="post">
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
								<input class="form-control valid" name="freeWriter"
									id="freeWriter" value="${id }" readonly="readonly"
									type="text" onfocus="this.placeholder = ''"
									onblur="this.placeholder = '작성자'" placeholder="작성자">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<input class="form-control valid" name="freeDate"
									id="freeDate" value="${free.freeDate}"
									readonly="readonly" type="date" onfocus="this.placeholder = ''"
									onblur="this.placeholder = '작성일'" placeholder="작성일">
							</div>
						</div>
						<div class="col-12">
							<div class="form-group">
								<textarea class="form-control w-100" name="title"
									id="title" cols="3" rows="1"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = '제목'" placeholder="제목">${free.freeTitle }</textarea>
							</div>
						</div>


						<div class="col-12">
							<div class="form-group">
								<textarea class="form-control w-100" name="subject"
									id="subject" cols="30" rows="9"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = '내용'" placeholder="내용">${free.freeSubject }</textarea>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<div style="margin-left: 60px">
		<input type="hidden" name="freeId" value="${free.freeId}">
		<input type="submit" value="수정완료"
		class="btn btn-secondary btn-icon-split" style="padding: 5px 10px 5px 10px;">
	</div>
	</section>
</form>


</html>