<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
    <script src="<c:url value='/jsCustom/posterbook.js'/>"></script>
    
    <!-- custom link -->
</head>

<body>
    <!-- top bar -->
	<c:import url="/WEB-INF/views/layout/top.jsp" />

	<!-- navbar -->
	<c:import url="/WEB-INF/views/layout/nav.jsp" />

    <!-- main 안쪽에 작성하신 div 넣어주세요 -->
    <main>
        <div id="Container">
            <!-- 툴바 -->
            <div class="toolbar">
                <div class="tagbar">
                    <button class="btn">#영화</button>
                    <button class="btn">#감독</button>
                    <button class="btn">#배우</button>
                    <button class="btn">#장르</button>
                </div>
                <div class="searchbarContainer"><label>
                      <i class="fa-solid fa-magnifying-glass"></i></label>
                      <input type="text" placeholder="어떤 영화를 보고싶은가요?">
                </div>
            </div> <!-- toolbar -->
            <!-- 중간 타이틀 -->
            <div class="contents-banner">
                <span id="plain-text">${sessionScope.sid }님이 저장한 영화</span>
            </div>
            <!-- 북마크 컨테이너 -->
            <div id="bookmarkContainer">
                <ol class="movieList">
                    <li class="movieItem rcBtn">
                        <a href="#">
                            <div class="commentSection">
                                <span class="comment">text</span>
                            </div>
                        </a>
                    </li>
                   <c:forEach items="${ myMovieList}" var="like">
	                    
	                    <div class="card movie marked">
						  		<img src="<c:url value='${like.moviePoster }'/>" width="220" height="320">
							  	<div class="inner-content">
									<div class="movie-info-title">
										<a href="<c:url value='/mymovie/deleteMymovie/${like.myMovieNo}'/>"> 
											<i class="fa-solid fa-heart fa-2xl"></i>
										</a>
										<br>
										<br>
										<br>
										<br>
										<br>
										<h3>${like.movieTitle }</h3>
										<a href="<c:url value='/movie/detailMovie/${like.movieNo}'/>">
											<input type="button" class="whiteBtn" value="상세정보">
										</a>
									</div>
							  	</div>
							</div>
                    </c:forEach>
                </ol>
            </div> <!--Container -->
        </div>
    </main>
</body>
</html>