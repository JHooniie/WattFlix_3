<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
   	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
    <!-- custom link -->
    <link rel="stylesheet" href="<c:url value='/css/searchBox.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/animate.css'/>">
    <script src="<c:url value='/jsCustom/posterbook.js'/>"></script>
    <script src="<c:url value='/jsCustom/wow.min.js'/>"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
	</head>
	
	<body>
	
   	<!-- top bar -->
	<c:import url="/WEB-INF/views/layout/top.jsp" />
	
	<!-- navbar -->
	<c:import url="/WEB-INF/views/layout/nav.jsp" />

	    <!-- main 안쪽에 작성하신 div 넣어주세요 -->
	    <main>
	        <div id="Container">
	            <!-- 검색결과 컨테이너 -->
	            <div class="container search-container w-100">
	                <div class="row d-flex flex-row justify-content-between h-100 mt-4">
	                  <c:forEach items="${mvList }" var="mv">
	                  <div class="col-2">
	                    <div class="col MIBS mt-3">
	                        <div class="movieItem">
	                            <a href="#">
	                                <div class="moviePoster marked">
	                                    <img class="img-fluid wow animate__backInUp " src="<c:url value='${mv.moviePoster }'/>">
	                                    <div class="movieInfo">
	                                        <caption class="movieTitle">여름 이야기</caption>
	                                        <span class="material-symbols-outlined mark">
	                                            bookmarks
	                                        </span>
	                                    </div>
	                                </div>
	                            </a>
	                        </div>
	                    </div>
	                </div>
	                </c:forEach>
	              </div>
	        </div>
	    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>