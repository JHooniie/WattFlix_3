window.onload = function() {
    document.getElementById('signup-form').onsubmit = function() {

	 //var pattern3 = /[~!@#$%^&*()_+|<>?:{}]/; 
        var email = document.getElementById('memId');
         var emailchk = document.getElementById('memIdCheck');
       var pw = document.getElementById("memPwd");
       var pwCheck = document.getElementById("memPwdCheck");
       var nickname = document.getElementById("memNickname");
       var hp = document.getElementById("memHp");
       var year = document.getElementById('yyyy');
       var month = document.getElementById('mm');
       var day = document.getElementById('dd');
        var hpCheck = document.getElementById("memHpCheck");
        var address1 = document.getElementById("memAddress1");
        var address2 = document.getElementById("memAddress2");

      
      
      if(email.value==""){
        alert("이메일을 입력해 주세요");
           email.focus();
           return false;
       }
       
      if(pw.length<10){
       alert("비밀번호는 10자리 이상 문자,숫자,특수문자로 구성하여야합니다.");
       return false;
       }
       
       if(pw.value==""){
       alert("비밀번호를 입력해 주세요");
       memPwd.focus();
       return false;
       }
       
       if(pw.value!=pwCheck.value){
       alert("비밀번호가 다릅니다. 다시 확인해 주세요.");
       return false;
       }
       
       if(nickname.value==""){
       alert("닉네임을 입력해 주세요");
       nickname.focus();
       return false;
       }
            if(year.value==""||month.value==""||day.value==""){
      alert("생년월일을 입력해 주세요.");
      year.focus();
      return false;

    }
       
        if(hp.value==""){
       alert("전화번호를 입력해 주세요");
       hp.focus();
       return false;
       }
       
         if(hpCheck.value==""){
       alert("인증번호를 입력해 주세요");
       hpCheck.focus();
       return false;
       }
       
   if(address1.value==""){
   alert("주소를 입력해 주세요");
   address1.focus();
   return false;
}
     
        if(address2.value==""){
   alert("상세주소를 입력해 주세요");
   address2.focus();
   return false;
}



};

};