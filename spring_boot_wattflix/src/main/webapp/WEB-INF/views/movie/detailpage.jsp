<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>WatFlix</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />

        <link rel="stylesheet" type="text/css" href="<c:url value='/css/detailpage.css'/>"> 
        <script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
        <script src="<c:url value='/jsCustom/stillcut.js'/>"></script> 
        <script src="https://kit.fontawesome.com/50d21a2bed.js" crossorigin="anonymous"></script>
    </head>

<body>
    <!-- navbar -->
	<c:import url="/WEB-INF/views/layout/nav.jsp" />

    <!-- main 안쪽에 작성하신 div 넣어주세요 -->
    <main>

        <div id="wrap">
            <br><br><br>
            
            <div id="information">
                <div id="infoBox1"> 
                    <a href="<c:url value='${movie.moviePoster }'/>" target="_blank">
                        <img id="mainposter" src="<c:url value='${movie.moviePoster }'/>"></a>
                </div>
                <div id="infoBox2">
                    <div id="infoDetail">

                        <h2>${movie.movieTitle }</h2><br>
                        <p>장르 : ${movie.movieGenre}&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;등급 : ${movie.movieRating}
                            이상&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;개봉 : ${movie.movieOpenDate}</p>
                        <p>감독 : ${movie.movieDirector }</p>
                        <p>배우 : ${movie.movieActor }</p>

                    </div>
                </div>
            </div>

            <br><br><br>

            <div id="story">
                <div id="storyBox">
                    <p>
                        ${movie.movieDetail }
                    </p>
                </div>
            </div>

            <br><br><br><br>

            <div id="trailer">
                <div id="trailerName">
                    <h3>트레일러</h3>
                </div>
                <div id="trailerBox">  <!-- split으로 나눠야 함 : 아직 안 했음 -->
                <c:set var="movieTeaser" value="${movie.movieTeaser}"/>
                    <c:set var="moTsList" value="${fn:split(movieTeaser,',') }"/>
                   	 <c:forEach var="mo" items="${moTsList }">
                    	<div><iframe height="200" src="<c:url value='${mo}'/>" title="YouTube video player"
                            frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></div>
                    </c:forEach> 
                </div>
            </div>

            <div id="stillcut">
                <div id="prevNextButtonBox">
                    <img id="prevButton" src="<c:url value='/image/prevButton.png'/>">
                    <img id="nextButton" src="<c:url value='/image/nextButton.png'/>">
                </div>
                <div id="stillcutBox">
                    <div id="slide">
                    
                    <c:set var="movieStillcut" value="${movie.movieStillcut}"/>
                    <c:set var="moStcList" value="${fn:split(movieStillcut,',') }"/>
                   	 <c:forEach var="mo" items="${moStcList }">
                    	<img src="<c:url value='${mo}'/>" width="30" height="20"class="stillCutImg">
                    </c:forEach>             
       
                    </div>
                </div>
            </div>

            <br><br><br>

            <div id="recommendation">
                <div id="ment">
                    <h3>비슷한 콘텐츠</h3>
                </div>
                <div id="recomBox">
                    <div><a href="<c:url value='/movie/detailpage2'/>" target="_blank">
                        <img class="poster" src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000078/78540/78540_1000.jpg"></a></div>
                    <div><img class="poster" src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000076/76417/76417_1000.jpg"></div>
                    <div><img class="poster" src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80789/80789_1000.jpg"></div>
                    <div><img class="poster" src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85813/85813_1000.jpg"></div>
                </div>
            </div>

            <br><br><br><br>

            <div id="comment">
                <div id="commentName">
                    <h3>한 줄 댓글을 남겨보세요</h3>
                </div>
                <div id="commentBox">
                    <div id="inputBox">
                        <input type="text" id="commentDetail" name="commentDetail" size="100" placeholder="  이 작품에 대한 생각을 자유롭게 표현해주세요.">
                    </div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div id="buttonBox">
                        <button id="commentBtn" name="commentBtn">comment</button>
                    </div>
                </div>
            </div>

            <br><br><br><br><br>

        </div>

    </main>


</body>


</html>