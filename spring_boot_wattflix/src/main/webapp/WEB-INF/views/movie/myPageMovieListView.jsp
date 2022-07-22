<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<head>

		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		
		<link rel="stylesheet" href="<c:url value='/css/main.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/moviescore.css'/>">
		
		<script src="https://kit.fontawesome.com/50d21a2bed.js" crossorigin="anonymous"></script>

	</head>
	<!-- top bar -->
	<c:import url="/WEB-INF/views/layout/top.jsp" />
    <!-- navbar -->

	<c:import url="/WEB-INF/views/layout/nav.jsp" />
	
	<main>
	
	<div class="title">
	<h1>${sessionScope.sid } 님이 평가한 영화 &#129479;</h1>
	</div>
	
	<div id="wrap">
				
		<c:forEach items="${scoreList }" var="scoreList">
			<div class="test">
				<div class="score-box">
			
					<div id="titleBox">
					<h5>${scoreList.movieTitle }</h5>
					</div>
					
					<div id="posterBox">
					<a href="<c:url value='/movie/detailMovie/${scoreList.movieNo}'/>" target="_blank">
					<img id="imgPoster" src="<c:url value='${scoreList.moviePoster }'/>" ></a>
					</div>
					
					<div id="starBox">
						<c:choose>
					         <c:when test = "${scoreList.movieScore == 1}">
					           <span id="star"> ★ </span>
					         </c:when>
					         <c:when test = "${scoreList.movieScore == 2}">
					            <span id="star"> ★★ </span>
					         </c:when>
					         <c:when test = "${scoreList.movieScore == 3}">
					             <span id="star">★★★ </span>
					         </c:when>
					         <c:when test = "${scoreList.movieScore == 4}">
					           <span id="star">  ★★★★ </span>
					         </c:when>
					         <c:when test = "${scoreList.movieScore == 5}">
					           <span id="star">  ★★★★★ </span>
					         </c:when>
		  		   		</c:choose>
	  		   		</div>
				
				</div>
			</div>
				
		</c:forEach>
					
				
				
	</div>
		
	
	</main>
		
	</body>
</html>