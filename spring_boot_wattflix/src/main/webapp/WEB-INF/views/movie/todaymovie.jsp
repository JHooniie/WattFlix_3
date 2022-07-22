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
						<h3>&#10084;&#65039;&#8205;&#128293; 뜨끈뜨끈한 개봉 영화, 식기 전에 감상하세요</h3>
						<h4 class="h4-title">
							<외계 +인 1부 트레일러>
						</h4>
						<div class="rec-movie-contents">

							<iframe width="560" height="315"
								src="https://www.youtube.com/embed/SlnlEiXtxfE?controls=0"
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
						<h3>&#128037; 귀엽게만 보다간 큰 코 다칩니다</h3>
						<h4 class="h4-title">
							<미니언즈2 공식 예고편>
						</h4>

						<div class="rec-movie-contents">

							<iframe width="560" height="315"
								src="https://www.youtube.com/embed/qoXf5Zr3BhA?controls=0"
								title="YouTube video player" frameborder="0"
								allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen></iframe>

						</div>

						<div class="tagbar">
							<button class="btn">#돌아온_미니언즈</button>
							<button class="btn">#북미_박스오피스_1위</button>
							<button class="btn">#유니버셜_귀염둥이</button>
						</div>

					</div>
				</div>

				<div class="rec-movie">

					<div class="rec-movie-box">
						<h3>&#128165; 스트레스 해소엔 대리만족 액션 어때요?</h3>

						<h4 class="h4-title">
							<더 킬러 : 죽어도 되는 아이>
						</h4>

						<div class="rec-movie-contents">

							<div id="carouselExampleControls" class="carousel slide"
								data-bs-ride="carousel">
								<div class="carousel-inner">
									<div class="carousel-item active">
										<img src="/image/movie_image_1.jpg" class="d-block w-100"
											alt="...">
									</div>
									<div class="carousel-item">
										<img src="/image/movie_image_2.jpg" class="d-block w-100"
											alt="...">
									</div>
									<div class="carousel-item">
										<img src="/image/movie_image_3.jpg" class="d-block w-100"
											alt="...">
									</div>
								</div>
								<button class="carousel-control-prev" type="button"
									data-bs-target="#carouselExampleControls" data-bs-slide="prev">
									<span class="carousel-control-prev-icon" aria-hidden="true"></span>
									<span class="visually-hidden">Previous</span>
								</button>
								<button class="carousel-control-next" type="button"
									data-bs-target="#carouselExampleControls" data-bs-slide="next">
									<span class="carousel-control-next-icon" aria-hidden="true"></span>
									<span class="visually-hidden">Next</span>
								</button>
							</div>

						</div>

						<div class="tagbar">
							<button class="btn">#장혁_액션_스타트</button>
							<button class="btn">#세상에_죽어도_되는_아이는_없다</button>
							<button class="btn">#여름_블록버스터_여기있다</button>
						</div>

					</div>
				</div>

				<div class="rec-movie">

					<div class="rec-movie-box">
						<h3>여름을 담아봤어요</h3>
						<div class="rec-movie-contents"></div>
					</div>

				</div>


				<br> <br> <br> <br> <br> <br>



			</div>

		</div>
	</main>

</body>
</html>