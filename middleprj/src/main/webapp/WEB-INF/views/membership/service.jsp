<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
   src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/boo\tstrap.bundle.min.js"></script>
<script>
function mustLogin() {
	location.href="loginForm.do#mustLogin";
	alert("로그인 해주세요.")
}
</script>
<link rel="stylesheet" href="css/membership.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <!-- 이용 시설-->
   <div class="priscing_area">
      <div class="container">
         <div class="row">
            <div class="col-xl-12">
               <div class="section_title text-center mb-73">
                  <h3>이용 시설</h3>
                  <div class="roomImage">
                     <img src="img/membership/weightRoom.jpg" class="rounded"
                        alt="웨이트룸1" width="304" height="236">
                     <div class="caption">
                        <br><br><br>
                        <h2 style="color: white;">웨이트룸1</h2>
                     </div>
                  </div>
                  <div class="roomImage">
                     <img src="img/membership/weightRoom2.jpg" class="rounded"
                        alt="웨이트룸2" width="304" height="236">
                     <div class="caption">
                        <br><br><br>
                        <h2 style="color: white;">웨이트룸2</h2>
                     </div>
                  </div>
                  <div class="roomImage">
                     <img src="img/membership/cardioRoom.jpg" class="rounded"
                        alt="유산소룸" width="304" height="236">
                     <div class="caption">
                        <br><br><br>
                        <h2 style="color: white;">유산소룸</h2>
                     </div>
                  </div>
                  <div class="roomImage">
                     <img src="img/membership/gxRoom.jpg" class="rounded" alt="g.x룸"
                        width="304" height="236">
                     <div class="caption">
                        <br><br><br>
                        <h2 style="color: white;">g.x룸</h2>
                     </div>
                  </div>
                  <div class="roomImage">
                     <img src="img/membership/showerRoom.jpg" class="rounded"
                        alt="샤워실" width="304" height="236">
                     <div class="caption">
                        <br><br><br>
                        <h2 style="color: white;">샤워실</h2>
                     </div>
                  </div>
                  <div class="roomImage">
                     <img src="img/membership/saunaRoom.jpg" class="rounded" alt="사우나"
                        width="304" height="236">
                     <div class="caption">
                        <br><br><br>
                        <h2 style="color: white;">사우나</h2>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- 이용 시설 끝-->
   <!-- 운영 프로그램 -->
   <div class="priscing_area">
      <div class="container">
         <div class="row">
            <div class="col-xl-12">
               <div class="section_title text-center mb-73">
                  <h3>운영 프로그램</h3>
                  <div class="roomImage">
                     <a href="infoUse.do#program1"> <img src="img/programs/01.PNG"
                        class="rounded" alt="스트롱바이줌바" width="304" height="236">
                     </a>
                  </div>
                  <div class="roomImage">
                     <a href="infoUse.do#program2"> <img src="img/programs/02.PNG"
                        class="rounded" alt="플라잉요가" width="304" height="236">
                     </a>
                  </div>
                  <div class="roomImage">
                     <a href="infoUse.do#program3"> <img src="img/programs/03.PNG"
                        class="rounded" alt="바디컴뱃" width="304" height="236">
                     </a>
                  </div>
                  <div class="roomImage">
                     <a href="infoUse.do#program4"><img src="img/programs/04.PNG"
                        class="rounded" alt="Vg댄스" width="304" height="236"> </a>
                  </div>
                  <div class="roomImage">
                     <a href="infoUse.do#program5"><img src="img/programs/05.PNG"
                        class="rounded" alt="다이어트댄스" width="304" height="236"> </a>
                  </div>
                  <div class="roomImage">
                     <a href="infoUse.do#program6"> <img src="img/programs/06.PNG"
                        class="rounded" alt="그룹P.T" width="304" height="236">
                     </a>
                  </div>
                  <div class="roomImage">
                     <a href="infoUse.do#program7"> <img src="img/programs/07.PNG"
                        class="rounded" alt="스피닝" width="304" height="236">
                     </a>
                  </div>
                  <div class="roomImage">
                     <a href="infoUse.do#program8"> <img src="img/programs/08.PNG"
                        class="rounded" alt="점핑잭" width="304" height="236">
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- 운영 프로그램 끝 -->
   <!-- 멤버십 상품 -->
   <div id="service" class="priscing_area">
      <div class="container">
         <div class="row">
            <div class="col-xl-12">
               <div class="section_title text-center mb-73">
                  <h3 id="item">멤버십 상품</h3>
               </div>
            </div>
         </div>
         <c:forEach items="${memberships }" var="membership">
            <div style="display: inline-block;" class="row">
               <div class="col-lg-4 col-md-6">
                  <div style="width: 330px; margin: 15px;" class="single_prising text-center">
                     <div class="prising_header">
                        <h3>${membership.membershipNum }</h3>
                        <h3>${membership.membershipName }</h3>
                        <span><fmt:formatNumber pattern="###,###,###"
                              value="${membership.membershipPrice}" />원</span>
                     </div>
                     <div class="pricing_body">
                        <ul>
                           <li>24시간 이용</li>
                           <li>월 P.T 1회 제공</li>
                           <li>락커룸 + 샤워실 무제한</li>
                           <li class="off-color"></li>
                           <li class="off-color"></li>
                        </ul>
                     </div>
                     <c:choose>
                     <c:when test="${id == null}">
                     <div class="pricing_btn" align="center">
                        <a onclick="mustLogin()" class="boxed-btn3" id="mustLogin">구 매</a>
                     </div>
                     </c:when>
                     <c:otherwise>
                     <div class="pricing_btn" align="center">
                        <a onclick="membershipSelect(${membership.membershipNum})" class="boxed-btn3">구 매</a>
                     </div>
                     </c:otherwise>
                     </c:choose>
                     <form id="frm" action="memberShipSelect.do" method="post">
                        <input type="hidden" id="membershipNum" name="membershipNum">
                     </form>
                  </div>
               </div>
            </div>
         </c:forEach>
      </div>
   </div>
   <!-- 멤버십 상품 끝-->
   <script type="text/javascript">
      function membershipSelect(id) { 
         console.log(id);
         document.forms.frm.membershipNum.value = id;
         document.forms.frm.submit();
      }
   </script>
   
</body>
</html>