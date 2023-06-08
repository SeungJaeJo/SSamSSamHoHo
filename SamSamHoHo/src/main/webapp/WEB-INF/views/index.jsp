<!-- 메인이 되는 홈페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>

    <link rel="stylesheet" href="resources/assets/css/main.css">
    <link rel="stylesheet" href="resources/assets/css/main2.css">
    <link rel="stylesheet" href="resources/assets/css/main3.css">
    <link rel="stylesheet" href="resources/assets/css/main4.css">
    <link rel="stylesheet" href="resources/assets/css/main5.css">
    <link rel="stylesheet" href="resources/assets/css/main6.css">
    <link rel="stylesheet" href="resources/assets/css/main7.css">


    <style>
        .rolling_box {
            width: 220px;
            height: 40px;
            text-align: center;
        }

        .rolling_box ul {
            width: 100%;
            height: 100%;
            overflow: hidden;
            position: relative;
        }

        .rolling_box ul li {
            width: 100%;
            height: 100%;
            transition: .5s;
            position: absolute;
            transition: top .75s;
            top: 100%;
            z-index: 1;
            background-color: #ffffff;
        }

        .card_sliding {
            top: 0 !important;
            z-index: 100 !important;
        }

        .card_sliding_after {
            top: -100% !important;
            z-index: 10 !important;
        }

        .rolling_box ul li p {
            font-size: 30px;
            line-height: 40px;
            font-weight: bold;
        }

        .before_slide {
            transform: translateY(100%);
        }

        .after_slide {
            transform: translateY(0);
        }

        #category-keyword-all g {
            top: 1000px;


        }

        .category-keyword-text {
            cursor: pointer;
            display: block;
            white-space-collapse: collapse;
            text-wrap: nowrap;
        }
    </style>

    <script>


    </script>


</head>

