
window.onload = function() {

    document.getElementById('signup-form').onsubmit = function() {
        var memId = document.getElementById('memId');
        var memIdCheck = document.getElementById('memIdCheck');
        var password = document.getElementById('password2');
        var passwordCheck = document.getElementById('passwordCheck');
        
//		이메일 체크
		if(memId.value == "") {
			alert("이메일을 입력하세요");
			memId.focus();
			
			return false; // 다음 페이지로 이동하지 않게
		} else {
			if (memId.indexOf("@") == -1 || memId.indexOf(".") == -1) {
				alert("이메일 형식이 아닙니다.");
				return false;
			} else if (memId.indexOf("@") >  memId.indexOf(".")) {
				alert("이메일 형식이 아닙니다.");
				return false;
			} else { }
		}

//		이메일 
        if(memIdCheck.value == "") {
			alert("이메일 확인을 입력하세요");
			memIdCheck.focus();
			return false; // 다음 페이지로 이동하지 않게
		}
        if(memIdCheck.value != memId.value) {
        	alert("이메일 확인 내용이 이메일과 같아야 합니다.");
        	memIdCheck.focus();
        	return false; // 다음 페이지로 이동하지 않게
        }
        
//        비밀번호체크
        if(password2.value == "") {
			alert("비밀번호를 입력하세요");
			password2.focus();
			
			return false; 
		}

        if(password2.value.length < 10) {
            alert("비밀번호는 10자 이상이어야 합니다");
            password2.focus();
            password2.value="";
			
			return false;
        }

        if(password2.value != passwordCheck.value) {
			alert("비밀번호 확인이 일치하지 않습니다");
			passwordCheck.value = ""; 
			passwordCheck.focus();
			
			return false; 
		}

        var check1 = document.getElementById('check1');
        var check2 = document.getElementById('check2');
        var check3 = document.getElementById('check3');

        if(check1.checked == false || check2.checked == false || check3.checked == false) {
			alert("이용 약관 항목을 모두 동의해야 합니다");
			
			return false;
		}


    };


};