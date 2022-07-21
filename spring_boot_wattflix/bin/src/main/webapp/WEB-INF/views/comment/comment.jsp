<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title>코멘트 테스트</title> 
<script src="<c:url value='/js/jquery-3.6.0.min.js'/>">
</script> <script src="<c:url value='/jsCustom/comment.js'/>">
</script> 
</head> 
<body> 
	<%-- <div class="comment-box"> 
		<div class="comment-count">댓글 <span id="count">0</span></div> 
		<div class="comment-name"> 
		<span class="anonym">작성자 : <input type="text" class="form-control" id="memId" placeholder="이름" name ="memId" value='${login.userId}' readonly style="width: 100px; border:none;"> </span> 
		</div> 
		<div class="comment-sbox"> <textarea class="comment-input" id="comment" cols="80" rows="2" name="comment" ></textarea> 
		</div> 
		<div class="regBtn"> <button id="Comment_regist"> 댓글등록</button> 
		</div>
	 </div> --%>
 
 <!--  로그인 폼  -->
			<section>
		        <h1 id="title">댓글</h1>
		        <form id="loginForm" name="loginForm" method="post"  action="<c:url value='/login'/>">
		          <table>
		            <tr><th>작성자 : <input type="text" class="form-control" id="memId" placeholder="이름" name ="memId" value='${login.userId}' readonly style="width: 100px; border:none;"></th></tr>
		            <tr><td><textarea class="comment-input" id="comment" cols="80" rows="2" name="comment" ></textarea></td></tr>
		             <tr>
		                <td colspan="2" align="center" id="button">
		                    <br><input type="submit" value="등록">
		                    <input type="reset" value="취소">
		                </td>
		            </tr>             
		            </table>
		        </form>	
	        </section>
 
 </body> 
 </html>