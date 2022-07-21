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
			<span id="plain-text">Home</span>
		</div>
		
		<div class="contents-events">


			<div class="contents-event">

				<figure class="event_img">
					<img id="event_img" src="../image/event_movie_worldcup.png">
				</figure>

			</div>

			<div class="contents-event">

				<figure class="event_img">
					<img id="event_img" src="../image/event_movie_worldcup.png">
				</figure>

			</div>

			<div class="contents-event">

				<figure class="event_img">
					<img id="event_img" src="../image/event_movie_worldcup.png">
				</figure>

			</div>

		</div>



		<div class="contents-banner">
			<span id="plain-text">WattFlix 인기 작품</span>
		</div>

		<div class="contents-scroll" id="contents-scroll">
			<c:forEach items="${movieList }" var="mo">

				<a class="movie"
					href="<c:url value='/movie/detailMovie/${mo.movieNo}'/>"> <img
					src="<c:url value='${mo.moviePoster }'/>" width="220" height="320">
					<div id="movie-info">
						<div>
							<p>${mo.movieTitle }</p>
						</div>
						<span class="material-symbols-outlined" id="bookmark1"
							onclick="bookmark(this.id)"><i
							class="fa-regular fa-bookmark"></i></span>
					</div>
				</a>

			</c:forEach>
		</div>
		<br> <br> <br> <br> <br>

	</div>
</main>


</body>
</html>