// 로그인 펼치기
function login_dropdown(){
    var login_form = document.getElementById("login-div");
    if (login_form.style.display == 'flex'){
        login_form.style.display='none';
    }else{
        login_form.style.display='flex';
    }
}


// nav 슬라이드 펼치기
window.onload = function (){
	const navMenuIcon = document.querySelector('#nav-menu-icon');
	const nav = document.querySelector('#nav-tab');
	navMenuIcon.addEventListener('click', () => {
    	nav.classList.add('open');
		navMenuIcon.style.opacity='0';
	});

// nav 슬라이드 접기
	const main = document.querySelector('#main');
	const login_form = document.getElementById("login-div");
	const nav_x = document.querySelector('#nav-tab');
	main.addEventListener('click', () => {
		nav_x.classList.remove('open');
		login_form.style.display='none';
		navMenuIcon.style.opacity='1';
	});

}

	// const header = document.querySelector('#top-wrap');

	// header.addEventListener('click', () => {
	// 	nav_x.classList.remove('open');
	// 	login_form.style.display='none';
	// 	navMenuIcon.style.opacity='1';
	//  });

