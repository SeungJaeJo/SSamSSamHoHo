<!-- 메인이 되는 홈페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>

<link rel="stylesheet" href="resources/assets/css/main.css">
<link rel="stylesheet" href="resources/assets/css/main2.css">
<link rel="stylesheet" href="resources/assets/css/main2_1.css">

<link rel="stylesheet" href="resources/assets/css/main3.css">
<link rel="stylesheet" href="resources/assets/css/main4.css">
<link rel="stylesheet" href="resources/assets/css/main5.css">
<link rel="stylesheet" href="resources/assets/css/main6.css">
<link rel="stylesheet" href="resources/assets/css/main7.css">
<link rel="stylesheet" href="resources/assets/css/main8.css">
<link rel="stylesheet" href="resources/assets/css/main8_1.css">

<link rel="stylesheet" href="resources/assets/css/main9.css">


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
				<a href="" class="logo"> <img width="100" height="30"
					src="resources/images/logo.png">
				</a>

				<div class="header_right_area">
					<nav class="header_nav">
						<ul class="nav sm_hidden md_hidden">

							<li class="nav_item"><a
								href="">정치</a></li>
							<li class="nav_item"><a
								href="">사회</a></li>
							<li class="nav_item"><a
								href="">경제</a></li>
							<li class="nav_item"><a
								href="">국제</a></li>

						</ul>

					</nav>
					<ul class="logout sm_hidden">
						<li><a href="${contextPath}/loginForm.do">로그인</a></li>
						<li><a href="${contextPath}/joinForm.do">회원가입</a></li>
					</ul>
					<div class="header_option_area">
						<button type="button" class="btn_search" onclick=""
							aria-label="검색">
							<i class="ico_search"></i>
						</button>
						<button type="button" class="btn_navbar" onclick="">
							<i class="ico_ham"></i>
						</button>
					</div>




				</div>

			</div>







		</header>

		<style>
@media ( min-width : 1024px) {
	.myfeed_subscribe_news .card_image {
		width: 205px;
	}
}
</style>
		<style>
