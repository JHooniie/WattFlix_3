<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="<c:url value='/css/main.css'/>">
<link rel="stylesheet" href="<c:url value='/css/mypage.css'/>">

<script src="https://kit.fontawesome.com/50d21a2bed.js"
	crossorigin="anonymous"></script>

<!-- 부트스트랩 끝 -->

</head>

<body>

	<!-- top bar -->
	<c:import url="/WEB-INF/views/layout/top.jsp" />

	<!-- navbar -->
	<c:import url="/WEB-INF/views/layout/nav.jsp" />

	<main>

		<div id="wrap">

			<div class="container">


				<div class="mypage_box">

					<div class="mypage_pofile">

						<div class="profile">

							<!-- 프로필 사진 -->
							<div id=profile>
								<figure class="profile_img">
									<img id="profile_img" src="../image/profile_imgae.png">
								</figure>
							</div>

							<div class="card-body">
								<h5 class="card-title">○○님, 안녕하세요!</h5>
								<hr>
								<p class="card-text">등록된 프로필이 없습니다.</p>
								<button type="submit" class="btn btn-dark" id="profile_button">프로필
									편집하기</button>
							</div>

						</div>

						<div class="profile_box">

							<div id="profile_box_a">
								<a href="<c:url value='/movie/posterView'/>" class="a_item">
									<span class="link-text">관심 영화</span> <i
									class="fa-regular fa-heart fa-lg"></i>
								</a>

						<div id="profile_box_a">
							<a href="<c:url value='/movie/myPageMovieList'/>" class="a_item">  
							<span class="link-text">평가한 영화</span>
							<i class="fa-solid fa-ellipsis-vertical fa-lg"></i>
							</a>
						</div>


						</div>
					</div>

				</div>


			</div>
			<!-- 컨테이너 끝 -->


		</div>
		<!-- wrap 끝 -->
	</main>


</body>


</html>