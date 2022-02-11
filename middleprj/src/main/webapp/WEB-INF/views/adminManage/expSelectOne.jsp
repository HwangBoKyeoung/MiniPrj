<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	fieldset {
	  display: block;
	  width: 70%;
	  padding-top: 0.35em;
	  padding-bottom: 0.625em;
	  padding-left: 0.75em;
	  padding-right: 0.75em;
	  border: 2px solid black;
}
</style>
</head>
<body>
	<section>
		<div style="width: 70%; margin-top: 50px; margin-bottom: 100px; margin-left: 50px">
			<div id="board-view" class="board-wrap">
				<div class="cmd"></div>
				<div class="article-wrap">
					<table class="article-info">
						<colgroup>
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th>
									<h3 class="subject">${selectOne.enquiryId}번 문의글</h3> <span
									class="subj-info"> <span class="writer">BY <span
											class="name">${selectOne.enquiryName}</span></span> <span
										class="date ff-lucida">님</span> </span>
								</th>
							</tr>
						</tbody>
					</table>
					<br><br>
					<form>
						<fieldset>
							<legend>문의내용</legend>
							<div class="context" style="margin-top: 40px; padding-bottom: 80px">
								<p>${selectOne.enquiryMessage}</p>
							</div>
						</fieldset>
					</form>
				</div>
			</div>

			<br><br>
			<div style="display: inline-block">
				<input type="button" value="목록"
					class="btn btn-secondary btn-icon-split"
					style="padding: 5px 10px 5px 10px;"
					onclick="location.href='enquirySelectM.do'">
			</div>
		</div>


	</section>
</body>
</html>