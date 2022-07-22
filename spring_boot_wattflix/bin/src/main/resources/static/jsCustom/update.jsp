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
        <link rel="stylesheet" href="<c:url value='/css/signup.css'/>">
<%--         <script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
        <script src="<c:url value='/jsCustom/index.js'/>"></script> --%>
        <script src="<c:url value='/jsCustom/update.js'/>"></script>
            
    </head>
    <body>
    	<!-- navbar -->
    			<c:import url="/WEB-INF/views/layout/top.jsp" />
    	
		<c:import url="/WEB-INF/views/layout/nav.jsp" />
    	
        <!-- main 안쪽에 작성하신 div 넣어주세요 -->
        <main>
            <div id="signup-header">
                <div class="signup-banner">
                    <!-- logo -->
                    <h1 class="mainLogo"><a href="../index.html"><span style="font-family: PyeongChangPeace-Bold;">WattFlix</span></a></h1>
                    <!-- logo end -->
                    
                </div>
                
                 <form id="signup-form" name="signup-form" method="post" action="<c:url value='/member/update'/>">
                         <div id="update-content">
                            <!-- MAIL -->
                           
							<c:if test="${not empty sessionScope.sid }">
						<h2>	${sessionScope.sid } 님 정보 수정  :)  </h2>     
																</c:if>
							
							                       <!-- <span class="guide_ui"></span> -->
                            <br>
                            <!-- PASSWORD -->
                            <label for="userPwd">현재 비밀번호</label>
                            <input class="signup-input" type="password" name="memPwd" id="memPwd" placeholder="영문, 숫자 특문 중 2개 조합 10자 이상"><br>
                            <!-- Change Password -->
                            <label for="changepwd">변경 비밀변호</label>
                            <input class="signup-input" type="password" name="memchangePwd" id="memchangePwd" placeholder="비밀번호를 만드세요."><br>
                            <br>
                            <!-- Change PASSWORD CHECK -->
                            <label for="changepwd">변경 비밀변호 확인</label>
                            <input class="signup-input" type="password" name="memPwdCheck" id="memPwdCheck" placeholder="비밀번호를 확인하세요"><br>
                            <br>
                           
                            <!-- USERNAME -->
                            <label for="userName">사용자 이름</label>
                            <input class="signup-input" type="text" name="memNickname" id="memNickname" placeholder="프로필에 표시되는 이름"><br>
                           
                      <br>
                        <label>관심 분야</label>
                            <table class="signup-input">
                                <tr>
                                    <td><input type="checkbox" class="chkBox" name="memGenre" id="gr-comedy" value="comedy"></td><td><label class="chkLabel" for="gr-comedy">코미디</label></td>
                                    <td><input type="checkbox" class="chkBox" name="memGenre" id="gr-action" value="action"></td><td><label class="chkLabel" for="gr-action">액션</label></td>
                                    <td><input type="checkbox" class="chkBox" name="memGenre" id="gr-history" value="history"></td><td><label class="chkLabel" for="gr-history">전쟁/역사</label></td>
                                    <td><input type="checkbox" class="chkBox" name="memGenre" id="gr-horror" value="horror"></td><td><label class="chkLabel" for="gr-horror">공포</label></td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" class="chkBox" name="memGenre" id="gr-romentic" value="romentic"></td><td><label class="chkLabel" for="gr-romentic">로맨틱</label></td>
                                    <td><input type="checkbox" class="chkBox" name="memGenre" id="gr-mystery" value="mystery"></td><td><label class="chkLabel" for="gr-mystery">미스터리</label></td>
                                    <td><input type="checkbox" class="chkBox" name="memGenre" id="gr-adventure" value="adventure"></td><td><label class="chkLabel" for="gr-adventure">모험</label></td>
                                    <td><input type="checkbox" class="chkBox" name="memGenre" id="gr-sfFantagy" value="sfFantagy"></td><td><label class="chkLabel" for="gr-sfFantagy">SF/판타지</label></td>
                                </tr>
                            </table>
                            <br>
                          
                            <br>
                            <div class="signup-footer">
                                <button class="greenBtn" id="submitBtn" name="submitBtn" type="submit">회원 정보 수정하기</button>
                            </div>
                            </div>
                            </form>
                        </div>
                        									
                        
    
        </main>
    </body>
</html>
