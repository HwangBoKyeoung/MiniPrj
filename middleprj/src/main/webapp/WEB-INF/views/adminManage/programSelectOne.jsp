<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.experience1 {
	text-align: center;
	width: 200px;
}

.experience2 {
	text-align: center;
	width: 1000px;
}

.ttr {
	height: 50px;
	line-height: 50px;
	border-bottom: 1px solid grey;
}
</style>
</head>
<body>
	<section>
		<div
			style="width: 100%; margin-top: 50px; margin-bottom: 100px; margin-left: 50px">
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
									<h2 class="subject">프로그램 - ${program.programName}</h2>
								</th>
							</tr>
						</tbody>
					</table>
					<br>
					<br>

					<table>
						<tr class="ttr" style="border-top: 1px grey solid;">
							<th class="experience1">프로그램 설명</th>
							<td class="experience2">${program.programContent}</td>
						</tr>
						<tr class="ttr">
							<th class="experience1">프로그램 이미지</th>
							<td class="experience2" style="height:700px;"><img src="upload/${program.programImage}"
								alt="${program.programImage}"></td>
						</tr>
					</table>
				</div>
			</div>

			<br>
			<br>

			<div style="display: inline-block">
				<input type="button" value="목록"
					class="btn btn-secondary btn-icon-split"
					style="padding: 5px 10px 5px 10px;"
					onclick="location.href='insertServiceM.do'">

			</div>
			<div style="display: inline-block; margin-left: 950px;">
				<input type="button" value="수정"
					class="btn btn-secondary btn-icon-split"
					style="padding: 5px 10px 5px 10px;"
					onclick="location.href='updateService.do'"> 
					<input
					type="button" value="삭제" class="btn btn-secondary btn-icon-split"
					style="padding: 5px 10px 5px 10px;"
					onclick="location.href='deleteService.do'">
			</div>
		</div>

	</section>
</body>
</html>