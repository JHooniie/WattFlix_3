<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WatFlix</title>
<link rel="stylesheet" href="<c:url value='css/common.css'/>">
<link rel="stylesheet" href="<c:url value='css/mypage_index.css'/>">

<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">


<link rel="stylesheet" href="<c:url value='css/index.css'/>">
<script src="<c:url value='js/jquery-3.6.0.min.js'/>"></script>
<script src="<c:url value='jsCustom/index.js'/>"></script>
<script src="<c:url value='jsCustom/main.js'/>"></script>
<script src="<c:url value='jsCustom/mypage_index.js'/>"></script>
<script src="<c:url value='https://kit.fontawesome.com/50d21a2bed.js'/>"
	crossorigin="anonymous"></script>
</head>
<body>

			<!-- navbar 부분입니다 -->
			<nav id="nav-tab">
			
				<div class="nav-outter">

					<div class="nav-icon">
						<a href="../index.html" class="icon-item"> <span
							class="mainLogo">WattFlix</span>
						</a>

						<div class="nav-menu-icon-x" id="nav-menu-icon-x">
							<i class="fa-solid fa-xmark fa-lg"></i>
						</div>

					</div>

					<div class="nav-menu">
						<div class="nav-contents">
							<!-- home -->
							<a href="../index.html" class="nav-item"> <!-- <span class="material-symbols-outlined">home</span> -->
								<i class="fa-solid fa-house fa-lg"></i> <span class="link-text">Home</span>
							</a>
						</div>
						<!-- search -->
						<div class="nav-contents">
							<a href="#" class="nav-item"> <!-- <span class="material-symbols-outlined">search</span> -->
								<i class="fa-solid fa-magnifying-glass fa-lg"></i> <span
								class="link-text">Search</span>
							</a>
						</div>
						<!-- rank -->
						<div class="nav-contents">
							<a href="../html/movierank.html" class="nav-item"> <!-- <span class="material-symbols-outlined">sort</span> -->
								<i class="fa-solid fa-ranking-star fa-lg"></i> <span
								class="link-text">Rank</span>
							</a>
						</div>
						<!-- poster -->
						<div class="nav-contents">
							<a href="../html/posterbook.html" class="nav-item"> <!-- <span class="material-symbols-outlined">view_cozy</span> -->
								<i class="fa-solid fa-image fa-lg"></i> <span class="link-text">Poster</span>
							</a>
						</div>
						<!-- comment -->
						<div class="nav-contents">
							<a href="#" class="nav-item"> <!-- <span class="material-symbols-outlined">star</span> -->
								<i class="fa-solid fa-star fa-lg"></i> <span class="link-text">Comments</span>
							</a>
						</div>
						<!-- gruop -->
						<div class="nav-contents">
							<a href="#" class="nav-item"> <!-- <span class="material-symbols-outlined">group</span> -->
								<i class="fa-solid fa-comments fa-lg"></i> <span
								class="link-text">Group</span>
							</a>
						</div>
					</div>

					<div class="nav-member">
						<!-- login -->
						<div class="nav-contents">
							<a onclick="login_dropdown()" class="member-item"> <!-- <span class="material-symbols-outlined">login</span> -->
								<i class="fa-solid fa-right-to-bracket fa-lg"></i> <span
								class="link-text">Login</span>
							</a>
							<div id="login-div">
								<form id="login-form" name="login-form" method="post" action="<c:url value='/member/login'/>">
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
							<a href="../html/signup.html" class="member-item"> <!-- <span class="material-symbols-outlined">person_add</span> -->
								<i class="fa-solid fa-user-plus fa-lg"></i> <span
								class="link-text">Sign up</span>
							</a>
						</div>
					</div>


					<div class="nav-footer">
						<span class="footer-text"> <a href="../introduce.html">회사소개</a><br>
							<a href="#">이용약관</a><br> <a href="#">제휴제안</a><br> <a
							href="#">고객센터</a><br> <b>ⓒ WATTFLIX Corp.</b>
						</span>
					</div>

				</div>
			</nav>

			<div class="nav-menu-icon" id="nav-menu-icon">
				<i class="fa-solid fa-bars fa-lg"></i>
			</div>

</body>
</html>