<body class="body" style="transform: none;">


    <div id="wrapper">


        <header id="header" class="header">
            <div class="uh">
                <a href="" class="logo">
                    <img width="100" height="30" src="resources/images/logo.png">
                </a>

                <div class="header_right_area">
                    <nav class="header_nav">
                        <ul class="nav sm_hidden md_hidden">
                            <li class="nav_item"><a href="https://www.joongang.co.kr/politics">뉴스룸</a></li>
                            <li class="nav_item"><a href="https://www.joongang.co.kr/politics">정치</a></li>
                            <li class="nav_item"><a href="https://www.joongang.co.kr/money">경제</a></li>
                            <li class="nav_item"><a href="https://www.joongang.co.kr/society">사회</a></li>
                            <li class="nav_item"><a href="https://www.joongang.co.kr/world">국제</a></li>

                        </ul>

                    </nav>
                    <ul class="logout sm_hidden">
                        <li><a href="">로그인</a>
                        </li>
                        <li><a href="">회원가입</a></li>
                    </ul>
                    <div class="header_option_area">
                        <button type="button" class="btn_search" onclick="" aria-label="검색"><i
                                class="ico_search"></i></button>
                        <button type="button" class="btn_navbar" onclick=""><i class="ico_ham"></i></button>
                    </div>




                </div>

            </div>







        </header>

        <style>
            @media (min-width: 1024px) {
                .myfeed_subscribe_news .card_image {
                    width: 205px;
                }
            }
        </style>
        <main role="main" id="container">
            <section class="contents">
                <header id="sticky" class="section_header_wrap m_unsticky">
                    <h1 class="section_title">내 구독</h1>
                </header>

                <section class="myfeed_top_wrap">

                    <div class="myfeed_box todayluck color_set1"><strong class="title">키워드 설정 해보자잇~^^</strong>
                        <p class="description"><br> 본인에게 맞는 키워드를 설정해보자잇 ~^^.</p>
                        <div class="button_wrap"> <button type="button" id="unse_subscribe"
                                class="btn_subscribe btn_s">시작하기</button>
                        </div> <button type="button" class="btn_toggle"><i class="ico_arrow"></i><span
                                class="visually_hidden">더보기</span></button>
                    </div>
                </section>

                <div class="row nologin">
                    <div class="col_lg3">
                        <section class="myfeed_local_news">
                            <header class="title_wrap">
                                <strong class="title">카테고리 설정</strong>
                            </header>
                            <div class="full_popup hide" id="japlus-left-choice-area"><!--show/hide-->
                                <div class="layer_popup filter_area japlus-bottom-fixed-menu">
                                    <div class="layer_body">
                                        <form class="form">
                                            <div class="input_group input_favorite">
                                                <strong class="title lg_hidden"></strong>
                                                <ul>

                                                    <li>
                                                        <input id="favorite_type1_1" class="form_check_input"
                                                            type="checkbox" value="">
                                                        <label class="form_label" for="favorite_type1_1">정치</label>
                                                    </li>
                                                    <li>
                                                        <input id="favorite_type1_2" class="form_check_input"
                                                            type="checkbox" value="">
                                                        <label class="form_label" for="favorite_type1_2">사회</label>
                                                    </li>
                                                    <li>
                                                        <input id="favorite_type1_3" class="form_check_input"
                                                            type="checkbox" value="">
                                                        <label class="form_label" for="favorite_type1_3">경제</label>
                                                    </li>
                                                    <li>
                                                        <input id="favorite_type1_4" class="form_check_input"
                                                            type="checkbox" value="">
                                                        <label class="form_label" for="favorite_type1_4">시사</label>
                                                    </li>

                                                </ul>
                                            </div>
  
                                            <div class="btn_area">
                                                <button type="button"
                                                    class="left_apply btn_form btn_black btn_wide">적용</button>
                                            </div>
                                        </form>
                                    </div>
                                    <button type="button" class="btn_close"><i class="ico_close"></i></button>
                                </div>
                            </div>

                            <header class="title_wrap">
                                <strong class="title"></strong>
                            </header>
                            <div class="subscribe_box2">

                                               <!--차트가 그려질 부분-->
                                               <div class="right-sector">

                 
                                                <div class="graph-status">
                        
                        
                        
                        
                                                    <div class="title">
                                                        <h2>오늘의 뉴스 현황</h2>
                                                        <div class="info">
                                                            <p class="date">
                                                                2023년 06월 08일 (목)
                                                            </p>
                                                            <p class="total"><b id="news-issue-count">2,501</b>건</p>
                                                        </div>
                                                        <div style="width: 250px; height: 200px;">
                        
                        
                                                            <canvas id="myChart"></canvas>
                        
                                                        </div>
                                                        <script type="text/javascript">
                                                            var context = document
                                                                .getElementById('myChart')
                                                                .getContext('2d');
                                                            var myChart = new Chart(context, {
                                                                type: 'bar', // 차트의 형태
                                                                data: { // 차트에 들어갈 데이터
                                                                    labels: [
                                                                        //x 축
                                                                        '정치', '경제', '사회', '문화'
                                                                    ],
                                                                    datasets: [
                                                                        { //데이터
                                
                                                                            fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                                                                            data: [
                                                                                21, 19, 25, 20 //x축 label에 대응되는 데이터 값
                                                                            ],
                                                                            backgroundColor: [
                                                                                //색상
                                                                                'rgba(255, 99, 132, 0.2)',
                                                                                'rgba(54, 162, 235, 0.2)',
                                                                                'rgba(255, 206, 86, 0.2)',
                                                                                'rgba(75, 192, 192, 0.2)',
                                                                                'rgba(153, 102, 255, 0.2)',
                                                                                'rgba(255, 159, 64, 0.2)'
                                                                            ],
                                                                            borderColor: [
                                                                                //경계선 색상
                                                                                'rgba(255, 99, 132, 1)',
                                                                                'rgba(54, 162, 235, 1)',
                                                                                'rgba(255, 206, 86, 1)',
                                                                                'rgba(75, 192, 192, 1)',
                                                                                'rgba(153, 102, 255, 1)',
                                                                                'rgba(255, 159, 64, 1)'
                                                                            ],
                                                                            borderWidth: 1 //경계선 굵기
                                                                        },
                                
                                                                    ]
                                                                },
                                                                options: {
                                                                    legend: {
                                                                        display: false
                                                                    },
                                                                    scales: {
                                                                        yAxes: [
                                                                            {
                                                                                ticks: {
                                                                                    beginAtZero: true
                                                                                }
                                                                            }
                                                                        ]
                                                                    }
                                                                }
                                                            });
                                                        </script>
                        
                        
                        
                        
                                                    </div>
                        
                                                </div>
                                            </div>
