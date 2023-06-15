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
<link rel="stylesheet" href="resources/assets/css/main3.css">
<link rel="stylesheet" href="resources/assets/css/main4.css">
<link rel="stylesheet" href="resources/assets/css/main5.css">
<link rel="stylesheet" href="resources/assets/css/main6.css">
<link rel="stylesheet" href="resources/assets/css/main7.css">
<link rel="stylesheet" href="resources/assets/css/main8.css">
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
							<li class="nav_item"><a href="">뉴스룸</a></li>
							<li class="nav_item"><a href="">정치</a></li>
							<li class="nav_item"><a href="">경제</a></li>
							<li class="nav_item"><a href="">사회</a></li>
							<li class="nav_item"><a href="boardMain.do">국제</a></li>

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
						  
						  	$(".view").html(listHtml);
							
					
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
												<div class='list_item view' >
													<ul class="row card_list">
														<li class='col_lg4 color_set1'>
															<div class='list_item'>

																
															</div> 

														</li>
												</div>
										</ul>
									</div>
									<header class="title_wrap">
										<strong class="title"><a href="">사회</a></strong>
									</header>

									<div class="swiper-slide">
										<ul class="row card_list">
											<li class="col_lg4 color_set1">
												<div class='list_item view'>
													

												</div>
											</li>



										</ul>
									</div>
								</div>
							</div>
						</section>

					</div>
					<div class="col_lg9">
						<section class="myfeed_popular_subscribe">
							<header class="title_wrap">
								<strong class="title"><a href="">경제</a></strong>
							</header>
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<ul class="row card_list">
											<li class="col_lg4 color_set1">
												<div class='list_item view'>
													

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
												<div class='list_item view'>
													

												</div>
											</li>



										</ul>
									</div>

								</div>
							</div>
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

