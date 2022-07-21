<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>WattFlix</title>

<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
<link rel="stylesheet" href="<c:url value='/css/common.css'/>">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>">
<link rel="stylesheet" href="<c:url value='/css/main.css'/>">
<link rel="stylesheet" href="<c:url value='/css/movierank.css'/>">
<link rel="icon" href="<c:url value='/image/favicon.ico'/>"
	type="image/x-icon" sizes="16x16">
<link rel="stylesheet" href="<c:url value='/css/posterbook.css'/>">

<script src="<c:url value='https://kit.fontawesome.com/50d21a2bed.js'/>"
	crossorigin="anonymous"></script>


<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">

<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
	crossorigin="anonymous"></script>


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
						<a onclick="login_dropdown()"> <input type="button"
							class="top-contents-btn" style="width: 100%;" value="Login">
						</a> <a href="<c:url value="/member/signupFormView"/>"> <input
							type="button" class="top-contents-btn" style="width: 100%;"
							value="Sign Up">
						</a>
					</div>

					<div id="login-div">
						<form id="loginForm" name="loginForm" method="post"
							action="<c:url value='/member/login'/>">
							<div id="input-div">
								<input type="text" placeholder="Email" id="memId" name="memId">
								<input type="password" placeholder="Password" id="memPwd"
									name="memPwd">

							</div>
							<button class="greenBtn" type="submit" style="width: 222px;">
								<span>Login</span>
							</button>
							<br>



						</form>
					</div>
				</div>
			</c:if>

			<!-- 로그인 성공한 경우 보여줄 메뉴 항목 -->
			<c:if test="${not empty sessionScope.sid }">

				<div class="dropdown" id="top-contents-login">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						data-bs-toggle="dropdown" aria-expanded="false">${sessionScope.sid }
						님 환영합니다 :)
					</button>
					<ul class="dropdown-menu">
					
						<li><a class="dropdown-item"
							href="<c:url value='/member/mypageView'/>">마이페이지</a></li>
							
						<li><a class="dropdown-item"
							href="<c:url value='/member/updateForm'/>">회원정보 수정</a></li>
							
						<li><a class="dropdown-item" href="<c:url value='/logout'/>">로그아웃</a></li>
					</ul>
				</div>

			</c:if>

		</div>

	</header>