<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
		<!-- top bar -->
			<c:import url="/WEB-INF/views/layout/top.jsp" />

			<!-- navbar -->
			<c:import url="/WEB-INF/views/layout/nav.jsp" />

    <div class="wrap">
      <header>
        <h1>당신의 최애 영화는?</h1>
        <p id="roundTitle">최애 영화를 골라주세요!</p>
      </header>
      <div class="content default" id="content">
        <button id="btnGameStart" onclick="start()">회원용</button>
        <!-- 로그인 확인 -> O -> 게임 시작  -> X면 로그인 창 -->
        <button id="btnGameStart" onclick="//회원가입창//">비회원용</button>
        <!-- 회원가입 -->
      </div>
      <footer class="footer soff" id="footer">
        <button id="reselect" onclick="vsgame.Event.clickCancel()">이전으로</button>
      </footer>
    </div>
    <script src="jsCustom/vsgame.js?ver=2" async defer></script>
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