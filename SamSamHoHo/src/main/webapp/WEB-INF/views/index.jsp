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
<link rel="stylesheet" href="resources/assets/css/search1.css">


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

.rolling_box ul li a {
	font-size: 28px;
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
				<a href = "${contextPath}" class="logo"> <img width="100" height="30"
					src="resources/images/logo.png">
				</a>

				<div class="header_right_area">
					<nav class="header_nav">
						<ul class="nav sm_hidden md_hidden">

							<li class="nav_item"><a 
								href="${contextPath}/newsListForm.do">정치</a></li>
							<li class="nav_item"><a 
								href="${contextPath}/newsListForm.do">사회</a></li>
							<li class="nav_item"><a 
								href="${contextPath}/newsListForm.do">경제</a></li>
							<li class="nav_item"><a 
								href="${contextPath}/newsListForm.do">국제</a></li>

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
	
					</div>
					                    <div class="Ngnb_search _search_content is_hidden">
                        <form action="" class="search_form"
                          accept-charset="utf-8">
                            <div id="u_hs" class="u_hs ">
                                <div class="u_hsw">
                                    <div class="u_itw">
                                        <input name="query" title="검색어 입력" class="u_it _search_input"
                                            placeholder="뉴스 검색" maxlength="255" autocomplete="off"  onkeyup="filter()" type="text" id="u_it">
                                        <button type="submit" class="u_hssbt u_hssbt_ss _submit_btn " onclick=""><span
                                                class="u_vc">뉴스검색</span></button>
                                    </div>
                                </div>
                                <button type="button" class="u_hssbt_close _close_btn " onclick="">닫기</button>
                            </div>
                            <div class="u_atcp_wrap">
                                <div class="u_sggt_wrap2 _search_history">
                                    <div class="sggt_fixer">
                                        <div class="container55">

                                            <div class="item33">
                                                <span class="icon">A</span>
                                                <span class="itemsname">Apple</span>
                                            </div>
                    
                                            <div class="item33">
                                                <span class="icon">O</span>
                                                <span class="itemsname">Orange</span>
                                            </div>
                    
                                            <div class="item33">
                                                <span class="icon">M</span>
                                                <span class="itemsname">Mandarin</span>
                                            </div>
                    
                                            <div class="item33">
                                                <span class="icon">S</span>
                                                <span class="itemsname">Strawberry</span>
                                            </div>
                    
                                            <div class="item33">
                                                <span class="icon">W</span>
                                                <span class="itemsname">Watermelon</span>
                                            </div>
                    
                                            <div class="item33">
                                                <span class="icon">G</span>
                                                <span class="itemsname">Grape</span>
                                            </div>
                    
                                            <div class="item33">
                                                <span class="icon">P</span>
                                                <span class="itemsname">Pear</span>
                                            </div>
                    
                                            <div class="item33">
                                                <span class="icon">C</span>
                                                <span class="itemsname">Cherry</span>
                                            </div>
                                        </div>
                                      
                                    </div>
                                </div>

            
                            </div>
                        </form>
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

										<li class="card_sliding" id="first"><a href='' ></a></li>
										<li class="" id="second"><a href=''></a></li>
										<li class="" id="third"><a href=''></a></li>
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
													listHtml += "<a href='${contextPath}/newsdetailForm.do?idx=" + obj.idx + "'>"+obj.title+"</a>";
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
								listHtml += "<a href='${contextPath}/newsdetailForm.do?idx=" + obj.idx + "'>"+obj.title+"</a>";
								listHtml += "</h2>"
								listHtml += "</div>";
								listHtml += "<p class='description short'>";
								listHtml += "<a href='${contextPath}/newsdetailForm.do' class='gogo'>"+obj.summ_content+"</a></p>";
								  	
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
                                        <strong class="title"><a href="">경제</a></strong>
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
                                            <a class="btn3" id="all">전체</a>
                                        </li>
                                        <li>
                                            <span href="#tab_2" class="ico2">&nbsp;</span>
                                            <a class="btn3" id="pol">정치</a>
                                        </li>
                                        <li>
                                            <span href="#tab_3" class="ico3">&nbsp;</span>
                                            <a class="btn3" id="soc">사회</a>
                                        </li>
                                        <li>
                                            <span href="#tab_4" class="ico4">&nbsp;</span>
                                            <a class="btn3" id="eco">경제</a>
                                        </li>
                                        <li> 
                                            <span href="#tab_5" class="ico5">&nbsp;</span>
                                            <a class="btn3" id="inter">국제</a>
                                        </li>
                                     
                                    </ul>
																
									
                                    <div class="cont_area2">
                                        <div id="tab_1" class="cont2" style="display:block;">
                                                <svg href="#tab_1" width="700" height="300">                              
                                                	<g transform= "translate(260,155)" id="keywordlist1">
	                                       				
                                                    </g>
                                                </svg>

                                        </div>
                                        <div id="tab_2" class="cont2">
                                            <svg href="#tab_1" width="700" height="300">
                                                <g transform="translate(260,155)" id="keywordlist2">
                                               
                                                </g>
                                            </svg>
                                        </div>
                                        <div id="tab_3" class="cont2">
                                            <svg href="#tab_1" width="700" height="300">
                                                <g transform="translate(260,155)" id="keywordlist3">
                                                </g>
                                            </svg>
                                        </div>
                                        <div id="tab_4" class="cont2">
                                            <svg href="#tab_1" width="700" height="300">
                                                <g transform="translate(260,155)" id="keywordlist4">
                                                </g>
                                            </svg>
                                        </div>
                                      
                                       <div id="tab_5" class="cont2">
                    <svg href="#tab_1" width="700" height="300">
                                                <g transform="translate(260,155)" id="keywordlist5">
                                                </g>
                                            </svg>
                                        </div>
                                        
                                      <script> 
                                    /*     	var tab_5 = document.querySelectorAll('#tab_5 text');
                                        	console.log("-------------------------");
                                        	
                                        	console.log(tab_5[0].innerHTML);
                                        	
                                        	for(var i=0; i<tab_5.length; i++){
                                        		tab_5[0].innerHTML = data[]DB에서가지고온값
                                        	} */
                                        </script>
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
                        
                        
                        
                        
        
                                    <div class="info" id="barView">
                                       
                                    </div>
                                    <div style="width: 300px; height: 300px;">
    
    
                                        <canvas id="myChart" width="300" height="300"></canvas>
    
                                    </div>
                         </div>
                                    <script type="text/javascript">
                                    
                                    
                                    
                                    BarList();
                                    function BarList(){
                                   
                                    	$.ajax({
              							  url : "board/BarPress",
              							  type : "get",
              							  dataType : "json",
              							  success : makeBar,
              							  error : function(){ alert("error"); }
              						  });
                                    	
                                    	
                                    } 
                                   
                                    function makeBar(data){
                                    	 var num_cnt2 = [];
                                         var cate_cnt = [];
                                    	 var date;
                                       	 var total;
      								 for(var i = 0; i < data.length; i++){
      									 num_cnt2 += data[i].count+",";
      									cate_cnt += data[i].category+","; 
      									date = data[0].date;
      									total = data[0].total_count;
      								 }
      								 	
      									var nu2 = num_cnt2.split(",");
      									var pr2 = cate_cnt.split(",");
      									pr2.pop();
      									nu2.pop();
                                       	console.log(pr2);
                                       	console.log(nu2);
      									
                                       	listHtml = "";
                                       	listHtml += "<p class='date'>"+date+"</p>";
                                       	listHtml += "<p class='total'><b id='news-issue-count'>"+total+"</b>건</p>";
                                        
                                    	$("#barView").html(listHtml);
                                   	 
                                   	
                                        var context = document
                                            .getElementById('myChart')
                                            .getContext('2d'); 
                                        var myChart = new Chart(context, {
                                            type: 'bar', // 차트의 형태
                                            data: { // 차트에 들어갈 데이터
                                                labels: pr2,
                                                datasets: [
                                                    { //데이터
                                                         labels : '경제', 
            
                                                        fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                                                        data: nu2,
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
                                    }
                                    
                                    
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
                                            cntList();
                                            function cntList(){
                                           
                                            	$.ajax({
                      							  url : "board/CntPress",
                      							  type : "get",
                      							  dataType : "json",
                      							  success : makeChart,
                      							  error : function(){ alert("error"); }
                      						  });
                                            	
                                            	
                                            } 
                                           
                                            function makeChart(data){
                                            	 var num_cnt = [];
                                                 var press_cnt= [];
                                            	
	                                           	
	          								 for(var i = 0; i < data.length; i++){
	          									 num_cnt += data[i].count+",";
	          									 press_cnt += data[i].press+","; 
	          									
	          								 }
	          								 	
	          									var nu = num_cnt.split(",");
	          									var pr = press_cnt.split(",");
	          									pr.pop();
	                                           	console.log(pr);
	          									new Chart(document.getElementById("myChart2"), {
                                                    "type": "pie",
                                                    "data": {
                                                        "labels": pr,
                                                        "datasets": [{
                                                            "label": "My First Dataset",
                                                            "data": nu,
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
	          									
	                                           	 
	                                           	 
                                           	 
                                           	
                                            }
												
												
												  
                                            
                                            </script>
        
        
        
                                    </section>
                                    </div>







                </div>
        </main>
        
         <script>
		    const tabList2 = document.querySelectorAll('.tab_menu2 .list2 li');
		    const contents2 = document.querySelectorAll('.tab_menu2 .cont_area2 .cont2');
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
        
        
        
                 	<script type="text/javascript">                                                		
															//makeKey(category);
																
																var liElement = $('.list2 li');
																liElement.click(function(e) {
  																var idValue = $(this).find('.btn3').attr('id');
																//btn3.addEventListener('click',function(e){
																// console.log(e.target.id)
																console.log(this.id)
																console.log("88888888")
																console.log(idValue)
														  		  if(idValue === 'all'){
														  			category = "전체";
														  		  }else if(idValue === 'pol'){
														  			category = "정치";
														  		  }else if(idValue === 'soc'){
														  			category = "사회";
														  		  }else if(idValue === 'eco'){
														  			category = "경제";
														  		  }else{
														  			category = "국제"; 
														  		  }
														  		  makeKey(category);
														  		 
															  	}); 
															function makeKey(category){
																//console.log("카테고리 : "+category)
																 $.ajax({
																	  url : "board/keyword_fifty",
																	  data : {
																		  category : category
																	  },
																	  type : "get",
																	  dataType : "json",
																	  success :function(data){makeKList(data)},
																		  
																	  error : function(){ alert("error"); }
																  });
																																														
															}	
															function makeKList(data){
																console.log("mkList함수 실행");
																console.log(data)
																console.log(data[0].category)
																// 순위별 RGB 값을 정의
																var colors = [
<<<<<<< HEAD
																  { rank: 1, rgb: 'rgb(255, 99, 72)', fsize:40 },    // blue
																  { rank: 2, rgb: 'rgb(255, 99, 72)', fsize:39 },    
																  { rank: 3, rgb: 'rgb(255, 99, 72)', fsize:38 },    
																  { rank: 4, rgb: 'rgb(255, 99, 72)', fsize:37 },
																  
																  { rank: 5, rgb: 'rgb(83, 82, 237)', fsize:36 },    // red
																  { rank: 6, rgb: 'rgb(83, 82, 237)', fsize:35 },    
																  { rank: 7, rgb: 'rgb(83, 82, 237)', fsize:34 },   
																  { rank: 8, rgb: 'rgb(83, 82, 237)', fsize:33 },
																  
																  { rank: 9, rgb: 'rgb(120, 224, 143)', fsize:32 },   // em
																  { rank: 10, rgb: 'rgb(120, 224, 143)', fsize:31 },   
																  { rank: 11, rgb: 'rgb(120, 224, 143)', fsize:30 },   
																  { rank: 12, rgb: 'rgb(120, 224, 143)', fsize:29 },
																  
																  { rank: 13, rgb: 'rgb(255, 165, 2)', fsize:28 },   // y
																  { rank: 14, rgb: 'rgb(255, 165, 2)', fsize:27 },   
																  { rank: 15, rgb: 'rgb(255, 165, 2)', fsize:26 },   
																  { rank: 16, rgb: 'rgb(255, 165, 2)', fsize:25 },   
																  { rank: 17, rgb: 'rgb(247, 142, 0)', fsize:24 },
																  
																  { rank: 18, rgb: 'rgb(123, 237, 159)', fsize:23 },   // 에메랄드
																  { rank: 19, rgb: 'rgb(123, 237, 159)', fsize:22 },   // 에메랄드
																  { rank: 20, rgb: 'rgb(123, 237, 159)', fsize:21 },   // 에메랄드
																  { rank: 21, rgb: 'rgb(123, 237, 159)', fsize:20 },   // 에메랄드
																  
																  { rank: 22, rgb: 'rgb(30, 144, 255)', fsize:19 },   // 에메랄드
																  { rank: 23, rgb: 'rgb(30, 144, 255)', fsize:18 },   // 에메랄드
																  { rank: 24, rgb: 'rgb(30, 144, 255)', fsize:17 },   // 에메랄드
																  { rank: 25, rgb: 'rgb(30, 144, 255)', fsize:16 },   // 에메랄드
																  
																  { rank: 26, rgb: 'rgb(116, 125, 140)', fsize:15 },   // 보라색
																  { rank: 27, rgb: 'rgb(116, 125, 140)', fsize:14 },   // 보라색
																  { rank: 28, rgb: 'rgb(116, 125, 140)', fsize:13 },   // 보라색
																  { rank: 29, rgb: 'rgb(116, 125, 140)', fsize:12 },   // 보라색
																  { rank: 30, rgb: 'rgb(116, 125, 140)', fsize:11 },   // 보라색
=======
																  { rank: 1, rgb: 'rgb(255, 99, 72)' },    // blue
																  { rank: 2, rgb: 'rgb(255, 99, 72)' },    
																  { rank: 3, rgb: 'rgb(255, 99, 72)' },    
																  { rank: 4, rgb: 'rgb(255, 99, 72)' },    
																  
																  { rank: 5, rgb: 'rgb(83, 82, 237)' },    // red
																  { rank: 6, rgb: 'rgb(83, 82, 237)' },    
																  { rank: 7, rgb: 'rgb(83, 82, 237)' },   
																  { rank: 8, rgb: 'rgb(83, 82, 237)' },   
																  
																  { rank: 9, rgb: 'rgb(120, 224, 143)' },   // em
																  { rank: 10, rgb: 'rgb(120, 224, 143)' },   
																  { rank: 11, rgb: 'rgb(120, 224, 143)' },   
																  { rank: 12, rgb: 'rgb(120, 224, 143)' },   
																  
																  { rank: 13, rgb: 'rgb(255, 165, 2)' },   // y
																  { rank: 14, rgb: 'rgb(255, 165, 2)' },   
																  { rank: 15, rgb: 'rgb(255, 165, 2)' },  
																  { rank: 16, rgb: 'rgb(255, 165, 2)' },   
																  { rank: 17, rgb: 'rgb(255, 165, 2)' },   
																  
																  { rank: 18, rgb: 'rgb(123, 237, 159)' },   // 에메랄드
																  { rank: 19, rgb: 'rgb(123, 237, 159)' },   // 에메랄드
																  { rank: 20, rgb: 'rgb(123, 237, 159)' },   // 에메랄드
																  { rank: 21, rgb: 'rgb(123, 237, 159)' },   // 에메랄드
																  
																  { rank: 22, rgb: 'rgb(30, 144, 255)' },   // 에메랄드
																  { rank: 23, rgb: 'rgb(30, 144, 255)' },   // 에메랄드
																  { rank: 24, rgb: 'rgb(30, 144, 255)' },   // 에메랄드
																  { rank: 25, rgb: 'rgb(30, 144, 255)' },   // 에메랄드
																  
																  { rank: 26, rgb: 'rgb(116, 125, 140)' },   // 보라색
																  { rank: 27, rgb: 'rgb(116, 125, 140)' },   // 보라색
																  { rank: 28, rgb: 'rgb(116, 125, 140)' },   // 보라색
																  { rank: 29, rgb: 'rgb(116, 125, 140)' },   // 보라색
																  { rank: 30, rgb: 'rgb(116, 125, 140)' },   // 보라색
>>>>>>> branch 'master' of https://github.com/SeungJaeJo/SSamSSamHoHo.git
																  
																];
																
																
																// 정렬된 데이터에 순위과 RGB 값을 할당
																var rank = 1;
																var prevValue = data[0].count;
																for (var i = 0; i < data.length; i++) {
																  var currentData = data[i]
																  if (currentData.count !== prevValue) {
																	rank++;
																  }
																  currentData.rank = rank;
																  currentData.rgb = colors[rank - 1].rgb;
																  currentData.fsize = colors[rank - 1].fsize;
																  prevValue = currentData.count;
																}
																
																var listHtml = "";
																if(data[0].category === "전체"){
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-130,-60)rotate(0)scale(0.9)' style='font-size: "+(data[0].fsize)+"px; font-weight: bold; fill: "+data[0].rgb+";'>"+data[0].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-41,10)rotate(0)scale(0.9)' style='font-size: "+(data[1].fsize)+"px; font-weight: bold; fill: "+data[1].rgb+";'>"+data[1].keyword+"</text>";	
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-119,31)rotate(0)scale(0.9)' style='font-size: "+(data[2].fsize)+"px; font-weight: bold; fill: "+data[2].rgb+";'>"+data[2].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(54,29)rotate(0)scale(0.9)' style='font-size: "+(data[3].fsize)+"px; font-weight: bold; fill: "+data[3].rgb+";'>"+data[3].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-20,-40)rotate(0)scale(0.9)' style='font-size: "+(data[4].fsize)+"px; font-weight: bold; fill: "+data[4].rgb+";'>"+data[4].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(23,-8)rotate(0)scale(0.9)' style='font-size: "+(data[5].fsize)+"px; font-weight: bold; fill: "+data[5].rgb+";'>"+data[5].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(8,-71)rotate(0)scale(0.9)' style='font-size: "+(data[6].fsize)+"px; font-weight: bold; fill: "+data[6].rgb+";'>"+data[6].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(77,-11)rotate(0)scale(0.9)' style='font-size: "+(data[7].fsize)+"px; font-weight: bold; fill: "+data[7].rgb+";'>"+data[7].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(171,-10)rotate(0)scale(0.9)' style='font-size: "+(data[8].fsize)+"px; font-weight: bold; fill: "+data[8].rgb+";'>"+data[8].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(188,-42)rotate(0)scale(0.9)' style='font-size: "+(data[9].fsize)+"px; font-weight: bold; fill: "+data[9].rgb+";'>"+data[9].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(100,-90)rotate(0)scale(0.9)' style='font-size: "+(data[10].fsize)+"px; font-weight: bold; fill: "+data[10].rgb+";'>"+data[10].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-15,60)rotate(0)scale(0.9)' style='font-size: "+(data[11].fsize)+"px; font-weight: bold; fill: "+data[11].rgb+";'>"+data[11].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(100,-60)rotate(0)scale(0.9)' style='font-size: "+(data[12].fsize)+"px; font-weight: bold; fill: "+data[12].rgb+";'>"+data[12].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(109,13)rotate(0)scale(0.9)' style='font-size: "+(data[13].fsize)+"px; font-weight: bold; fill: "+data[13].rgb+";'>"+data[13].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(63,104)rotate(0)scale(0.9)' style='font-size: "+(data[14].fsize)+"px; font-weight: bold; fill: "+data[14].rgb+";'>"+data[14].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-155,80)rotate(0)scale(0.9)' style='font-size: "+(data[15].fsize)+"px; font-weight: bold; fill: "+data[15].rgb+";'>"+data[15].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(75,70)rotate(0)scale(0.9)' style='font-size: "+(data[16].fsize)+"px; font-weight: bold; fill: "+data[16].rgb+";'>"+data[16].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-74,-69)rotate(0)scale(0.9)' style='font-size: "+(data[17].fsize)+"px; font-weight: bold; fill: "+data[17].rgb+";'>"+data[17].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(200,-69)rotate(0)scale(0.9)' style='font-size: "+(data[18].fsize)+"px; font-weight: bold; fill: "+data[18].rgb+";'>"+data[18].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-110,-30)rotate(0)scale(0.9)' style='font-size: "+(data[19].fsize)+"px; font-weight: bold; fill: "+data[19].rgb+";'>"+data[19].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-150,-100)rotate(0)scale(0.9)' style='font-size: "+(data[20].fsize)+"px; font-weight: bold; fill: "+data[20].rgb+";'>"+data[20].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(109,41)rotate(0)scale(0.9)' style='font-size: "+(data[21].fsize)+"px; font-weight: bold; fill: "+data[21].rgb+";'>"+data[21].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(162,59)rotate(0)scale(0.9)' style='font-size: "+(data[22].fsize)+"px; font-weight: bold; fill: "+data[22].rgb+";'>"+data[22].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(124,-35)rotate(0)scale(0.9)' style='font-size: "+(data[23].fsize)+"px; font-weight: bold; fill: "+data[23].rgb+";'>"+data[23].keyword+"</text>";
																listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-50,98)rotate(0)scale(0.9)' style='font-size: "+(data[24].fsize)+"px; font-weight: bold; fill: "+data[24].rgb+";'>"+data[24].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(141,76)rotate(0)scale(0.9)' style='font-size: "+(data[25].fsize)+"px; font-weight: bold; fill: "+data[25].rgb+";'>"+data[25].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(19,48)rotate(0)scale(0.9)' style='font-size: "+(data[26].fsize)+"px; font-weight: bold; fill: "+data[26].rgb+";'>"+data[26].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-101,80)rotate(0)scale(0.9)' style='font-size: "+(data[27].fsize)+"px; font-weight: bold; fill: "+data[27].rgb+";'>"+data[27].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-175,-33)rotate(0)scale(0.9)' style='font-size: "+(data[28].fsize)+"px; font-weight: bold; fill: "+data[28].rgb+";'>"+data[28].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-35,103)rotate(0)scale(0.9)' style='font-size: "+(data[29].fsize)+"px; font-weight: bold; fill: "+data[29].rgb+";'>"+data[29].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-202,40)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[30].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(13,-37)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[31].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(104,81)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[32].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(54,-53)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[33].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-45,-90)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[34].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-44,55)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[35].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-38,40)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[36].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-90,-22)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[37].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-157,9)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[38].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(212,49)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[39].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(128,-75)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[40].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(11,26)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[41].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(62,118)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[42].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-174,77)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[43].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-73,-38)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[44].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-130,75)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[45].keyword+"</text>";
																//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(163,9)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[46].keyword+"</text>";													
																}else{
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-118,-37)rotate(0)scale(0.9)' style='font-size: "+(data[0].fsize)+"px; font-weight: bold; fill: "+data[0].rgb+";'>"+data[0].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-41,10)rotate(0)scale(0.9)' style='font-size: "+(data[1].fsize)+"px; font-weight: bold; fill: "+data[1].rgb+";'>"+data[1].keyword+"</text>";	
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-99,31)rotate(0)scale(0.9)' style='font-size: "+(data[2].fsize)+"px; font-weight: bold; fill: "+data[2].rgb+";'>"+data[2].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(54,29)rotate(0)scale(0.9)' style='font-size: "+(data[3].fsize)+"px; font-weight: bold; fill: "+data[3].rgb+";'>"+data[3].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-28,-30)rotate(0)scale(0.9)' style='font-size: "+(data[4].fsize)+"px; font-weight: bold; fill: "+data[4].rgb+";'>"+data[4].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(23,-8)rotate(0)scale(0.9)' style='font-size: "+(data[5].fsize)+"px; font-weight: bold; fill: "+data[5].rgb+";'>"+data[5].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(28,-71)rotate(0)scale(0.9)' style='font-size: "+(data[6].fsize)+"px; font-weight: bold; fill: "+data[6].rgb+";'>"+data[6].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(77,-11)rotate(0)scale(0.9)' style='font-size: "+(data[7].fsize)+"px; font-weight: bold; fill: "+data[7].rgb+";'>"+data[7].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(171,-10)rotate(0)scale(0.9)' style='font-size: "+(data[8].fsize)+"px; font-weight: bold; fill: "+data[8].rgb+";'>"+data[8].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(188,-42)rotate(0)scale(0.9)' style='font-size: "+(data[9].fsize)+"px; font-weight: bold; fill: "+data[9].rgb+";'>"+data[9].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(103,-90)rotate(0)scale(0.9)' style='font-size: "+(data[10].fsize)+"px; font-weight: bold; fill: "+data[10].rgb+";'>"+data[10].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-15,40)rotate(0)scale(0.9)' style='font-size: "+(data[11].fsize)+"px; font-weight: bold; fill: "+data[11].rgb+";'>"+data[11].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(180,-79)rotate(0)scale(0.9)' style='font-size: "+(data[12].fsize)+"px; font-weight: bold; fill: "+data[12].rgb+";'>"+data[12].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(109,13)rotate(0)scale(0.9)' style='font-size: "+(data[13].fsize)+"px; font-weight: bold; fill: "+data[13].rgb+";'>"+data[13].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(63,104)rotate(0)scale(0.9)' style='font-size: "+(data[14].fsize)+"px; font-weight: bold; fill: "+data[14].rgb+";'>"+data[14].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-155,50)rotate(0)scale(0.9)' style='font-size: "+(data[15].fsize)+"px; font-weight: bold; fill: "+data[15].rgb+";'>"+data[15].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(81,59)rotate(0)scale(0.9)' style='font-size: "+(data[16].fsize)+"px; font-weight: bold; fill: "+data[16].rgb+";'>"+data[16].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-44,-69)rotate(0)scale(0.9)' style='font-size: "+(data[17].fsize)+"px; font-weight: bold; fill: "+data[17].rgb+";'>"+data[17].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(130,-69)rotate(0)scale(0.9)' style='font-size: "+(data[18].fsize)+"px; font-weight: bold; fill: "+data[18].rgb+";'>"+data[18].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-101,-1)rotate(0)scale(0.9)' style='font-size: "+(data[19].fsize)+"px; font-weight: bold; fill: "+data[19].rgb+";'>"+data[19].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-132,-82)rotate(0)scale(0.9)' style='font-size: "+(data[20].fsize)+"px; font-weight: bold; fill: "+data[20].rgb+";'>"+data[20].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(109,41)rotate(0)scale(0.9)' style='font-size: "+(data[21].fsize)+"px; font-weight: bold; fill: "+data[21].rgb+";'>"+data[21].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(162,59)rotate(0)scale(0.9)' style='font-size: "+(data[22].fsize)+"px; font-weight: bold; fill: "+data[22].rgb+";'>"+data[22].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(124,-25)rotate(0)scale(0.9)' style='font-size: "+(data[23].fsize)+"px; font-weight: bold; fill: "+data[23].rgb+";'>"+data[23].keyword+"</text>";
																	listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(5,98)rotate(0)scale(0.9)' style='font-size: "+(data[24].fsize)+"px; font-weight: bold; fill: "+data[24].rgb+";'>"+data[24].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(141,76)rotate(0)scale(0.9)' style='font-size: "+(data[25].fsize)+"px; font-weight: bold; fill: "+data[25].rgb+";'>"+data[25].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(19,48)rotate(0)scale(0.9)' style='font-size: "+(data[26].fsize)+"px; font-weight: bold; fill: "+data[26].rgb+";'>"+data[26].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-101,80)rotate(0)scale(0.9)' style='font-size: "+(data[27].fsize)+"px; font-weight: bold; fill: "+data[27].rgb+";'>"+data[27].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-175,-33)rotate(0)scale(0.9)' style='font-size: "+(data[28].fsize)+"px; font-weight: bold; fill: "+data[28].rgb+";'>"+data[28].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-35,103)rotate(0)scale(0.9)' style='font-size: "+(data[29].fsize)+"px; font-weight: bold; fill: "+data[29].rgb+";'>"+data[29].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-202,40)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[30].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(13,-37)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[31].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(104,81)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[32].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(54,-53)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[33].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-45,-90)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[34].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-44,55)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[35].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-38,40)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[36].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-90,-22)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[37].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-157,9)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[38].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(212,49)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[39].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(128,-75)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[40].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(11,26)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[41].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(62,118)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[42].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-174,77)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[43].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-73,-38)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[44].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(-130,75)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[45].keyword+"</text>";
																	//listHtml += "<text class='category-keyword-text 전체_LC' text-anchor='middle' transform='translate(163,9)rotate(0)scale(0.9)' style='font-size: 28px; font-weight: bold; fill: rgb(35, 196, 174);'>"+data[46].keyword+"</text>";
																	
																}
																if(data[0].category === '전체'){
																	$("#keywordlist1").html(listHtml);
																}else if(data[0].category === '정치'){
																	$("#keywordlist2").html(listHtml);
																}else if(data[0].category === '사회'){
																	$("#keywordlist3").html(listHtml);
																}else if(data[0].category === '경제'){
																	$("#keywordlist4").html(listHtml);
																}else{
																	$("#keywordlist5").html(listHtml);
																}
																
																
															}									
	                            						</script>


	
		<script>
	      const tabList = document.querySelectorAll('.tab_menu .list li')
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

                //console.log(listCnt)
            }, timer);

        </script>
        
        
        <script>






   



            $(document).ready(function () {
                $('.btn_sub').on('click', function () {
                    $('.modal-wrapper').toggleClass('open');
                    $('.ct_wrap').toggleClass('blur-it');
                    console.log("헤헤");

                    return false;
                });
            });

            $(document).ready(function () {
                $('.btn_sub2').on('click', function () {
                    $('.modal-wrapper2').toggleClass('open2');
                    $('.ct_wrap').toggleClass('blur-it');

                    console.log("헤헤");

                    return false;
                });
            });


            $(document).ready(function () {
            $('._close_btn ').on('click', function () {
                $('._search_content').toggleClass('is_hidden');

                console.log("헤헤");

                return false;
            });
        });

        $(document).ready(function () {
                $('.ico_search').on('click', function () {
                    $('._search_content').toggleClass('is_hidden');
                    console.log("호호헤");

                    return true;
                });
            });


        function filter() {

            var value, name, item, i, aa;

            value = document.getElementById("u_it").value.toUpperCase();
            item = document.getElementsByClassName("item33");
            for (i = 0; i < item.length; i++) {
                name = item[i].getElementsByClassName("itemsname");
                if (name[0].innerHTML.toUpperCase().indexOf(value) > -1) {
                    aa = name[0].innerHTML.toUpperCase().indexOf(value)
                    console.log(aa)
                    item[i].style.display = "flex";
                } else {
                    item[i].style.display = "none";
                }
            }
        }

        makeKey("전체");
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

