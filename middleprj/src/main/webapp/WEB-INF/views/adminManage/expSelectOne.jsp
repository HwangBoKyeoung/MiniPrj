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

	.experience{
		text-align: center;
		width: 200px;
	}
	
	.ttr{
		height: 50px;
		line-height: 50px;
		border-bottom: 1px solid grey;
	}
</style>
</head>
<body>
	<section>
		<div align="center" style="width: 100%; margin-top: 50px; margin-bottom: 100px; margin-left: 50px">
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
									<h3 class="subject">체험신청글</h3> 
								</th>
							</tr>
						</tbody>
					</table>
					<br><br>
					
					<table>
						<tr class="ttr" style="border-top: 1px grey solid;">
							<th class="experience">체험요청날짜</th>
							<td class="experience">${exp.expDate}</td>
						</tr>
						<tr class="ttr">
							<th class="experience">성명</th>
							<td class="experience">${exp.expName}</td>
						</tr>
						<tr class="ttr">
							<th class="experience">전화번호</th>
							<td class="experience">${exp.expTel}</td>
						</tr>
						<tr class="ttr">
							<th class="experience">희망 프로그램</th>
							<td class="experience">${exp.expProgram}</td>
						</tr>
						<tr class="ttr">
							<th class="experience">메세지</th>
							<td class="experience">${exp.expMessage}</td>
						</tr>
					</table>
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