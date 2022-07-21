<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
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
	<!-- top bar -->
	<c:import url="/WEB-INF/views/layout/top.jsp" />
    <!-- navbar -->

	<c:import url="/WEB-INF/views/layout/nav.jsp" />
	
	<main>
	
	<div id="wrap">

		<div class="container">
		
			<div class="mypage_box">
				
				<div>
					<c:forEach items="${scoreList }" var="scoreList">
					${scoreList.movieTitle }<br>
					<img src="<c:url value='${scoreList.moviePoster }'/>" width="30" height="20"><br>
					${scoreList.movieScore }<br>
					</c:forEach>
				</div>
				
			</div>
			
		</div>
		
	</div>
	
	</main>
		
	</body>
</html>