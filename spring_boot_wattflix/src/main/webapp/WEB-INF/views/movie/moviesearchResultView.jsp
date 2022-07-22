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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.compat.min.css" integrity="sha512-b42SanD3pNHoihKwgABd18JUZ2g9j423/frxIP5/gtYgfBz/0nDHGdY/3hi+3JwhSckM3JLklQ/T6tJmV7mZEw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://kit.fontawesome.com/50d21a2bed.js" crossorigin="anonymous"></script>
    <!-- custom link -->
  	<link rel="stylesheet" href="<c:url value='/css/searchBox.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/animate.css'/>">
    <script src="<c:url value='/js/jquery-3.6.0.min.js' />"></script>
    <script src="<c:url value='/jsCustom/wow.min.js'/>"></script>
	<script src="<c:url value='/jsCustom/movieSearch.js' />"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
	</head>
	
	<body>
	    <!-- main 안쪽에 작성하신 div 넣어주세요 -->
	    <main>
	     <div id="searchResultBox" class="w-100">
				<div class="contents-banner">
					<c:if test="${not empty sessionScope.sid }">
					<span id="plain-text">${sessionScope.sid }이 보고싶은 영화</span>
					</c:if>
					<c:if test="${empty sessionScope.sid }">
					<span id="plain-text">왁플릭스님이 보고싶은 영화</span>
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
					<div OnClick="location.href ='<c:url value='/movie/movieSearch'/>'" style="cursor:pointer;" class="position-sticky top-20 start-50 translate-middle-x spinner-grow" role="status">
					  	<span class="visually-hidden">Loading...</span>
					</div>
					<br><br><br>
					 <div class="container search-container w-100">
		                <div class="row d-flex flex-row justify-content-between h-100 mt-4">
		                  <c:forEach items="${mvList }" var="mv">
		                  <div class="col-2">
		                    <div class="col MIBS mt-3 wow backInUp">
		                    <div class="card movie">
								<img src="<c:url value='${mv.moviePoster }'/>" width="180"
									height="320">
								<div class="inner-content">
									<div class="movie-info-title">
										<c:if test="${not empty sessionScope.sid }">
											<a class="likeBtn" href="<c:url value='/mymovie/insertLike/${mv.movieNo}'/>">
												<i class="fa-regular fa-heart fa-2xl"></i>
											</a>
										</c:if>
										<br> <br> <br> <br> <br>
											<h3>${mo.movieTitle }</h3>
											<a href="<c:url value='/movie/detailMovie/${mv.movieNo}'/>">
												<input type="button" class="greenBtn" style="background-color:none;" value="상세정보">
											</a>
						</div>
					</div>
				</div>
		                        <%-- <div class="movieItem">
		                            <a href="<c:url value='/movie/detailMovie/${mv.movieNo}'/>">
		                                <div class="moviePoster marked">
		                                    <img class="img-fluid" src="<c:url value='${mv.moviePoster }'/>">
		                                    <div class="movieInfo">
		                                        <caption class="movieTitle">여름 이야기</caption>
		                                        <span class="material-symbols-outlined mark">
		                                            bookmarks
		                                        </span>
		                                    </div>
		                                </div>
		                            </a>
		                        </div> --%>
		                    </div>
		                </div>
		                </c:forEach>
		              </div>
			        </div>
				</div>
			</div>           
	        </div>
	    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js" integrity="sha512-Eak/29OTpb36LLo2r47IpVzPBLXnAMPAVypbSZiZ4Qkf8p/7S/XRG5xp7OKWPPYfJT6metI+IORkR5G8F900+g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script type="module" src="../jsCustom/mainwow.js"></script>
    <script src="<c:url value='/jsCustom/searchBox.js' />"></script>
</body>
</html>