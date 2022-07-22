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
<link rel="stylesheet" href="<c:url value='/css/todaymovie.css'/>">

</head>


<body>

	<!-- top bar -->
	<c:import url="/WEB-INF/views/layout/top.jsp" />

	<!-- navbar -->
	<c:import url="/WEB-INF/views/layout/nav.jsp" />

	<main>

		<div id="wrap">


			<div id="today-movie">

				<div id="today-movie-title">
					<h1>왓플릭스의 추천! Today's Movie</h1>
				</div>

				<div class="rec-movie">

					<div class="rec-movie-box">
						<h2>뜨끈뜨끈한 개봉 영화, 식기 전에 감상하세요</h2>
						<h3 class="h4-title">
							<외계 +인 1부 트레일러>
						</h3>
						<div class="rec-movie-contents">

							<iframe width="560" height="315"
								src="https://www.youtube.com/embed/SlnlEiXtxfE"
								title="YouTube video player" frameborder="0"
								allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen></iframe>


						</div>
						
							<div class="tagbar">
								<button class="btn">#한국_SF</button>
								<button class="btn">#전우치_감독</button>
								<button class="btn">#김태리_주연</button>
								<button class="btn">#오늘_개봉</button>
							</div>
						
					</div>
				</div>

				<div class="rec-movie">

					<div class="rec-movie-box">
						<h2>스트레스 해소엔 대리만족 액션 어때요?</h2>
						<div class="rec-movie-contents"></div>
					</div>

				</div>

				<div class="rec-movie">

					<div class="rec-movie-box">
						<h2>여름을 담아봤어요</h2>
						<div class="rec-movie-contents"></div>
					</div>

				</div>

				<div class="rec-movie">

					<div class="rec-movie-box">
						<h2>오스카 수상 배우들의 출연 영화</h2>
						<div class="rec-movie-contents"></div>
					</div>

				</div>
				
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>



			</div>

		</div>
	</main>

</body>
</html>