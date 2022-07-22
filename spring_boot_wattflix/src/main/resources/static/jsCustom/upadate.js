window.onload = function() {

    document.getElementById('signup-form').onsubmit = function() {
        var name = document.getElementById('name');
		
		/*if(name.value == "") {
			alert("성명을 입력하세요");
			name.focus();
			
			return false; // 다음 페이지로 이동하지 않게
		}*/
/*
        if(name.value.length < 2) {
            alert("이름은 2자 이상이어야 합니다");
            name.focus();
            name.value="";

            return false;
        } */

        var password2 = document.getElementById('password2');
		var passwordCheck = document.getElementById('passwordCheck');
var originpassword = document.getElementById('originpassword');
        

        if(originpassword.value == "") {
			alert("비밀번호를 입력하세요");
			originpassword.focus();
			
			return false; 
		}
		  if(originpassword.value != /*memPwd*/.value) {
			alert("현재 비밀번호가 일치 하지 않습니다.");
			/*memPwd*/.value = ""; 
			/*memPwd*/.focus();
			
			// 현재 비밀번호와 일치하게 만들어야하는데 디비 불러와야 함 
			// if 절 한번 확인할 것 
			
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


		


    };

};