<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!-- top bar -->
<c:import url="/WEB-INF/views/layout/top.jsp" />

<!-- navbar -->
<c:import url="/WEB-INF/views/layout/nav.jsp" />


<!-- main 안쪽에 작성하신 div 넣어주세요 -->
<main id="main">

	<div class="contents">

		<div class="contents-banner">
			<span id="plain-text">&#127968; Home</span>
		</div>

		<div class="contents-events">


			<div class="contents-event">

				<figure class="event_img">
					<a href="<c:url value='/ent/gameView'/>">
				    <img id="event_img" src="<c:url value='/image/event_movie_worldcup.png'/>">
				    </a>
				</figure>

			</div>

			<div class="contents-event">

				<figure class="event_img">
				<a href="<c:url value='/ent/gameView'/>">
   					 <img id="event_img" src="<c:url value='/image/event_movie_moviebti.png'/>"> 
   				 </a>
				</figure>

			</div>

			<div class="contents-event">

				<figure class="event_img">
					<a href="<c:url value='/ent/gameView'/>">
	   					 <img id="event_img" src="<c:url value='/image/event_movie_what.png'/>"> 
	   				 </a>
				</figure>

			</div>

		</div>


		<div class="contents-banner">
			<span id="plain-text">&#127939;&#127995;&#8205;&#9792;&#65039; WattFlix 인기 작품</span>
		</div>

		<div class="contents-scroll" id="contents-scroll">

			<c:forEach items="${movieList }" var="mo">


				<div class="card movie">
					<img src="<c:url value='${mo.moviePoster }'/>" width="220"
						height="320">
					<div class="inner-content">
						<div class="movie-info-title">
							<c:if test="${not empty sessionScope.sid }">
								<a class="likeBtn" href="<c:url value='/mymovie/insertLike/${mo.movieNo}'/>">
									<i class="fa-regular fa-heart fa-2xl"></i>
								</a>
							</c:if>
							<br> <br> <br> <br> <br>
							<h3>${mo.movieTitle }</h3>
							<a href="<c:url value='/movie/detailMovie/${mo.movieNo}'/>">
								<input type="button" class="greenBtn" style="background-color:none;" value="상세정보">
							</a>
						</div>
					</div>
				</div>

			</c:forEach>

		</div>
		<br> <br> <br> <br> <br>

	</div>
</main>

</body>
</html>