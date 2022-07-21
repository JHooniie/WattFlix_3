<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>WatFlix</title>
        <link rel="stylesheet" href="<c:url value='css/introduce.css'/>">
        <style>
            button {
                background:orange;
                margin: 3px;
                align-items: center;
                padding: 15px;
                min-width: 60px;
                border: 1px #D7E1E1 solid;
                border-radius: 30px;
                font-size: large;
                font-weight: 600;
                color: #181818;
            }
        </style>
    
    </head>
    <body>
     	<!-- navbar -->
		<c:import url="/WEB-INF/views/layout/nav.jsp" />

        <!-- main 안쪽에 작성하신 div 넣어주세요 -->
        <main>
            <div class="content">
	        	<div class="content_head">
		        	<h1 class="page_title"><span style="font-family: PyeongChangPeace-Bold;">WattFlix</span></h1>
		        	<p class="page_info">
			        <h1>회원 정보 수정이 완료되었습니다!</h1>
                </div>
                   <button onclick="location.href='../index.html';">영화 찾아보러 가기</button>
                   <button onclick="location.href='../mypage.html';">마이 페이지 가기</button>
		    	</div>
		</div>
	</div>
        </main>
    </body>
</html>