<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
   	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>searchBox</title>
    <!-- custom link -->
    <link rel="stylesheet" href="<c:url value='/css/searchBox.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/animate.css'/>">
    <script src="<c:url value='/js/jquery-3.6.0.min.js' />"></script>
    <script src="<c:url value='/jsCustom/wow.min.js'/>"></script>
	<script src="<c:url value='/jsCustom/movieSearch.js' />"></script>
	<script src="<c:url value='/jsCustom/searchBox.js' />"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
	</head>
	
	<body>
   		<!-- navbar -->
		<c:import url="/WEB-INF/views/layout/nav.jsp" />
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<script src="https://kit.fontawesome.com/50d21a2bed.js" crossorigin="anonymous"></script>
	    <!-- main 안쪽에 작성하신 div 넣어주세요 -->
	    <!-- 툴바 -->
        <!--     <div class="toolbar">
                <div class="tagbar">
                    <button class="btn">#영화</button>
                    <button class="btn">#감독</button>
                    <button class="btn">#배우</button>
                    <button class="btn">#장르</button>
                </div>
                <div class="searchbarContainer"><label>
                       <form id="movieSearchFrmRE" class="mt-3 mb-3">
						<div class="d-flex flex-row justify-content-end p-0 toolbar">
							<div class="col-1 mx-0">
								<select id="mvSearchFilter" name="type" class="form-select md-1" aria-label="Default select example">
									<option value="">검색조건 검색</option>
									<option value="movieTitle">제목</option>
									<option value="movieGenre">장르</option>
									<option value="movieDirector">감독</option>
									<option value="movieActor">배우</option>
								  </select>
							</div>
							<div class="col-3 mx-0">
								<input type="text" name="keyword" class="form-control md-9" placeholder="어떤 영화를 보고싶은가요?" aria-label="mvSearchFilter">
							</div>
							<div class="col-1 mx-0">
								<input type="submit"  class="form-control"  value="검색">
							</div>
						</div>
					</form>
                        <input class="searchbar" type="text" placeholder="어떤 영화를 보고싶은가요?"></label>
                </div>
            </div> -->
	    <main>
	        <div id="searchResultBox">
				<div class="contents-banner">
					<c:if test="${not empty sessionScope.sid }">
					<span id="plain-text">${sessionScope.sid }이 보고싶은 영화</span>
					</c:if>
					<c:if test="${empty sessionScope.sid }">
					<span id="plain-text">WattFlix님이 보고싶은 영화</span>
					</c:if>
				</div>
				<a href="<c:url value='/'/>" class="icon-item"> 
				<p class="text-center mainLogo">WattFlix</p>
				</a>
				<!-- 검색바 컨테이너 -->
				<div class="container search-container w-100">
					<!-- 검색바 -->
					<form id="movieSearchFrm" class="mt-3 mb-3">
						<div class="d-flex flex-row justify-content-center p-0 toolbar">
							<div class="col-1 mx-0">
								<select id="mvSearchFilter" name="type" class="form-select form-select-lg md-1" aria-label="Default select example">
									<option value="">검색</option>
									<option value="movieNo">전체</option>
									<option value="movieTitle">제목</option>
									<option value="movieGenre">장르</option>
									<option value="movieDirector">감독</option>
									<option value="movieActor">배우</option>
								  </select>
							</div>
							<div class="col-5 mx-0">
								<input type="text" name="keyword" class="form-control form-control-lg md-8" placeholder="어떤 영화를 보고싶은가요?" aria-label="mvSearchFilter">
							</div>
							<div class="col-1 mx-0">
								<input type="submit"  class="form-control whiteBtn"  value="&#xf002">
							</div>
						</div>
					</form>
					
					<div class="d-flex flex-row justify-content-center tagbar">
						<button class="btn">#영화</button>
						<button class="btn">#감독</button>
						<button class="btn">#배우</button>
						<button class="btn">#장르</button>
						<button class="btn">#movie</button>
						<button class="btn">#director</button>
						<button class="btn">#actor</button>
						<button class="btn">#genre</button>
					</div>
						<div class="position-relative top-50 start-50 translate-middle-x divider"></div>
					<div class="d-flex flex-row justify-content-center tagbar">
						<button class="btn">#당신의</button>
						<button class="btn">#최애</button>
						<button class="btn">#영화는</button>
						<button class="btn">#무엇</button>
						<button class="btn">#인가요?</button>
						<button class="btn">#검색창에</button>
						<button class="btn">#검색</button>
						<button class="btn">#하세요!</button>
					</div>
					<div ></div>
							<!-- <div class="col-3 m-0">
								<select class="form-control md-3" name="type">
									<option value="">검색조건 검색</option>
									<option value="movieTitle">제목</option>
									<option value="movieGenre">장르</option>
									<option value="movieDirector">감독</option>
									<option value="movieActor">배우</option>
								</select>
							</div>
								<div class="searchbarContainer col-6">
									<label>
									<span class="material-symbols-outlined">
										search
									</span>
										<input class="form-control searchbar md-6" name="keyword" type="text" placeholder="어떤 영화를 보고싶은가요?">
									</label>
								</div> -->
				</div>
			</div>
	    </main>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	</body>
</html>