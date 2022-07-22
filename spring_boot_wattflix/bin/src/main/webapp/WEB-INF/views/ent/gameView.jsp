<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- <!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="viewport" content="minimum-scale=10">
        <title>WattFlix</title> -->
<%--         <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
        <link rel="stylesheet" href="<c:url value='/css/index.css'/>"> --%>
        <link rel="stylesheet" href="<c:url value='/css/vsgame.css'/>">
<%--         <script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
        <script src="<c:url value='/jsCustom/index.js'/>"></script> --%>
        <script src="<c:url value='/jsCustom/vsgame.js'/>"></script>
            
    </head>
    <body onload="preLoaingImg()">
    	<!-- navbar -->
    			<c:import url="/WEB-INF/views/layout/top.jsp" />
    	
		<c:import url="/WEB-INF/views/layout/nav.jsp" />

    <div class="wrap">
      <header>
        <h1>당신의 최애 영화는?</h1>
        <p id="roundTitle">최애 영화를 골라주세요!</p>
      </header>
      <div class="content default" id="content">
        <button class="greenBtn" id="btnGameStart" onclick="start()">시작!</button>
        <!-- 로그인 확인 -> O -> 게임 시작  -> X면 로그인 창 -->
        <!-- 회원가입 -->
      </div>
      <footer class="footer soff" id="footer">
        <button id="reselect" onclick="vsgame.Event.clickCancel()">이전으로</button>
      </footer>
    </div>
    <script>
      function start() {
        vsgame.start();
      }
      function preLoaingImg() {
        const preLoadingList = [
          //이미지 넣기 
          //로그인 없이 하는 것 -> 회원 가입 창으로 
          //로그인 되면 북마크된 사진으로 토너먼트 ( 연결 해야함 )
        ], length = preLoadingList.length, tObj = document.getElementsByTagName("BODY")[0];
        let i = 0, imgNode;
        const hiddenNode = document.createElement('DIV');
        hiddenNode.className = 'pre_load soff';
        for(i; i < length; i++) {
          imgNode = document.createElement('IMG');
          imgNode.setAttribute('src', preLoadingList[i]);
          hiddenNode.appendChild(imgNode);
        }
        tObj.appendChild(hiddenNode);
      }
    </script>
  </body>	
      
    
</html>


