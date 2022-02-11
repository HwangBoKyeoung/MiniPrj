<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<nav
		class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

		<!-- Sidebar Toggle (Topbar) -->
		<button id="sidebarToggleTop"
			class="btn btn-link d-md-none rounded-circle mr-3">
			<i class="fa fa-bars"></i>
		</button>

		<!-- Topbar Search -->
		<form
			class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
			<div class="input-group">	
			
		</form>

		<!-- Topbar Navbar -->
		<ul class="navbar-nav ml-auto">

			<c:if test="${not empty id}">
				<!-- Nav Item - User Information -->
				<li class="nav-item dropdown no-arrow"><a
					class="nav-link dropdown-toggle" href="#" id="userDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <span
						class="mr-2 d-none d-lg-inline text-gray-600 small">${name}</span>
						<img class="img-profile rounded-circle"
						src="img/undraw_profile.svg">
				</a> <!-- Dropdown - User Information -->

					<div
						class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
						aria-labelledby="userDropdown">
						<a class="dropdown-item" href="main.do"> <i
							class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> 홈페이지
						</a> 
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="logout.do"
							data-target="#logoutModal"> <i
							class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
							로그아웃
						</a>
					</div></li>
			</c:if>

			<c:if test="${empty id}">
				<div class="sidebar-card d-none d-lg-flex">
					<a class="btn btn-primary btn-sm" href="loginForm.do">로그인</a>
				</div>
			</c:if>

		</ul>

	</nav>
</body>
</html>