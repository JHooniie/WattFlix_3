$(document).ready(function(){

    // 툴바 버튼
    let $btns = $('.tagbar .btn');
    $('.tagbar .btn:first-child').addClass('active');

    $('.tagbar .btn').on('click',function(){
        let index = $(this).index();
        $btns.removeClass('active');
        $(this).addClass('active');
    });

});