</div>

                        </section>

                    </div>
                    <div class="col_lg9">
                        <section class="myfeed_popular_subscribe">
                            <header class="title_wrap">
                                <strong class="title"><a href="">오늘의 뉴스 요약</a></strong>
                            </header>
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <ul class="row card_list">
                                            <li class="col_lg4 color_set1">
                                                <div class="list_item">
                                                    <div class="flex_area">
                                                        <h2 class="headline"><a href="">Think
                                                                English</a></h2> <button type="button"
                                                            class="btn_subscribe" onclick="">구독</button>
                                                    </div>
                                                    <p class="description"><a href="">여러분이 보는 뉴스,
                                                            이제 영어로 만나보세요!</a></p>
                                                    <p class="subscribe_count"><i class="ico_check"></i>20086명 구독중</p>
                                                </div>
                                            </li>
                                            <li class="col_lg4 color_set1">
                                                <div class="list_item">
                                                    <div class="flex_area">
                                                        <h2 class="headline"><a href="">아이랑GO</a>
                                                        </h2> <button type="button" class="btn_subscribe"
                                                            onclick="">구독</button>
                                                    </div>
                                                    <p class="description"><a href="">이번 주말 뭘할까
                                                            고민하는 부모를 위한 비법뉴스</a></p>
                                                    <p class="subscribe_count"><i class="ico_check"></i>6349명 구독중</p>
                                                </div>
                                            </li>
                                            <li class="col_lg4 color_set0">
                                                <div class="list_item">
                                                    <div class="flex_area">
                                                        <h2 class="headline"><a href="">백성호의
                                                                현문우답</a></h2> <button type="button"
                                                            class="btn_subscribe" onclick="">구독</button>
                                                    </div>
                                                    <p class="description"><a href="">지지고 볶는 우리의
                                                            일상이 최고의 선방이요, 수도원입니다. 일상의 교실에서 길어올린 너와 나의 지혜를 나눕니다.</a></p>
                                                    <p class="subscribe_count"><i class="ico_check"></i>5937명 구독중</p>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="swiper-slide">
                                        <ul class="row card_list">
                                            <li class="col_lg4 color_set0">
                                                <div class="list_item">
                                                    <div class="flex_area">
                                                        <h2 class="headline"><a href="">백성호
                                                                기자</a></h2> <button type="button" class="btn_subscribe"
                                                            onclick="">구독</button>
                                                    </div>
                                                    <p class="description"><a href=""> 종교전문기자</a>
                                                    </p>
                                                    <p class="subscribe_count"><i class="ico_check"></i>2385명 구독중</p>
                                                </div>
                                            </li>
                                            <li class="col_lg4 color_set1">
                                                <div class="list_item">
                                                    <div class="flex_area">
                                                        <h2 class="headline"><a href="">폴인인사이트</a>
                                                        </h2> <button type="button" class="btn_subscribe"
                                                            onclick="">구독</button>
                                                    </div>
                                                    <p class="description"><a href="">성장의 경험을 나눕니다.
                                                            폴인인사이트</a></p>
                                                    <p class="subscribe_count"><i class="ico_check"></i>1700명 구독중</p>
                                                </div>
                                            </li>
                                            <li class="col_lg4 color_set2">
                                                <div class="list_item">
                                                    <div class="flex_area">
                                                        <h2 class="headline"><a href="">나는 고발한다.
                                                                J’Accuse…!ㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㅇㄴㅁ</a></h2> <button
                                                            type="button" class="btn_subscribe" onclick="">구독</button>
                                                    </div>
                                                    <p class="description"><a href="">중앙일보는 세대 갈등이
                                                            첨예하던 2021년, 2030세대가 기성세대를 향해 던지는 도발적인 문제 제기 칼럼 시리즈 ‘나는
                                                            저격한다’로 온라인 공론장에서 큰 화제를 모은 바 있습니다. 당시의 문제의식은 그대로 유치한 채 필진과
                                                            대상, 주제를 확장한 ‘나는 고발한다’를 새롭게 시작합니다. 매주 월~금요일 독자 여러분을
                                                            찾아갑니다.</a></p>
                                                    <p class="subscribe_count"><i class="ico_check"></i>1562명 구독중</p>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="swiper-slide">
                                        <ul class="row card_list">
                                            <li class="col_lg4 color_set0">
                                                <div class="list_item">
                                                    <div class="flex_area">
                                                        <h2 class="headline"><a href="">백성호
                                                                기자</a></h2> <button type="button" class="btn_subscribe"
                                                            onclick="">구독</button>
                                                    </div>
                                                    <p class="description"><a href=""> 종교전문기자</a>
                                                    </p>
                                                    <p class="subscribe_count"><i class="ico_check"></i>2385명 구독중</p>
                                                </div>
                                            </li>
                                            <li class="col_lg4 color_set1">
                                                <div class="list_item">
                                                    <div class="flex_area">
                                                        <h2 class="headline"><a href="">폴인인사이트</a>
                                                        </h2> <button type="button" class="btn_subscribe"
                                                            onclick="">구독</button>
                                                    </div>
                                                    <p class="description"><a href="">성장의 경험을 나눕니다.
                                                            폴인인사이트</a></p>
                                                    <p class="subscribe_count"><i class="ico_check"></i>1700명 구독중</p>
                                                </div>
                                            </li>
                                            <li class="col_lg4 color_set2">
                                                <div class="list_item">
                                                    <div class="flex_area">
                                                        <h2 class="headline"><a href="">나는 고발한다.
                                                                J’Accuse…!ㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㅇㄴㅁ</a></h2> <button
                                                            type="button" class="btn_subscribe" onclick="">구독</button>
                                                    </div>
                                                    <p class="description"><a href="">중앙일보는 세대 갈등이
                                                            첨예하던 2021년, 2030세대가 기성세대를 향해 던지는 도발적인 문제 제기 칼럼 시리즈 ‘나는
                                                            저격한다’로 온라인 공론장에서 큰 화제를 모은 바 있습니다. 당시의 문제의식은 그대로 유치한 채 필진과
                                                            대상, 주제를 확장한 ‘나는 고발한다’를 새롭게 시작합니다. 매주 월~금요일 독자 여러분을
                                                            찾아갑니다.</a></p>
                                                    <p class="subscribe_count"><i class="ico_check"></i>1562명 구독중</p>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="swiper-pagination pagination_bullet"></div>
                            </div>
                        </section>

                    </div>
                </div>



                <section class="chain_wrap myfeed_editor_recommend">
                    <header class="title_wrap">
                        <strong class="title">오늘의 키워드</strong>
                    </header>
                    <div class="plz">


                
                    <div class="main_link">
                        <ul class="main_link_items">
                            <li><span class="ico_01">&nbsp;</span>
                                <p>정치</p>
                            </li>
                            <li><span class="ico_02">&nbsp;</span>
                                <p>경제</p>
                            </li>
                            <li><span class="ico_03">&nbsp;</span>
                                <p>사회</p>
                            </li>
                            <li><span class="ico_04">&nbsp;</span>
                                <p>문화</p>
                            </li>
                        </ul>
                        <section class="myfeed_top_wrap2">
                            <div class="myfeed_box todayluck color_set1">
    
                                <div class="tab-pane active" id="category-keyword-all"><svg width="700" height="300">
                                        <g transform="translate(260,155)"><text class="category-keyword-text 전체_LC"
                                                text-anchor="middle" transform="translate(-118,-37)rotate(0)scale(0.9)"
                                                style="font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);">미국</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(-41,10)rotate(0)scale(0.9)"
                                                style="font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);">한국</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(-99,31)rotate(0)scale(0.9)"
                                                style="font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);">경기</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(54,29)rotate(0)scale(0.9)"
                                                style="font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);">중국</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(-198,-71)rotate(0)scale(0.9)"
                                                style="font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);">일본</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(-28,-17)rotate(0)scale(0.9)"
                                                style="font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);">부산</text><text
                                                class="category-keyword-text 전체_OG" text-anchor="middle"
                                                transform="translate(-14,81)rotate(0)scale(0.9)"
                                                style="font-size: 28px; font-weight: bold; fill: rgb(15, 88, 255);">더불어민주당</text><text
                                                class="category-keyword-text 전체_OG" text-anchor="middle"
                                                transform="translate(23,-8)rotate(0)scale(0.9)"
                                                style="font-size: 28px; font-weight: bold; fill: rgb(15, 88, 255);">국회</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(28,-71)rotate(0)scale(0.9)"
                                                style="font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);">유럽</text><text
                                                class="category-keyword-text 전체_OG" text-anchor="middle"
                                                transform="translate(77,-11)rotate(0)scale(0.9)"
                                                style="font-size: 28px; font-weight: bold; fill: rgb(15, 88, 255);">검찰</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(171,-10)rotate(0)scale(0.9)"
                                                style="font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);">영국</text><text
                                                class="category-keyword-text 전체_OG" text-anchor="middle"
                                                transform="translate(188,-42)rotate(0)scale(0.9)"
                                                style="font-size: 28px; font-weight: bold; fill: rgb(15, 88, 255);">민주당</text><text
                                                class="category-keyword-text 전체_OG" text-anchor="middle"
                                                transform="translate(191,34)rotate(0)scale(0.9)"
                                                style="font-size: 22px; font-weight: bold; fill: rgb(15, 88, 255);">삼성전자</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(103,-90)rotate(0)scale(0.9)"
                                                style="font-size: 22px; font-weight: bold; fill: rgb(35, 196, 174);">뉴욕</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(-21,26)rotate(0)scale(0.9)"
                                                style="font-size: 22px; font-weight: bold; fill: rgb(35, 196, 174);">울산</text><text
                                                class="category-keyword-text 전체_OG" text-anchor="middle"
                                                transform="translate(163,-79)rotate(0)scale(0.9)"
                                                style="font-size: 22px; font-weight: bold; fill: rgb(15, 88, 255);">자원</text><text
                                                class="category-keyword-text 전체_OG" text-anchor="middle"
                                                transform="translate(109,13)rotate(0)scale(0.9)"
                                                style="font-size: 22px; font-weight: bold; fill: rgb(15, 88, 255);">경기도</text><text
                                                class="category-keyword-text 전체_OG" text-anchor="middle"
                                                transform="translate(63,104)rotate(0)scale(0.9)"
                                                style="font-size: 22px; font-weight: bold; fill: rgb(15, 88, 255);">국민의힘</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(-155,38)rotate(0)scale(0.9)"
                                                style="font-size: 22px; font-weight: bold; fill: rgb(35, 196, 174);">러시아</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(81,59)rotate(0)scale(0.9)"
                                                style="font-size: 22px; font-weight: bold; fill: rgb(35, 196, 174);">인천</text><text
                                                class="category-keyword-text 전체_PS" text-anchor="middle"
                                                transform="translate(-44,-69)rotate(0)scale(0.9)"
                                                style="font-size: 22px; font-weight: bold; fill: rgb(247, 142, 0);">윤석열</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(213,-69)rotate(0)scale(0.9)"
                                                style="font-size: 22px; font-weight: bold; fill: rgb(35, 196, 174);">대구</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(-101,-1)rotate(0)scale(0.9)"
                                                style="font-size: 22px; font-weight: bold; fill: rgb(35, 196, 174);">아시아</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(-132,-82)rotate(0)scale(0.9)"
                                                style="font-size: 22px; font-weight: bold; fill: rgb(35, 196, 174);">대한민국</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(109,41)rotate(0)scale(0.9)"
                                                style="font-size: 22px; font-weight: bold; fill: rgb(35, 196, 174);">독일</text><text
                                                class="category-keyword-text 전체_PS" text-anchor="middle"
                                                transform="translate(162,59)rotate(0)scale(0.9)"
                                                style="font-size: 22px; font-weight: bold; fill: rgb(247, 142, 0);">이재명</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(124,-11)rotate(0)scale(0.9)"
                                                style="font-size: 16px; font-weight: normal; fill: rgb(35, 196, 174);">프랑스</text><text
                                                class="category-keyword-text 전체_OG" text-anchor="middle"
                                                transform="translate(5,98)rotate(0)scale(0.9)"
                                                style="font-size: 16px; font-weight: normal; fill: rgb(15, 88, 255);">애플</text><text
                                                class="category-keyword-text 전체_OG" text-anchor="middle"
                                                transform="translate(141,76)rotate(0)scale(0.9)"
                                                style="font-size: 16px; font-weight: normal; fill: rgb(15, 88, 255);">삼성</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(19,48)rotate(0)scale(0.9)"
                                                style="font-size: 16px; font-weight: normal; fill: rgb(35, 196, 174);">우크라이나</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(-101,56)rotate(0)scale(0.9)"
                                                style="font-size: 16px; font-weight: normal; fill: rgb(35, 196, 174);">충남</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(-175,-33)rotate(0)scale(0.9)"
                                                style="font-size: 16px; font-weight: normal; fill: rgb(35, 196, 174);">인도</text><text
                                                class="category-keyword-text 전체_PS" text-anchor="middle"
                                                transform="translate(163,9)rotate(0)scale(0.9)"
                                                style="font-size: 16px; font-weight: normal; fill: rgb(247, 142, 0);">송영길</text><text
                                                class="category-keyword-text 전체_OG" text-anchor="middle"
                                                transform="translate(-35,103)rotate(0)scale(0.9)"
                                                style="font-size: 16px; font-weight: normal; fill: rgb(15, 88, 255);">유튜브</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(-202,40)rotate(0)scale(0.9)"
                                                style="font-size: 16px; font-weight: normal; fill: rgb(35, 196, 174);">대전</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(13,-37)rotate(0)scale(0.9)"
                                                style="font-size: 16px; font-weight: normal; fill: rgb(35, 196, 174);">북한</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(104,81)rotate(0)scale(0.9)"
                                                style="font-size: 16px; font-weight: normal; fill: rgb(35, 196, 174);">경남</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(54,-53)rotate(0)scale(0.9)"
                                                style="font-size: 16px; font-weight: normal; fill: rgb(35, 196, 174);">후쿠시마</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(-45,-90)rotate(0)scale(0.9)"
                                                style="font-size: 12px; font-weight: normal; fill: rgb(35, 196, 174);">제주</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(-44,55)rotate(0)scale(0.9)"
                                                style="font-size: 12px; font-weight: normal; fill: rgb(35, 196, 174);">수도권</text><text
                                                class="category-keyword-text 전체_OG" text-anchor="middle"
                                                transform="translate(-38,40)rotate(0)scale(0.9)"
                                                style="font-size: 12px; font-weight: normal; fill: rgb(15, 88, 255);">서울시</text><text
                                                class="category-keyword-text 전체_OG" text-anchor="middle"
                                                transform="translate(-90,-22)rotate(0)scale(0.9)"
                                                style="font-size: 12px; font-weight: normal; fill: rgb(15, 88, 255);">네이버</text><text
                                                class="category-keyword-text 전체_OG" text-anchor="middle"
                                                transform="translate(-157,9)rotate(0)scale(0.9)"
                                                style="font-size: 12px; font-weight: normal; fill: rgb(15, 88, 255);">한국거래소</text><text
                                                class="category-keyword-text 전체_OG" text-anchor="middle"
                                                transform="translate(212,49)rotate(0)scale(0.9)"
                                                style="font-size: 12px; font-weight: normal; fill: rgb(15, 88, 255);">현대</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(128,-75)rotate(0)scale(0.9)"
                                                style="font-size: 12px; font-weight: normal; fill: rgb(35, 196, 174);">광주</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(11,26)rotate(0)scale(0.9)"
                                                style="font-size: 12px; font-weight: normal; fill: rgb(35, 196, 174);">신사</text><text
                                                class="category-keyword-text 전체_PS" text-anchor="middle"
                                                transform="translate(62,118)rotate(0)scale(0.9)"
                                                style="font-size: 12px; font-weight: normal; fill: rgb(247, 142, 0);">윤관석</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(-174,77)rotate(0)scale(0.9)"
                                                style="font-size: 12px; font-weight: normal; fill: rgb(35, 196, 174);">천안</text><text
                                                class="category-keyword-text 전체_LC" text-anchor="middle"
                                                transform="translate(-73,-38)rotate(0)scale(0.9)"
                                                style="font-size: 12px; font-weight: normal; fill: rgb(35, 196, 174);">한반도</text><text
                                                class="category-keyword-text 전체_OG" text-anchor="middle"
                                                transform="translate(-130,75)rotate(0)scale(0.9)"
                                                style="font-size: 12px; font-weight: normal; fill: rgb(15, 88, 255);">행정안전부</text>
                                        </g>
                                    </svg></div>
                            </div>
    
    
    
    
         
    
                        </section>
                    </div>
                    <div class="title2">
                        <h2>오늘의 키워드 순위</h2>
        
                    <div class="subscribe_box3">
                        <div class="rolling_box">
                            <ul id="rolling_box">
                                <li class="card_sliding" id="first">
                                    <p></p>
                                </li>
                                <li class="" id="second">
                                    <p></p>
                                </li>
                                <li class="" id="third">
                                    <p></p>
                                </li>
                            </ul>
                        </div>

                    </div>
        

