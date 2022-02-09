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
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h2 class="contact-title">게시글 작성</h2><br>
				</div>
				<div class="col-lg-8">
					<form class="form-contact contact_form" action="noticeWrite.do"
						method="post" id="frm">
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<input class="form-control valid" name="noticeWriter"
										id="noticeWriter" value="${name }" readonly="readonly"
										type="text" onfocus="this.placeholder = ''"
										onblur="this.placeholder = 'Enter your name'"
										placeholder="작성자">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<input class="form-control valid" name="noticeDate"
										id="noticeDate" type="date" onfocus="this.placeholder = ''"
										onblur="this.placeholder = 'Enter email address'"
										placeholder="작성일">
								</div>
							</div>

							<script>
								document.getElementById('noticeDate').value = new Date()
										.toISOString().substring(0, 10);
							</script>
							<div class="col-12">
								<div class="form-group">
									<input class="form-control" name="noticeTitle" id="noticeTitle"
										type="text" onfocus="this.placeholder = ''"
										onblur="this.placeholder = 'Enter Subject'" placeholder="제목">
								</div>
							</div>
							<div class="col-12">
								<div class="form-group">
									<textarea class="form-control w-100" name="noticeSubject"
										id="noticeSubject" cols="30" rows="9"
										onfocus="this.placeholder = ''"
										onblur="this.placeholder = 'Enter Message'" placeholder="내용"></textarea>
								</div>
							</div>
						</div>
						<div class="form-group mt-3">
							<button type="submit" class="button button-contactForm boxed-btn">등록</button>
						</div>
					</form>
				</div>

			</div>
		</div>
	</section>

</body>
</html>