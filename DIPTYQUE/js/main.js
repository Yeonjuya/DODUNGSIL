$(document).ready(function () {
    //main_visual
    $(".main_hover").hide();
    $(".tit_2").mouseenter(function () {
        $(".main_hover").stop().fadeIn();
    });

    $(".tit_2").mouseleave(function () {
        $(".main_hover").stop().fadeOut();
    });

    //prd
    const prd_list = new Swiper('.prd_list', {
        autoplay: {
            delay: 2500, // 2.5초
            disableOnInteraction: false, // 마우스로 제어한 후 자동여부(false=자동)
        },
        loop: true, // 반복여부
        speed: 1000, // 슬라이드넘어가는 속도 ms
        slidesPerView: 3.5, //화면에 보이는 슬라이드 갯수
        spaceBetween: 50,
    });



});