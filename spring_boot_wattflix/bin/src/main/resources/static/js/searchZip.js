/**
 * searchZip
 */


$(document).ready(function(){
 	$('#searchZipBtn').on('click', function(){
 		new daum.Postcode({
 			oncomplete:function(data){
	 			var address1 = "";
	 			
	 			// 도로명 주소인 경우
	 			if(data.userSelectedType == 'R'){
	 				address1 = data.roadAddress + "(" + data.bname + data.buildingName + ")";
	 			}else{
	 				address1 = data.jibunAddress;
	 			}
 				
 				// 입력란에 우편번호, 주소1 출력
 				document.getElementById('memZipcode').value = data.zonecode;
 				document.getElementById('memAddress1').value = address1;
 				
 				// 삭제 주소 입력하도록 이미 입력되어 있는 값 삭제하고 포커스
 				var address2 = document.getElementById('memAddress2');
 				address2.value = "";
 				address2.focus();
 			}
 		}).open();
 	}); // click 끝
 });