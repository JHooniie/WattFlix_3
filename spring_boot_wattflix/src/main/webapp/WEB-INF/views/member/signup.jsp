<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="<c:url value='/css/common.css'/>">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>">
<link rel="stylesheet" href="<c:url value='/css/main.css'/>">
<link rel="stylesheet" href="<c:url value='/css/signup.css'/>">
<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="<c:url value='/js/searchZip.js'/>"></script>
<script src="<c:url value='/jsCustom/signup.js'/>"></script>

<body>
	<div style="display:none;">
		<%-- <c:import url="/WEB-INF/views/layout/top.jsp" /> --%>
	</div>

	<!-- navbar -->
	<c:import url="/WEB-INF/views/layout/nav.jsp" />

	<!-- main 안쪽에 작성하신 div 넣어주세요 -->
	<main>
		<div id="signup-header">
			<div class="signup-banner">
				<!-- logo -->
				<h1 class="mainLogo">
					<a href="<c:url value='/'/>"><span
						style="font-family: PyeongChangPeace-Bold;">WattFlix</span></a>
				</h1>
				<!-- logo end -->
			</div>
			<div id="signup-section">
				<div class="signup-link">
					<button class="greenBtn" id="submitBtn" name="submitBtn"
						style="width: 300px; margin: 5px; background-color: #FEE500; color: #000000;">카카오톡
						계정으로 가입</button>
					<button class="greenBtn" id="submitBtn" name="submitBtn"
						style="width: 300px; margin: 5px; background-color: #2DB400;">네이버
						계정으로 가입</button>
					<button class="greenBtn" id="submitBtn" name="submitBtn"
						style="width: 300px; margin: 5px; background-color: #DB4437;">구글
						계정으로 가입</button>
				</div>
				<br>
				<div class="title">
					<span class="small-text">⏤ 또는 ⏤</span><br> <br>
					<span style="font-weight: 700;">이메일로 가입하기</span>
				</div>
				<br>
				<form id="signup-form" name="signup-form" method="post" action="<c:url value='/member/signUp'/>">
					<div id="signup-content">
						<!-- MAIL -->
						<label for="userId">이메일</label> <input class="signup-input"
							type="text" id="memId" name="memId" placeholder="이메일을 입력하세요."><br>
						<span class="error"></span>
						<!-- MAIL CHECK -->
						<label for="userIdCheck">이메일 확인</label> <input
							class="signup-input" type="text" id="memIdCheck"
							name="memIdCheck" placeholder="이메일을 다시 입력하세요."><br>
						<!-- <span class="guide_ui"></span> -->
						<br>
						<!-- PASSWORD -->
						<label for="userPwd">비밀번호</label> <input class="signup-input"
							type="password" name="memPwd" id="memPwd"
							placeholder="영문, 숫자 특문 중 2개 조합 10자 이상"><br>
						<!-- PASSWORD CHECK -->
						<label for="userPwdCheck">비밀번호 확인</label> <input
							class="signup-input" type="password" name="memPwdCheck"
							id="memPwdCheck" placeholder="비밀번호를 만드세요."><br> <br>
						<!-- USERNAME -->
						<label for="userName">사용자 이름</label> <input class="signup-input"
							type="text" name="memNickname" id="memNickname"
							placeholder="프로필에 표시되는 이름"><br>
						<!-- 생년월일 Start -->
						<label for="yy">생년월일</label><br>
						<div class="bday-wrap">
							<input class="signup-input" type="text" name="yyyy" id="yyyy"
								placeholder="년도(4글자)"> <select class="signup-input"
								name="mm" id="mm">
								<option>월</option>
								<option value="01">1</option>
								<option value="02">2</option>
								<option value="03">3</option>
								<option value="04">4</option>
								<option value="05">5</option>
								<option value="06">6</option>
								<option value="07">7</option>
								<option value="08">8</option>
								<option value="09">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select> <select class="signup-input" name="dd" id="dd">
								<option>일</option>
								<option value="01">1</option>
								<option value="02">2</option>
								<option value="03">3</option>
								<option value="04">4</option>
								<option value="05">5</option>
								<option value="06">6</option>
								<option value="07">7</option>
								<option value="08">8</option>
								<option value="09">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>

							</select>
						</div>
						<!-- 생년월일 End -->
						<br> <br> <label for="userHp">휴대전화</label><br>
						<div class="hp-wrap">
							<select class="signup-input" id="hp_nationalNum"
								name="hp_nationalNum">
								<option value="82">대한민국 +82</option>
							</select> <input class="signup-input" type="text" id="memHp" name="memHp"
								style="width:295px; display:inline-block;" 
								placeholder="전화번호 입력">
							<button class="whiteBtn" id="memHpCheckBtn" name="memHpCheckBtn"
								onclick="hpCheck()">인증받기</button>
							<input class="signup-input" type="text" id="memHpCheck"
								name="memHpCheck" placeholder="인증번호 입력하세요.">
						</div>
						<br> <label>주소</label><br>
						<input class="signup-input"
							type="text" id="memZipcode" name="memZipcode"
							style="width:295px; display:inline-block;"
							placeholder="우편번호"
							readonly> <input class="whiteBtn" type="button" id="searchZipBtn"
							name="searchZipBtn" value="우편번호 찾기" style="margin-bottom:5px;"><br> <input
							class="signup-input" type="text" id="memAddress1"
							name="memAddress1" placeholder="주소 입력" style="margin-bottom:5px;" readonly> <input
							class="signup-input" type="text" id="memAddress2"
							name="memAddress2" placeholder="상세 주소 입력"> <label>관심
							분야</label>
						<table class="signup-input">
							<tr>
								<td><input type="checkbox" class="chkBox" name="memGenre"
									id="gr-comedy" value="comedy"></td>
								<td><label class="chkLabel" for="gr-comedy">코미디</label></td>
								<td><input type="checkbox" class="chkBox" name="memGenre"
									id="gr-action" value="action"></td>
								<td><label class="chkLabel" for="gr-action">액션</label></td>
								<td><input type="checkbox" class="chkBox" name="memGenre"
									id="gr-history" value="history"></td>
								<td><label class="chkLabel" for="gr-history">전쟁/역사</label></td>
								<td><input type="checkbox" class="chkBox" name="memGenre"
									id="gr-horror" value="horror"></td>
								<td><label class="chkLabel" for="gr-horror">공포</label></td>
							</tr>
							<tr>
								<td><input type="checkbox" class="chkBox" name="memGenre"
									id="gr-romentic" value="romentic"></td>
								<td><label class="chkLabel" for="gr-romentic">로맨틱</label></td>
								<td><input type="checkbox" class="chkBox" name="memGenre"
									id="gr-drama" value="drama"></td>
								<td><label class="chkLabel" for="gr-drama">드라마</label></td>
								<td><input type="checkbox" class="chkBox" name="memGenre"
									id="gr-adventure" value="adventure"></td>
								<td><label class="chkLabel" for="gr-adventure">모험</label></td>
								<td><input type="checkbox" class="chkBox" name="memGenre"
									id="gr-sfFantagy" value="sfFantagy"></td>
								<td><label class="chkLabel" for="gr-sfFantagy">SF/판타지</label></td>
							</tr>
						</table>
						<br> <label for="check1">이용 약관</label>
						<table class="signup-input">
							<tr>
								<td><input type="checkbox" class="chkBox" id="agreeAll"
									name="agreeAll"></td>
								<td colspan="2"><label for="checkAll" class="chkLabel">전체
										약관에 동의합니다</label></td>
							</tr>
							<tr>
								<td colspan="2"><hr></td>
							</tr>
							<tr>
								<td><input type="checkbox" class="chkBox" id="agree1"
									name="agree1"></td>
								<td><label for="agree1" class="chkLabel">만 12세
										이상입니다 <span class="point-text">(필수)</span>
								</label></td>
							</tr>
							<tr>
								<td><input type="checkbox" class="chkBox" id="agree2"
									name="agree2"></td>
								<td><label for="agree2" class="chkLabel"><a
										class="underline" href="#">왓플릭스 서비스 이용 약관</a>에 동의합니다<span
										class="point-text">(필수)</span></label></td>
							</tr>
							<tr>
								<td><input type="checkbox" class="chkBox" id="agree2"
									name="agree2"></td>
								<td><label for="agree2" class="chkLabel"><a
										class="underline" href="#">개인정보 수집 및 이용</a>에 동의합니다<span
										class="point-text">(필수)</span></label></td>
							</tr>
						</table>
						<br>
						<div class="signup-footer">
							<button class="greenBtn" id="submitBtn" name="submitBtn"
								type="submit">가입하기</button>
						</div><br><br><br><br><br>
					</div>
				</form>
			</div>
		</div>
	</main>
</body>
</html>
