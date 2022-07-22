<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="<c:url value='/css/mypage.css'/>">
<link rel="stylesheet" href="<c:url value='/css/main.css'/>">

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

			<!-- navbar -->
			<c:import url="/WEB-INF/views/layout/nav.jsp" />


			<div class="mypage_box">

				<div class="mypage_pofile">

					<div class="profile">

						<!-- 프로필 사진 -->
						<div id=profile>
							<figure class="profile_img">
							<form id="fileUploadForm" method="post" action="<c:url value='/fileUpload'/>" enctype="multipart/form-data">
								<c:set var="memPic" value="${memPf.memPic}"/>
								<c:choose>
									<c:when test="${memPic eq 'profile_imgae.png' }">
										<img src="<c:url value='/images/profile_image.png'/>" id="profile_img" >
									</c:when>
									<c:when test="${memPic ne 'profile_imgae.png' }">
										<img src="<c:url value='/images/${memPic}'/>" id="profile_img">
									</c:when>
								</c:choose>
								
								<!-- 파일 : <input type="file" id="uploadFile" name="uploadFile">
								<input type="submit" value="업로드"> -->
							</form>
							</figure>
						</div>

						<div class="card-body">
							<h5 class="card-title">${sessionScope.sid }님, 안녕하세요!</h5>
							<hr>
							<p class="card-text">등록된 프로필이 없습니다.</p>
							<button type="submit" class="btn btn-dark" id="profile_button">프로필
								편집하기</button>
						</div>

					</div>

					<div class="profile_box">

						<div id="profile_box_a">
							<a href="<c:url value='/movie/posterView'/>" class="a_item"> <span class="link-text">관심 영화</span>
							<i class="fa-regular fa-heart fa-lg"></i>
							</a>


						</div>

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


</body>


</html>