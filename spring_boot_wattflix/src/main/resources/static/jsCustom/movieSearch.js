/**
 * movieSearch.js
 */
 
 
 $(document).ready(function(){

 	$('#movieSearchFrm').on('submit', function(){
 	

 		event.preventDefault();
 		

 		var formData = $(this).serialize();
 		
 		$.ajax({
 			type:"post",
 			url:"movieSearchResult", 
 			data:formData,
 			success:function(result){ 
 			// 반환된 결과를 searchResultBox <div>에 삽입
 				// 페이지 전체를 안에 넣어둠.
 				$('#searchResultBox').html(result);
 				
 			},
 			error:function(){
 				// 오류있을 경우 수행되는 함수
 				alert("전송 실패");
 			},
 			complete:function(){
 				//alert("작업완료");
 			}			
 		}); 	// ajax 끝
 	}); // submit 끝 
 });  // ready 끝