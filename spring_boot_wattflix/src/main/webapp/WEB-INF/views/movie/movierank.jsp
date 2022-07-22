<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<link rel="stylesheet" href="<c:url value='/css/movierank.css'/>">
<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
<script src="<c:url value='/jsCustom/movierank.js'/>"></script>

</head>
<body>
	<!-- top bar -->
	<c:import url="/WEB-INF/views/layout/top.jsp" />
	
	<!-- navbar -->
	<c:import url="/WEB-INF/views/layout/nav.jsp" />

	<main id="movierank-main">
		<div class="movierank">

			<div id="content">

				<div id="box" style="text-align:center;">
					박스 오피스 순위<br>
				</div>

				<input type="date" id="date">

				<button id="mybtn">확인</button>
			</div>

			<div>

				<div id="boxoffice"></div>

			</div>
		</div>

	</main>


</body>
</html>