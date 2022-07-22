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
    <script src="<c:url value='/js/jquery-3.6.0.min.js' />"></script>
		<script src="<c:url value='/jsCustom/movieSearch.js' />"></script>
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
	            <!-- 툴바 -->
	            <div class="toolbar">
	                <div class="tagbar">
	                    <button class="btn">#영화</button>
	                    <button class="btn">#감독</button>
	                    <button class="btn">#배우</button>
	                    <button class="btn">#장르</button>
	                </div>
	               
	                        <form id="movieSearchFrm">
						<select name="type">
							<option value="">검색조건 검색</option>
							<option value="movieTitle">제목</option>
							<option value="movieGenre">장르</option>
							<option value="movieDirector">감독</option>
							<option value="movieActor">배우</option>
						</select>
						 <div class="searchbarContainer"><label>
	                        <span class="material-symbols-outlined">
	                            search
	                        </span>
	                         <input class="searchbar" name="keyword" type="text" placeholder="어떤 영화를 보고싶은가요?"></label>
	               			 </div>
						<input type="submit" value="검색">
					</form>
	                       
	            </div> <!-- toolbar -->
	            <!-- 중간 타이틀 -->
	            <div class="contents-banner">
	                <span id="plain-text">`${username}`이 보고싶은 영화</span>
	            </div>
	            
	            <!-- 검색결과 컨테이너 -->
	            <div class="container search-container w-100">
	                <div class="row d-flex flex-row justify-content-between h-100 mt-4">
	                  <div class="col-2">
	                    <div class="col MIBS mt-3">
	                        <div class="movieItem">
	                            <a href="#">
	                                <div class="moviePoster marked">
	                                    <img class="img-fluid wow animate__backInUp " src="https://t1.daumcdn.net/movie/f5b9aa5ab1b58241b4c16792c15041d786ad6bce">
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
	                    <div class="col MIBS mt-3">
	                        <div class="movieItem">
	                            <a href="#">
	                                <div class="moviePoster marked">
	                                    <img class="img-fluid wow animate__backInUp " src="https://img.dtryx.com/poster/2022/06/454DBCC3-41CA-43CC-ADE8-244DCD9AA7CC.small.jpg">
	                                    <div class="movieInfo">
	                                        <caption class="movieTitle">모어</caption>
	                                        <span class="material-symbols-outlined mark">
	                                            bookmarks
	                                        </span>
	                                    </div>
	                                </div>
	                            </a>
	                        </div>
	                    </div>
	                  </div>
	                  <div class="col-2">
	                    <div class="col MIBS MIBS-r">
	                        <div class="movieItem">
	                            <a href="#">
	                                <div class="moviePoster marked">
	                                    <img class="img-fluid" src="https://img.dtryx.com/poster/2022/05/5433D630-28D1-4907-96A8-AACD12AF11C4.small.jpg">
	                                    <div class="movieInfo">
	                                        <caption class="movieTitle">애프터 양</caption>
	                                        <span class="material-symbols-outlined mark">
	                                            bookmarks
	                                        </span>
	                                    </div>
	                                </div>
	                            </a>
	                        </div>
	                    </div>
	                    <div class="col MIBS MIBS-r mt-3">
	                        <div class="movieItem">
	                            <a href="detailpage.html">
	                                <div class="moviePoster marked">
	                                    <img class="img-fluid" src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82120/82120_1000.jpg">
	                                    <div class="movieInfo">
	                                        <caption class="movieTitle">탑건</caption>
	                                        <span class="material-symbols-outlined mark">
	                                            bookmarks
	                                        </span>
	                                    </div>
	                                </div>
	                            </a>
	                        </div>
	                    </div>
	                  </div>
	                  <div class="col-2">
	                    <div class="col MIBS MIBS-l mt-3">
	                        <div class="movieItem">
	                            <a href="#">
	                                <div class="moviePoster marked">
	                                    <img class="img-fluid" src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85999/85999_1000.jpg">
	                                    <div class="movieInfo">
	                                        <caption class="movieTitle">토르 : 러브앤썬더</caption>
	                                        <span class="material-symbols-outlined mark">
	                                            bookmarks
	                                        </span>
	                                    </div>
	                                </div>
	                            </a>
	                        </div>
	                    </div>
	                    <div class="col MIBS MIBS-l mt-3">
	                        <div class="movieItem">
	                            <a href="#">
	                                <div class="moviePoster marked">
	                                    <img class="img-fluid" src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85852/85852_1000.jpg">
	                                    <div class="movieInfo">
	                                        <caption class="movieTitle">헤어질 결심</caption>
	                                        <span class="material-symbols-outlined mark">
	                                            bookmarks
	                                        </span>
	                                    </div>
	                                </div>
	                            </a>
	                        </div>
	                    </div>
	                  </div>
	                  <div class="col-2">
	                    <div class="col MIBS MIBS-r">
	                        <div class="movieItem">
	                            <a href="#">
	                                <div class="moviePoster marked">
	                                    <img class="img-fluid" src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85871/85871_1000.jpg">
	                                    <div class="movieInfo">
	                                        <caption class="movieTitle">마녀 : <br>모든 것의 시작</caption>
	                                        <span class="material-symbols-outlined mark">
	                                            bookmarks
	                                        </span>
	                                    </div>
	                                </div>
	                            </a>
	                        </div>
	                    </div>
	                    <div class="col MIBS MIBS-r mt-3">
	                        <div class="movieItem">
	                            <a href="#">
	                                <div class="moviePoster marked">
	                                    <img class="img-fluid" src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85977/85977_1000.jpg">
	                                    <div class="movieInfo">
	                                        <caption class="movieTitle">버즈 라이트이어</caption>
	                                        <span class="material-symbols-outlined mark">
	                                            bookmarks
	                                        </span>
	                                    </div>
	                                </div>
	                            </a>
	                        </div>
	                    </div>
	                  </div>
	                  <div class="col-2">
	                    <div class="col MIBS MIBS-l mt-3">
	                        <div class="movieItem">
	                            <a href="#">
	                                <div class="moviePoster marked">
	                                    <img class="img-fluid" src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85813/85813_1000.jpg">
	                                    <div class="movieInfo">
	                                        <caption class="movieTitle">범죄도시 2</caption>
	                                        <span class="material-symbols-outlined mark">
	                                            bookmarks
	                                        </span>
	                                    </div>
	                                </div>
	                            </a>
	                        </div>
	                    </div>
	                    <div class="col MIBS MIBS-l mt-3">
	                        <div class="movieItem">
	                            <a href="#">
	                                <div class="moviePoster marked">
	                                    <img class="img-fluid" src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85951/85951_1000.jpg">
	                                    <div class="movieInfo">
	                                        <caption class="movieTitle">윌벤져스 : <br>수상한 캠핑대소동</caption>
	                                        <span class="material-symbols-outlined mark">
	                                            bookmarks
	                                        </span>
	                                    </div>
	                                </div>
	                            </a>
	                        </div>
	                    </div>
	                  </div>
	                </div>
					<div id="searchResultBox"></div>
	              </div>
	        </div>
	    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>