<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script>
function freeFnc(){
   if(${author == null}){
      alert('로그인 후 이용하실 수 있습니다.');
   } else {
		location.href  ="free.do"
   }
}

function dealFnc(){
	if(${author == null}){
	  alert('로그인 후 이용하실 수 있습니다.');
	} else {
		location.href  ="deal.do"
	}
}
</script>

<div class="header-area ">
	<div id="sticky-header" class="main-header-area">
		<div class="container-fluid ">
			<div class="header_bottom_border">
				<div class="row align-items-center">
					<div class="col-xl-3 col-lg-2">
						<div class="logo">
							<a href="main.do"> <img src="img/logo.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-xl-6 col-lg-7">
						<div class="main-menu  d-none d-lg-block">
							<nav>
								<ul id="navigation">
									<li><a href="main.do">홈</a></li>
									<li><a href="#">멤버십<i class="ti-angle-down"></i></a>
										<ul class="submenu">
											<li><a href="memberShip.do">서비스</a></li>
										</ul></li>

									<li><a href="#">이용안내<i class="ti-angle-down"></i></a>
										<ul class="submenu">
											<li><a href="infoUse.do">프로그램</a></li>
											<li><a href="infoSchedule.do">스케줄</a></li>
										</ul></li>

									<li><a href="#">게시판 <i class="ti-angle-down"></i></a>
										<ul class="submenu">
											<li><a href="notice.do">공지사항</a></li>
											<li><a onclick="freeFnc()">자유게시판</a></li>
											<li><a onclick="dealFnc()">중고거래</a></li>
											<li><a href="expForm.do">체험신청</a></li>
										</ul></li>
									<li><a href="map.do">오시는길</a></li>
								</ul>
							</nav>
						</div>

					</div>
					<c:choose>
						<c:when test="${author=='admin'}">
							<div class="col-xl-3 col-lg-3 d-none d-lg-block">
								<div class="Appointment">
									<div class="book_btn d-none d-lg-block">
										<a class="nav-link dropdown-toggle" href="#" id="userDropdown"
											role="button" data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false">관리자</a>
										<div
											class="dropdown-menu dropdown-menu-right shadow animated--grow-in my-undermenu"
											aria-labelledby="userDropdown">
											<a class="dropdown-item" href="mainM.do"> <i
												class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
												관리자페이지
											</a> <a class="dropdown-item" href="logout.do"> <i
												class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> 로그아웃
											</a>
										</div>
										<div class="col-12">
											<div class="mobile_menu d-block d-lg-none"></div>
										</div>
									</div>
								</div>

							</div>
						</c:when>
						<c:when test="${author=='user'}">
							<div class="col-xl-3 col-lg-3 d-none d-lg-block">
								<div class="Appointment">
									<div class="book_btn d-none d-lg-block">
										<a class="nav-link dropdown-toggle" href="#" id="userDropdown"
											role="button" data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false">${name}님</a>
										<div
											class="dropdown-menu dropdown-menu-right shadow animated--grow-in my-undermenu"
											aria-labelledby="userDropdown">
											<a class="dropdown-item" href="userMypage.do?id=${id}"> <i
												class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
												마이페이지
											</a> <a class="dropdown-item" href="logout.do"> <i
												class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> 로그아웃
											</a>
										</div>
										<div class="col-12">
											<div class="mobile_menu d-block d-lg-none"></div>
										</div>
									</div>
								</div>

							</div>
						</c:when>
						<c:otherwise>
							<div class="col-xl-3 col-lg-3 d-none d-lg-block">
								<div class="Appointment">
									<div class="book_btn d-none d-lg-block">
										<a class="nav-link dropdown-toggle" href="#" id="userDropdown"
											role="button" data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false">사용자</a>
										<div
											class="dropdown-menu dropdown-menu-right shadow animated--grow-in my-undermenu"
											aria-labelledby="userDropdown">
											<a class="dropdown-item" href="registerForm.do#mustRegister"> <i
												class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> 회원가입
											</a> <a class="dropdown-item" href="loginForm.do#mustLogin"> <i
												class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> 로그인
											</a>
										</div>
										<div class="col-12">
											<div class="mobile_menu d-block d-lg-none"></div>
										</div>
									</div>
								</div>

							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
</div>
