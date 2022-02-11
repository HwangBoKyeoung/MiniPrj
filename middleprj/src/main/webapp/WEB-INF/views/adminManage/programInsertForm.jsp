<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script src="ckeditor/ckeditor.js"></script>
	<script>
		$(document).ready(function() {
			CKEDITOR.replace('item_desc', {
				filebrowserUploadUrl : 'imageUpload.do'
			});
		});
	</script>

	<section class="contact-section">
		<div class="container" style="margin-left: 30px">
			<div class="row">
				<div class="col-12">
					<h2 class="contact-title"></h2>
					<br>
				</div>
				<div class="col-lg-8">
					<form class="form-contact contact_form" action="programInsert.do"
						method="post" id="frm" enctype="multipart/form-data">
						<div class="row">

							<div class="col-12">
								<div class="form-group">
									<textarea class="form-control w-100" name="programName"
										id="programName" cols="3" rows="1"
										onfocus="this.placeholder = ''"
										onblur="this.placeholder = '프로그램 이름'" placeholder="프로그램 이름"></textarea>
								</div>
							</div>
							<div class="col-12">
								<div class="form-group">
									<textarea class="form-control w-100" name="programContent"
										id="programContent" cols="30" rows="9"
										onfocus="this.placeholder = ''"
										onblur="this.placeholder = '내용'" placeholder="내용"></textarea>
								</div>
							</div>
							<div class="col-12">
								<div class="form-group">
									<input type="file" class="form-control w-100"
										name="programImage" id="programImage"
										onfocus="this.placeholder = ''"
										onblur="this.placeholder = '프로그램 이미지'" placeholder="프로그램 이미지">
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

	
</body>
</html>