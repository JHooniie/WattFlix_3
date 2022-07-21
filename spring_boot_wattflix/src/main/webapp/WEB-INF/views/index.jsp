<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

			<!-- top bar -->
			<c:import url="/WEB-INF/views/layout/top.jsp" />

			<!-- navbar -->
			<c:import url="/WEB-INF/views/layout/nav.jsp" />

			<!-- main 안쪽에 작성하신 div 넣어주세요 -->
			<main>
				<div class="contents">
					<div class="contents-banner">
						<span id="plain-text">WattFlix 인기 작품</span>
					</div>
					
					<div class="contents-scroll" id="contents-scroll">
						<c:forEach items="${movieList }" var="mo">

							
							<div class="card movie">
						  		<img src="<c:url value='${mo.moviePoster }'/>" width="220" height="320">
							  	<div class="inner-content">
									<div class="movie-info-title">
										<a href="<c:url value='/mymovie/insertLike/${mo.movieNo}'/>"> 
											<i class="fa-regular fa-heart fa-2xl"></i>
										</a>
										<br>
										<br>
										<br>
										<br>
										<br>
										<h3>${mo.movieTitle }</h3>
										<a href="<c:url value='/movie/detailMovie/${mo.movieNo}'/>">
											<input type="button" class="whiteBtn" value="상세정보">
										</a>
									</div>
							  	</div>
							</div>
						</c:forEach>
					</div>
					<br><br><br><br><br>
					
				</div>
			</main>
	</body>
</html>