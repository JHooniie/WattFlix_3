<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>왓플릭스 마이페이지 시연</title>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />

<link rel="stylesheet" href="../css/common.css">
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/mypage.css">
<link rel="stylesheet" href="../css/mypage_index.css">

<script src="../js/jquery-3.6.0.min.js"></script>
<script src="../jsCustom/index.js"></script>
<script src="../jsCustom/main.js"></script>
<script src="../jsCustom/mypage_index.js" defer></script>
<script src="https://kit.fontawesome.com/50d21a2bed.js"
	crossorigin="anonymous"></script>

<!-- 부트스트랩 -->

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>

<!-- 부트스트랩 끝 -->

</head>

<body>

	<div id="wrap">

		<div class="container">

			<div class="nav-menu-icon" id="nav-menu-icon">
				<i class="fa-solid fa-bars fa-lg"></i>
			</div>


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
								<form id="login-form">
									<div id="input-div">
										<input type="text" placeholder="Email" id="username">
										<input type="password" placeholder="Password" id="password">
									</div>
									<button id="input-btn">
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

			<!-- nav 끝  -->


			<div class="mypage_box">

				<section class="mypage_pofile">

					<div class="profile">

						<!-- 프로필 사진 -->
						<div id=profile>
							<figure class="profile_img">
								<img id="profile_img" src="../image/profile_imgae.png">
							</figure>
						</div>

						<div class="card-body">
							<h5 class="card-title">`${username}`님, 안녕하세요!</h5>
							<hr>
							<p class="card-text">등록된 프로필이 없습니다.</p>
							<button type="submit" class="btn btn-dark" id="profile_button">프로필
								편집하기</button>
						</div>

					</div>

					<div class="profile_box">

						<div id="profile_box_a">
							<a href="../html/posterbook.html" class="a_item"> <span
								class="link-text">관심 영화</span> <i
								class="fa-regular fa-heart fa-lg"></i>
							</a>


						</div>

						<div id="profile_box_a">
							<a href="index.html" class="a_item"> <span class="link-text">작성한
									코멘트</span> <i class="fa-solid fa-ellipsis-vertical fa-lg"></i>
							</a>
						</div>

						<div id="profile_box_a">
							<a href="index.html" class="a_item"> <span class="link-text">평가</span>
								<i class="fa-solid fa-ellipsis-vertical fa-lg"></i>
							</a>


						</div>

					</div>

				</section>

			</div>



		</div>
		<!-- 컨테이너 끝 -->


	</div>
	<!-- wrap 끝 -->


</body>


</html>