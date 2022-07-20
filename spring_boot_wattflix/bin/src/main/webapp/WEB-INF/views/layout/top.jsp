<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>WattFlix</title>
		
<%-- 		<link rel="stylesheet" href="<c:url value='/css/mypage_index.css'/>"> --%>
		<link rel="stylesheet" href="<c:url value='/css/common.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/index.css'/>">
		<script src="<c:url value='https://kit.fontawesome.com/50d21a2bed.js'/>" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="<c:url value='/css/main.css'/>">

		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/jsCustom/index.js'/>"></script>
		<%-- <script src="<c:url value='/jsCustom/main.js'/>"></script> --%>
		<script src="<c:url value='/jsCustom/mypage_index.js'/>"></script>
		

	</head>
	<body>
		<!-- TOP HEAD -->
		<header id="top-wrap">
			<div class="top-container">
				<div class="nav-icon">
					<a href="<c:url value='/'/>" class="icon-item"> <span
						class="mainLogo">WattFlix</span>
					</a>
	
					<div class="nav-menu-icon-x" id="nav-menu-icon-x">
						<i class="fa-solid fa-xmark fa-lg"></i>
					</div>
				</div>
			</div>
			
			
			<!-- 로그인 하지 않은 경우 보여줄 메뉴 항목 -->
						<c:if test="${empty sessionScope.sid }">
							<div class="nav-member">
								<!-- login -->
								<div class="nav-contents">
									<a onclick="login_dropdown()" class="member-item">
										<i class="fa-solid fa-right-to-bracket fa-lg"></i> <span
										class="link-text">Login</span>
									</a>
									<div id="login-div">
										<form id="loginForm" name="loginForm" method="post" action="<c:url value='/member/login'/>">
											<div id="input-div">
												<input type="text" placeholder="Email" id="memId" name="memId">
												<input type="password" placeholder="Password" id="memPwd" name="memPwd">
											</div>
											<button id="input-btn" type="submit">
												<span>Login</span>
											</button>
										</form>
									</div>
								</div>
								<div class="nav-contents">
									<a href="<c:url value='/member/signupFormView'/>" class="member-item">
										<i class="fa-solid fa-user-plus fa-lg"></i> <span
										class="link-text">Sign up</span>
									</a>
								</div>
							</div>
						</c:if>
					
						<!-- 로그인 성공한 경우 보여줄 메뉴 항목 -->
						<c:if test="${not empty sessionScope.sid }">
							${sessionScope.sid } 님 환영합니다 :)    
							<a href="<c:url value='/logout'/>"> 로그아웃</a>
						</c:if>
			
		</header>