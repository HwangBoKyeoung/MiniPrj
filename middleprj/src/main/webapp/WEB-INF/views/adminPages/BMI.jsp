<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
	background-color: black;
}
	.lead, .text-gray-800, .mb-5 {
		border-bottom: 1px solid white; 
	}
	
</style> 
<meta name="Author" content="">
<meta name="Keywords" content="">
<meta name="Description" content="">
<body>
<script>
	var a = prompt("성별", "(남자/여자)로 입력");
	var b = prompt("체중(kg단위)", "");
	var c = prompt("키(cm단위)", "");
	c = c / 100;
	var BMI = b / (c * c);

	if (a == "남자") {
		document.write('<div class="text-center">'+ '<div class="lead text-gray-800 mb-6">' + "당신의 BMI 지수는 ".fontcolor("red") + BMI + " 입니다<br>".fontcolor("red") + '</div>'+ '</div>');
		if (BMI < 20.0)
			document.write('<div class="text-center">' +"저체중입니다".fontcolor("green")+ '</div>'+"<br><br>");
		else if (BMI < 25)
			document.write('<div class="text-center">' + "정상수치입니다".fontcolor("blue")+ '</div>'+"<br><br>");
		else
			document.write('<div class="text-center">' + "과체중입니다".fontcolor("red")+ '</div>'+"<br><br>");
	} else {
		document.write('<div class="text-center">'+ '<div class="lead text-gray-800 mb-6">' + "당신의 BMI 지수는 ".fontcolor("red") + BMI + " 입니다<br>".fontcolor("red") + '</div>'+ '</div>');
		if (BMI < 18.5)
			document.write('<div class="text-center">' +"저체중입니다".fontcolor("green")+ '</div>'+"<br><br>");
		else if (BMI < 25)
			document.write('<div class="text-center">' + "정상수치입니다".fontcolor("blue")+ '</div>'+"<br><br>");
		else
			document.write('<div class="text-center">' + "과체중입니다".fontcolor("red")+ '</div>'+"<br><br>");
	}
</script>
</body>


</html>