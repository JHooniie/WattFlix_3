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
        <script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
        
		<script>
	        
	        /* function scoresChange(num) {
	        	var answer = confirm("평점 등록하겠습니까?");
				if(answer == true){
					$('#movieScore').val(num);
					$('#movieScoreForm').submit();
				}
				
	        	// 결과값 반영
	        	//${scoreList.movieScore} = num;
	        } */
	        
	        function scoresChange(num) {
	        	var answer = confirm("평점 등록하겠습니까?");
				if(answer == true){
					$('#movieScore').val(num); // 점수를  input에 설정
					var formData = $('#movieScoreForm').serialize();
					
					$.ajax({
			 			type:"post",
			 			url:"/movie/insertMovieScore",
			 			data:formData,
			 			success:function(result){
			 				alert("별점 등록했습니다");
			 			},
			 			error:function(){			 				
			 				alert("전송 실패");
			 			}		
			 		}); 	// ajax 끝
				}
				/* else {
					 $('#star a').addClass("off");
					 
				} */
		
	        }
	        
	        
	        
        </script>
        
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />

        <link rel="stylesheet" type="text/css" href="<c:url value='/css/detailpage.css'/>"> 
        <script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
        <script src="<c:url value='/jsCustom/stillcut.js'/>"></script> 
        <script src="https://kit.fontawesome.com/50d21a2bed.js" crossorigin="anonymous"></script>
    </head>

<body>

	<!-- top bar -->
	<c:import url="/WEB-INF/views/layout/top.jsp" />
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
                            &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;개봉 : ${movie.movieOpenDate}</p>
                        <p>감독 : ${movie.movieDirector }</p>
                        <p>배우 : ${movie.movieActor }</p>

                    </div>
                    <br>
                   
                   	<!-- 별점 -->
                   	<c:if test="${not empty sessionScope.sid }">
                    <div>
                    <P id="star">
					   <a href="#" value="1" onClick="scoresChange(1)">★</a>
					   <a href="#" value="2" onClick="scoresChange(2)">★</a>
					   <a href="#" value="3" onClick="scoresChange(3)">★</a>
					   <a href="#" value="4" onClick="scoresChange(4)">★</a>
					   <a href="#" value="5" onClick="scoresChange(5)">★</a>
					<p>
					
					<form id="movieScoreForm" method="post" action = "<c:url value='/movie/insertMovieScore'/>"> 
						<input type="hidden"  name="memId"   value="${sessionScope.sid}">
						<input type="hidden"  name="movieNo"   value="${movie.movieNo}">
						<input type="hidden"  id="movieScore" name="movieScore"   value="0">
					</form>
					
					</div>

					</c:if>
                    

                    <br>
                    <a href="<c:url value='/mymovie/insertLike/${movie.movieNo}'/>">
                    	<input class="greenBtn" type="button" value="My Movie 추가">
                   	</a>

                    
                </div>
            </div>

            <br><br><br>

            <div id="story">
                <div id="storyBox">
                    <p>
                    <c:set var="movieDetail" value="${movie.movieDetail }"/>
                    <c:set var="moStcList2" value="${fn:split(movieDetail,'<br>') }"/>
                   	 <c:forEach var="mo" items="${moStcList2 }">
                    	${mo }<br><br>
                    </c:forEach>
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
                	<c:forEach items="${movieList }" var="movieList">
                		<c:if test="${movieList.moviePoster ne movie.moviePoster }">
                			<div>
	                			<a href="<c:url value='/movie/detailMovie/${movieList.movieNo}'/>" target="_blank">
	                			<img class="poster" src="<c:url value='${movieList.moviePoster }'/>"></a>
                			</div>&nbsp;&nbsp;
                		</c:if>
                	</c:forEach>
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