</div>
                                        </div>
    
                </section>




            </section>

        </main>
        <div id="footer" class="footer footer22">
            <div class="footer_wrap">
                <div class="logo lg_hidden"><a href="https://www.joongang.co.kr" data-evnt-ctg="area:중앙|내 구독"
                        data-evnt-act="move:A40 푸터-사이트맵" data-evnt-lbl="footer logo"><span class="visually_hidden">The
                            JoongAng</span></a></div>


            </div>
            <footer>

                <div class="footer_info">
                    <div class="footer_wrap">

                        <div class="logo sm_hidden md_hidden"><a href="https://www.joongang.co.kr"><span
                                    class="visually_hidden">중앙일보</span></a></div>
                        <div class="corp">
                            <p class="address">
                                <span>주소 : 광주광역시 북구 북구맨 64-86 (우) 0573</span>
                                <span>전화 : 062-262-6486</span>
                                <span>등록번호 : 광주 북 1818</span>
                                <span>등록일자 : 1996.01.16</span>
                                <span>발행인 : 조승재</span>
                                <span>편집인 : 조승재</span>
                                <a href="https://www.joongang.co.kr/sitemap/index" class="sm_hidden md_hidden">전체
                                    서비스</a>
                            </p>
                            <p class="address">
                                <span>사업자명 : <a href="https://www.joongang.co.kr">삼삼뉴스㈜</a></span>
                                <span>사업자등록번호 : 960-11-615524</span>
                                <span>대표자명 : 윤선지</span>
                                <em>통신판매업신고번호 : 1996-광주북구-0116</em>
                            </p>
                            <p class="info sm_hidden md_hidden">삼삼뉴스의 모든 콘텐트(기사)는 저작권법의 보호를 받은바, 무단 전재, 복사, 배포
                                등을 금합니다.[<a href="https://bbs.joongang.co.kr/customercenter/faq?boardSeq=1481">저작권 정책 및
                                    콘텐트 문의</a>]</p>
                            <p class="copyright"><strong>Copyright by SamSamNews Co., Ltd. All Rights
                                    Reserved</strong></p>
                        </div>
                    </div>
                </div>
            </footer>
        </div>











        <script src="resources/assets//main.js"></script>


</body>

</html>