</style>
		<main role="main" id="container">
			<section class="contents">

				<section class="myfeed_top_wrap"></section>

				<div class="row nologin">
					<div class="col_lg3">
						<section class="myfeed_local_news">
							<header class="title_wrap">
								<strong class="title">실시간 뉴스</strong>
							</header>
							<div class="subscribe_box2">
								<div class="rolling_box">
									<ul id="rolling_box">

										<li class="card_sliding" id="first"><a href=""></a></li>
										<li class="" id="second"><a href=""></a></li>
										<li class="" id="third"><a href=""></a></li>
									</ul>
								</div>


							</div>


							<header class="title_wrap">
								<strong class="title">언론사 별 뉴스</strong>
							</header>
							<div class="wrap2">
								<div class="tab_menu">
									<ul class="list">
										<li class="is_on"><span href="#tab1" class="ico_1 btn_cate" id="whtjs">&nbsp;</span>
											<a class="btn2">조선일보</a></li>
										<li><span href="#tab2" class="ico_2 btn_cate" id="wnddkd">&nbsp;</span> <a
											class="btn2">중앙일보</a></li>
										<li><span href="#tab3" class="ico_3 btn_cate" id="ehddk">&nbsp;</span> <a
											class="btn2" id="ehddk">동아일보</a></li>
										<li><span href="#tab4" class="ico_4 btn_cate" id="rudgid">&nbsp;</span> <a
											class="btn2" id="rudgid">경향신문</a></li>
										<li><span href="#tab5" class="ico_5 btn_cate" id="gks">&nbsp;</span> <a
											class="btn2" id="gks">한겨례</a></li>
									</ul>

									<div class="cont_area">
                                        <div id="tab1" class="cont" style="display:block;">
                                            <div class="list_item">
                                                <div class="flex_area">
                                                    <span href="#tab1" class="ico_1"
                                                        style="width: 55px; height: 55px;">&nbsp;</span>
                                                    <span style="font-weight: bold;">조선일보</span>
                                                </div>
										
											
												<div class="Pnews">
											
												
												<script type="text/javascript">
  
									  	  var csrfHeaderName = "${_csrf.headerName}";
									  	  var csrfTokenValue = "${_csrf.token}";
									  
									  	  $(document).ready(function(){
									  		  // HTML이 다 로딩되고 작동하는 함수
									  		
									  	var press = "조선일보";
									  	$(".btn_cate").on('click',function(e){
								  		  if(e.target.id === 'whtjs'){
								  			  press = "조선일보";
								  		  }else if(e.target.id === 'wnddkd'){
								  			  press = "중앙일보";
								  		  }else if(e.target.id === 'ehddk'){
								  			  press = "동아일보";
								  		  }else if(e.target.id === 'rudgid'){
								  			  press = "경향신문";
								  		  }else{
								  			  press = "한겨레";
								  		  }
								  			  console.log(press)
									  		  PList(press);
									  	})
									  	PList(press)
									  	
									  	  });
										  function PList(press){
											  
											  $.ajax({
												  url : "board/Pnews",
												  data : {
													  press : press
												  },
												  type : "get",
												  dataType : "json",
												  success : makeP,
												  error : function(){ alert("error"); }
											  });
										  }
											  	
										                        
										  function makeP(data){ 
											  console.log(data);
											  var listHtml = "";
											
											  $.each(data, function(index, obj){
											
												  	listHtml += "<p class='description short'>";
													listHtml += "<a href=''>"+obj.title+"</a>";
													listHtml += "</p>"
												  	
											  });
											  
											  $(".Pnews").html(listHtml);
											  
											 	/* $("#press_name").text(press); */
											  /* $("#cng_icon").attr('class','ico_2'); */
											  
										
										  }
									  </script>
												
											</div>


											</div>


										</div> 
										 <div id="tab2" class="cont">
											<div class="list_item">
												<div class="flex_area">
													<span href="#tab1" class="ico_2"
														style="width: 55px; height: 55px;">&nbsp;</span> <span
														style="font-weight: bold;">중앙일보</span>
												</div>
												
												
												<div class="Pnews">
												
											
											</div>


											</div>
										</div>
										<div id="tab3" class="cont">
											<div class="list_item">
												<div class="flex_area">
													<span href="#tab1" class="ico_3"
														style="width: 55px; height: 55px;">&nbsp;</span> <span
														style="font-weight: bold;">동아일보</span>
												</div>
											<div class="Pnews">
											
											</div>

											</div>
										</div>
										<div id="tab4" class="cont">
											<div class="list_item">
												<div class="flex_area">
													<span href="#tab1" class="ico_4"
														style="width: 55px; height: 55px;">&nbsp;</span> <span
														style="font-weight: bold;">경향신문</span>
												</div>
												
												<div class="Pnews">
											
											</div>


											</div>
										</div>
										<div id="tab5" class="cont">
											<div class="list_item">
												<div class="flex_area">
													<span href="#tab1" class="ico_5"
														style="width: 55px; height: 55px;">&nbsp;</span> <span
														style="font-weight: bold;">한겨례</span>
												</div>
												
												<div class="Pnews">
											
											</div>


											</div>
										</div>
									</div>
								</div>
							</div>






						</section>
						
					</div>
					
					
					<script type="text/javascript">
  
				  	  var csrfHeaderName = "${_csrf.headerName}";
				  	  var csrfTokenValue = "${_csrf.token}";
				  
				  	  $(document).ready(function(){
				  		  // HTML이 다 로딩되고 작동하는 함수
				  		  var category = ["정치", "경제", "사회", "국제"];
				  		  for(var i = 0; i < 4; i++){
				  		  		loadList(category[i]);
				  		  }
				  		  
				  	  });
				  
					  function loadList(category){
						
						  $.ajax({
							  url : "board/all",
							  data : {
								  category : category
							  },
							  type : "get",
							  dataType : "json",
							  success : makeView,
							  error : function(){ alert("error"); }
						  });
					  }
					                        
					  function makeView(data){ 
						  console.log(data);
						  var listHtml = "";
						 
						  $.each(data, function(index, obj){
							  	listHtml += "<div class='flex_area'>";
							  	listHtml += "<h2 class='headline'>";
								listHtml += "<a href=''>"+obj.title+"</a>";
								listHtml += "</h2>"
								listHtml += "</div>";
								listHtml += "<p class='description short'>";
								listHtml += "<a href='' class='gogo'>"+obj.summ_content+"</a></p>";
								  	
						  });
						  console.log(data[0].category);
						  if(data[0].category == "정치"){
						  	$("#view1").html(listHtml);
						  }else if(data[0].category == "경제"){
						  	$("#view3").html(listHtml);
						  }else if(data[0].category == "사회"){
						  	$("#view2").html(listHtml);
						  }else if(data[0].category == "국제"){
						  	$("#view4").html(listHtml);
						  } 
						  
						 
					
					  }
				  </script>

					<div class="col_lg9">
						<section class="myfeed_popular_subscribe">
							<header class="title_wrap">
								<strong class="title"><a href="">정치</a></strong>
							</header>
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<div class='swiper-slide'>
										<ul class='row card_list'>
											<li class='col_lg4 color_set1'>
												<div class='list_item view' id="view1">
													<ul class="row card_list">
														<li class='col_lg4 color_set1'>
															<div class='list_item'>

																
															</div> 

														</li>
												</div>
										</ul>
									</div>
									<header class="title_wrap">
                                        <strong class="title"><a href="">문화</a></strong>
                                    </header>
                              
                                    <div class="swiper-slide"> 
                                        <ul class="row card_list">
                                            <li class="col_lg4 color_set1">
                                                <div class="list_item view" id="view3">
                                                
                                                </div>
                                            </li>
                                       
                                          
                                        </ul>
                                    </div><!-- 정치 부분 DIV 끝-->
                                 
       
                                </div><!-- swiper-wrapper 끝 -->
                            </div><!--swiper-container 끝 -->
                        </section> <!--myfeed_popular_subscribe 끝 -->

                    </div> <!-- col_lg9끝 -->
                    <div class="col_lg9">
                        <section class="myfeed_popular_subscribe">
                            <header class="title_wrap">
                                <strong class="title"><a href="">사회</a></strong>
                            </header>
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <ul class="row card_list">
                                            <li class="col_lg4 color_set1">
                                                <div class="list_item view" id="view2">
                                                   

                                                </div>
                                            </li>
                                       
                                         
                                      
                                        </ul>
                                       
                                    </div>
                                    <header class="title_wrap">
                                        <strong class="title"><a href="">국제</a></strong>
                                    </header>
                                    <div class="swiper-slide">
                                        <ul class="row card_list">
                                            <li class="col_lg4 color_set1">
                                                <div class="list_item view" id="view4">
                                                    
                                                      

                                                </div>
                                            </li>
                                            
                                        
                                         
                                        </ul>
                                    </div>
       
                                </div>
                            </div>
                        </section>

                    </div>
                    <div class="col_lg4455">
                    </div>



                   
                    <header id="sticky" class="section_header_wrap m_unsticky">
                        <h1 class="section_title">삼삼한&nbsp;분석</h1>
                    </header>

                    <div class="col_lg3355">
                        <section class="myfeed_local_news">
                            <header class="title_wrap2">
                                <strong class="title">오늘의 키워드</strong>
                            </header>
                            <div class="wrap3">
                                <div class="tab_menu2">
                                    <ul class="list2">
                                         <li class="is_on2">
                                            <span href="#tab_1" class="ico1">&nbsp;</span>
                                            <a class="btn3">전체</a>
                                        </li>
                                        <li>
                                            <span href="#tab_2" class="ico2">&nbsp;</span>
                                            <a class="btn3">정치</a>
                                        </li>
                                        <li>
                                            <span href="#tab_3" class="ico3">&nbsp;</span>
                                            <a class="btn3">사회</a>
                                        </li>
                                        <li>
                                            <span href="#tab_4" class="ico4">&nbsp;</span>
                                            <a class="btn3">경제</a>
                                        </li>
                                        <li>
                                            <span href="#tab_5" class="ico5">&nbsp;</span>
                                            <a class="btn3">국제</a>
                                        </li>
                                     
                                    </ul>

                                    <div class="cont_area2">
                                        <div id="tab_1" class="cont2" style="display:block;">
                                                <svg href="#tab_1" width="700" height="300">
                                                    <g transform="translate(260,155)"><text class="category-keyword-text 전체_LC"
                                                            text-anchor="middle" transform="translate(-118,-37)rotate(0)scale(0.9)"
                                                            style="font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);">한국</text><text
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
                                                </svg>

                                            
                                         



                                        </div>
                                        <div id="tab_2" class="cont2">
                                            <svg href="#tab_1" width="700" height="300">
                                                <g transform="translate(260,155)"><text class="category-keyword-text 전체_LC"
                                                        text-anchor="middle" transform="translate(-118,-37)rotate(0)scale(0.9)"
                                                        style="font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);">승재국</text><text
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
                                            </svg>
                                        </div>
                                        <div id="tab_3" class="cont2">
                                            <svg href="#tab_1" width="700" height="300">
                                                <g transform="translate(260,155)"><text class="category-keyword-text 전체_LC"
                                                        text-anchor="middle" transform="translate(-118,-37)rotate(0)scale(0.9)"
                                                        style="font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);">승재굿</text><text
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
                                            </svg>
                                        </div>
                                        <div id="tab_4" class="cont2">
                                            <svg href="#tab_1" width="700" height="300">
                                                <g transform="translate(260,155)"><text class="category-keyword-text 전체_LC"
                                                        text-anchor="middle" transform="translate(-118,-37)rotate(0)scale(0.9)"
                                                        style="font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);">승재굳</text><text
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
                                            </svg>
                                        </div>
                                       <div id="tab_5" class="cont2">
                                            <svg href="#tab_1" width="700" height="300">
                                                <g transform="translate(260,155)"><text class="category-keyword-text 전체_LC"
                                                        text-anchor="middle" transform="translate(-118,-37)rotate(0)scale(0.9)"
                                                        style="font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);">승재굳</text><text
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
                                            </svg>
                                        </div>
                                        
                                    
                                    </div>
                                </div>
                            </div>

                        </section>

                    </div>
                    <div class="col_lg9915">
                        <section class="myfeed_popular_subscribe">
                            <header class="title_wrap2">
                                <strong class="title"><a href="">오늘의 뉴스 현황</a></strong>
                            </header>

                 
                            <div class="graph-status">
                        
                        
                        
                        
        
                                    <div class="info">
                                        <p class="date">
                                            2023년 06월 08일 (목)
                                        </p>
                                        <p class="total"><b id="news-issue-count">2,501</b>건</p>
                                    </div>
                                    <div style="width: 300px; height: 300px;">
    
    
                                        <canvas id="myChart" width="300" height="300"></canvas>
    
                                    </div>
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
                                                    '정치', '사회', '경제', '국제'
                                                ],
                                                datasets: [
                                                    { //데이터
                                                        labels : '정치',
            
                                                        fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                                                        data: [
                                                            300, 200, 250, 350 //x축 label에 대응되는 데이터 값
                                                        ],
                                                        backgroundColor: [
                                                            //색상
                                                            'rgba(255, 99, 132, 0.2)',
                                                            'rgba(54, 162, 235, 0.2)',
                                                            'rgba(255, 206, 86, 0.2)',
                                                            'rgba(75, 192, 192, 0.2)',
   
                                                        ],
                                                        borderColor: [
                                                            //경계선 색상
                                                            'rgba(255, 99, 132, 1)',
                                                            'rgba(54, 162, 235, 1)',
                                                            'rgba(255, 206, 86, 1)',
                                                            'rgba(75, 192, 192, 1)',
  
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
                                                            gridLines: {
                            display: false,
                        },
                                                            ticks: {
                                                                beginAtZero: true
                                                            }
                                                        }
                                                    ]
                                                }
                                            }
                                        });
                                    </script>



                            </section>
                            </div>

                            <div class="col_lg9915">
                                <section class="myfeed_popular_subscribe">
                                    <header class="title_wrap2">
                                        <strong class="title"><a href="">언론사 등록 현황</a></strong>
                                    </header>
        
                         
                                    <div class="graph-status">
                                
                                
                                
                                
                
                                            <div class="info">
                                                <p class="date">
                                                </p>
                                                <p class="total"><b id="news-issue-count"></b></p>
                                            </div>
                                            <div style="width: 300px; height: 300px;">
            
            
                                                <canvas id="myChart2" width="300" height="300"></canvas>
            
                                            </div>
                                 </div>
                                            <script type="text/javascript">

