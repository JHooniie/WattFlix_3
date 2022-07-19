
// nav 슬라이드 펼치기
window.onload = function (){
	const navMenuIcon = document.querySelector('#nav-menu-icon');
	const nav = document.querySelector('#nav-tab');
	navMenuIcon.addEventListener('click', () => {
    	nav.classList.add('open');
	});

// nav 슬라이드 접기
	const navMenuIcon_x = document.querySelector('#nav-menu-icon-x');
	const nav_x = document.querySelector('#nav-tab');
	navMenuIcon_x.addEventListener('click', () => {
  	 nav_x.classList.remove('open');
	});
}