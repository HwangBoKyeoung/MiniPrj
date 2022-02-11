<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
	background-color: black;
}
	script {
	
	}
</style>
<meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <script>
  var a = prompt("성별", "(남자/여자)로 입력");
  var b = prompt("체중(kg단위)", "");
  var c = prompt("키(cm단위)", "");
  c = c/100;
  var BMI = b / (c*c);
  
  if(a=="남자")
  {
  document.write("BMI 지수는 " + BMI + " 입니다<br>");
  if(BMI < 20.0) 
  document.write("저체중입니다");
  else if(BMI < 25)
  document.write("정상입니다");
  else
  document.write("과체중");
  }
  else
  {
  document.write("BMI 지수는 " + BMI + " 입니다<br>");
  if(BMI < 18.5)
  document.write("저체중입니다");
  else if(BMI < 25)
  document.write("정상입니다");
  else
  document.write("과체중");
  }
  </script>

</body>


</html>