new Chart(document.getElementById("myChart2"), {
                                                    "type": "doughnut",
                                                    "data": {
                                                        "labels": ["조선일보", "중앙", "동아","한겨례","경향"],
                                                        "datasets": [{
                                                            "label": "My First Dataset",
                                                            "data": [300,50,100,200,60],
                                                            "backgroundColor": [
                                                                "rgb(255, 99, 132)",
                                                                "rgb(54, 162, 235)",
                                                                "rgb(255, 205, 86)",
                                                                 "rgb(0,0 , 56)",
                                                             "rgb(0, 205, 0)"

                                                            ]
                                                        }]
                                                    }
                                                });
                                            
                                            </script>
        
        
        
                                    </section>
                                    </div>







                </div>
        </main>


	
		<script>
            const tabList = document.querySelectorAll('.tab_menu .list li');
            const contents = document.querySelectorAll('.tab_menu .cont_area .cont')
            let activeCont = ''; // 현재 활성화 된 컨텐츠 (기본:#tab1 활성화)

            for (var i = 0; i < tabList.length; i++) {
                tabList[i].querySelector('.ico_' + (i + 1)).addEventListener('click', function (e) {
                    e.preventDefault();
                    for (var j = 0; j < tabList.length; j++) {
                        // 나머지 버튼 클래스 제거
                        tabList[j].classList.remove('is_on');

                        // 나머지 컨텐츠 display:none 처리
                        contents[j].style.display = 'none';
                    }

                    // 버튼 관련 이벤트
                    this.parentNode.classList.add('is_on');

                    // 버튼 클릭시 컨텐츠 전환
                    activeCont = this.getAttribute('href');
                    document.querySelector(activeCont).style.display = 'block';
                });
            }
        </script>
        
        
      <script>
    const tabList2 = document.querySelectorAll('.tab_menu2 .list2 li');
    const contents2 = document.querySelectorAll('.tab_menu2 .cont_area2 .cont2')
    let activeCont2 = ''; // 현재 활성화 된 컨텐츠 (기본:#tab1 활성화)
    

    for (var i = 0; i < tabList2.length; i++) {
        tabList2[i].querySelector('.ico' + (i + 1)).addEventListener('click', function (e) {
            e.preventDefault();
            for (var j = 0; j < tabList2.length; j++) {
                // 나머지 버튼 클래스 제거
                tabList2[j].classList.remove('is_on2');

                // 나머지 컨텐츠 display:none 처리
                contents2[j].style.display = 'none';
            }

            // 버튼 관련 이벤트
            this.parentNode.classList.add('is_on2');

            // 버튼 클릭시 컨텐츠 전환
            activeCont2 = this.getAttribute('href');
            document.querySelector(activeCont2).style.display = 'block';
            console.log(tabList2)
            console.log(contents2)

        });
    }
