<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>WattFlix</title>

<link rel="stylesheet" href="<c:url value='/css/common.css'/>">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>">

<script src="<c:url value='https://kit.fontawesome.com/50d21a2bed.js'/>"
	crossorigin="anonymous"></script>
</head>
<body>

	<!-- navbar 부분입니다 -->
	<nav id="nav-tab">

		<div class="nav-outter">

			<div class="nav-outter-box">

				<div class="nav-icon">
					<a href="<c:url value='/'/>" class="icon-item"> <span
						class="mainLogo">WattFlix</span>
					</a>

				</div>
				<br>
				<div class="nav-menu">
					<!-- 로그인 성공한 경우 보여줄 메뉴 항목 -->
					<c:if test="${not empty sessionScope.sid }">
						<!-- comment -->
						<div class="nav-contents">
							<a href="<c:url value='/movie/todayMovieView'/>" class="nav-item">
								<i class="fa-solid fa-star fa-lg"></i> <span class="link-text">Today's
									Movie</span>
							</a>
						</div>
					</c:if>

					<!-- search -->
					<div class="nav-contents">
						<a href="<c:url value='/movie/searchView'/>" class="nav-item">
							<i class="fa-solid fa-magnifying-glass fa-lg"></i> <span
							class="link-text">Search</span>
						</a>
					</div>

					<!-- rank -->
					<div class="nav-contents">
						<a href="<c:url value='/movie/rankView'/>" class="nav-item"> <i
							class="fa-solid fa-ranking-star fa-lg"></i> <span
							class="link-text">Rank</span>
						</a>
					</div>

					<!-- 로그인 성공한 경우 보여줄 메뉴 항목 -->
					<c:if test="${not empty sessionScope.sid }">
						<!-- my poster -->
						<div class="nav-contents">
								<a href="<c:url value='/mymovie/mymovieView'/>" class="nav-item">
									<i class="fa-solid fa-image fa-lg"></i> <span class="link-text">My
										Movie</span>
								</a>
						</div>
					</c:if>
					<!-- 로그인 성공한 경우 보여줄 메뉴 항목 -->
					<c:if test="${empty sessionScope.sid }">
						<!-- my poster -->
						<div class="nav-contents">
								<a href="<c:url value='/member/loginRequestView'/>" class="nav-item">
									<i class="fa-solid fa-image fa-lg"></i> <span class="link-text">My
										Movie</span>
								</a>
						</div>
					</c:if>

					<!-- gruop -->
					<div class="nav-contents">
						<a href="<c:url value='/ent/chatView'/>" class="nav-item"> <i
							class="fa-solid fa-comments fa-lg"></i> <span class="link-text">Chat</span>
						</a>
					</div>
				</div>


			</div>


			<div class="nav-footer">
				<span class="footer-text"> <a
					href="<c:url value='/company/introduceView'/>">회사소개</a><br> <a
					href="<c:url value='/'/>">이용약관</a><br> <a
					href="<c:url value='/'/>">제휴제안</a><br> <a
					href="<c:url value='/'/>">고객센터</a><br> <b>ⓒ WATTFLIX Corp.</b>
				</span>
			</div>

		</div>
	</nav>
	<!-- 네비바 끝 -->
	<!-- 네비바 열기 버튼 -->
	<div class="nav-menu-icon" id="nav-menu-icon">
		<i class="fa-solid fa-bars fa-lg"></i>
	</div>
	<!-- 네비바 열기 버튼 끝 -->
</body>
</html>