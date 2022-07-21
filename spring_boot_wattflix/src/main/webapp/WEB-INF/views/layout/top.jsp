<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>WattFlix</title>
		
		<link rel="stylesheet" href="<c:url value='/css/common.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/index.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/main.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/movierank.css'/>">
		<link rel="icon" href="<c:url value='/image/favicon.ico'/>" type="image/x-icon" sizes="16x16">
	    <link rel="stylesheet" href="<c:url value='/css/posterbook.css'/>">

		<script src="<c:url value='https://kit.fontawesome.com/50d21a2bed.js'/>" crossorigin="anonymous"></script>
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/jsCustom/index.js'/>"></script>
		<script src="<c:url value='/jsCustom/main.js'/>"></script>
		<script src="<c:url value='/jsCustom/movierank.js'/>"></script>
	    <script src="<c:url value='/jsCustom/posterbook.js'/>"></script>

	</head>
	<body>
		<!-- TOP HEAD -->
		<header id="top-wrap">
			<div class="top-container">
				<!-- 로그인 하지 않은 경우 보여줄 메뉴 항목 -->
				<c:if test="${empty sessionScope.sid }">
					<div class="top-member">
						<!-- login -->
						<div class="top-contents">
							<a onclick="login_dropdown()" class="member-item">
								<span class="link-text">
									<i class="fa-solid fa-right-to-bracket fa-lg"></i>
									Login
								</span>
							</a>
						</div>
							<div id="login-div">
								<form id="loginForm" name="loginForm" method="post" action="<c:url value='/member/login'/>">
									<div id="input-div">
										<input type="text" placeholder="Email" id="memId" name="memId">
										<input type="password" placeholder="Password" id="memPwd" name="memPwd">
									</div>
									<button class="greenBtn" type="submit" style="width:200px;">
										<span>Login</span>
									</button><br>
									<a href="<c:url value="/member/signupFormView"/>">
										<button class="whiteBtn" style="width:200px;">
											<span>Sign up</span>
										</button>
									</a>
								</form>
							</div>

						</c:if>
					
						<!-- 로그인 성공한 경우 보여줄 메뉴 항목 -->
						<c:if test="${not empty sessionScope.sid }">
							${sessionScope.sid } 님 환영합니다 :)    
						  	<a href="<c:url value='member/update'/>"> 회원정보 수정</a>
							<a href="<c:url value='/logout'/>"> 로그아웃</a>
						</c:if>
		</header>