</script>




		<script>
        $(document).ready(function(){
    		  // HTML이 다 로딩되고 작동하는 함수
    		  QList();
    	  });
    
        function QList(){
  		  // BoardController에서 게시글 전체목록을 가져오는 기능
  		  // JavaScript에서 객체 표현법 {key:value} -> json
  		  $.ajax({
  			  url : "board/Qnews",
  			  type : "get",
  			  dataType : "json",
  			  success : makeQ,
  			  error : function(){ alert("error"); }
  		  });
  	  }
  	                           //           0              1         2
  	  function makeQ(data){ // data = [{title="하하"}, {     }, {     }]
  		  console.log(data);
  		var name = ["first","second","third"]; 
  	  	var title = [];
  		  // 반복문을 통해 게시글을 만들어주는 부분 (main부분)
  		   $.each(data, function(index, obj){
  			  
  			   title += obj.title+":";
  		  });
  			   	 
  			 title = title.split(":");
  			 
  			   	 for(var i = 0; i < 6; i++){
		  			 $("#"+name[i]+"").html(title[i]);
  			   		 
  			   	 }
  			 
  			 
  		 
  		   
  	  }
		  
	        let rollingData = [
 			   		 
	        ]    // 롤링할 데이터를 넣으면 됩니다 갯수 제한 없어요

            let timer = 3000 // 롤링되는 주기 입니다 (1000 => 1초)

            let first = document.getElementById('first'),
                second = document.getElementById('second'),
                third = document.getElementById('third')
            let move = 2
            let dataCnt = 1
            let listCnt = 1

            
            //위 선언은 따로 완전히 수정하지 않는 한 조정할 필요는 없습니다.

            first.children[0].innerHTML = rollingData[0]

            setInterval(() => {
                if (move == 2) {
                    first.classList.remove('card_sliding')
                    first.classList.add('card_sliding_after')

                    second.classList.remove('card_sliding_after')
                    second.classList.add('card_sliding')

                    third.classList.remove('card_sliding_after')
                    third.classList.remove('card_sliding')

                    move = 0
                } else if (move == 1) {
                    first.classList.remove('card_sliding_after')
                    first.classList.add('card_sliding')

                    second.classList.remove('card_sliding_after')
                    second.classList.remove('card_sliding')

                    third.classList.remove('card_sliding')
                    third.classList.add('card_sliding_after')

                    move = 2
                } else if (move == 0) {
                    first.classList.remove('card_sliding_after')
                    first.classList.remove('card_sliding')

                    second.classList.remove('card_sliding')
                    second.classList.add('card_sliding_after')

                    third.classList.remove('card_sliding_after')
                    third.classList.add('card_sliding')

                    move = 1
                }

                if (dataCnt < (rollingData.length - 1)) {
                    document.getElementById('rolling_box').children[listCnt].children[0].innerHTML = rollingData[dataCnt]
                    dataCnt++
                } else if (dataCnt == rollingData.length - 1) {
                    document.getElementById('rolling_box').children[listCnt].children[0].innerHTML = rollingData[dataCnt]
                    dataCnt = 0
                }

                if (listCnt < 2) {
                    listCnt++
                } else if (listCnt == 2) {
                    listCnt = 0
                }

                console.log(listCnt)
            }, timer);

        </script>
		<div id="footer" class="footer footer22">
			<div class="footer_wrap">
				<div class="logo lg_hidden">
					<a href="https://www.joongang.co.kr" data-evnt-ctg="area:중앙|내 구독"
						data-evnt-act="move:A40 푸터-사이트맵" data-evnt-lbl="footer logo"><span
						class="visually_hidden">The JoongAng</span></a>
				</div>


			</div>
			<footer>

				<div class="footer_info">
					<div class="footer_wrap">

						<div class="logo sm_hidden md_hidden">
							<a href="https://www.joongang.co.kr"><span
								class="visually_hidden">중앙일보</span></a>
						</div>
						<div class="corp">
							<p class="address">
								<span>주소 : 광주광역시 북구 북구맨 64-86 (우) 0573</span> <span>전화 :
									062-262-6486</span> <span>등록번호 : 광주 북 1818</span> <span>등록일자 :
									1996.01.16</span> <span>발행인 : 조승재</span> <span>편집인 : 조승재</span> <a
									href="https://www.joongang.co.kr/sitemap/index"
									class="sm_hidden md_hidden">전체 서비스</a>
							</p>
							<p class="address">
								<span>사업자명 : <a href="https://www.joongang.co.kr">삼삼뉴스㈜</a></span>
								<span>사업자등록번호 : 960-11-615524</span> <span>대표자명 : 윤선지</span> <em>통신판매업신고번호
									: 1996-광주북구-0116</em>
							</p>
							<p class="info sm_hidden md_hidden">
								삼삼뉴스의 모든 콘텐트(기사)는 저작권법의 보호를 받은바, 무단 전재, 복사, 배포 등을 금합니다.[<a
									href="https://bbs.joongang.co.kr/customercenter/faq?boardSeq=1481">저작권
									정책 및 콘텐트 문의</a>]
							</p>
							<p class="copyright">
								<strong>Copyright by SamSamNews Co., Ltd. All Rights
									Reserved</strong>
							</p>
						</div>
					</div>
				</div>
			</footer>
		</div>









		<script src="resources/assets/js/main.js"></script>
</body>

</html>

