<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Template</title>
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="resources/assets/css/news1.css">
  	<link rel="stylesheet" href="resources/assets/css/newsroom1.css">
	<link rel="stylesheet" href="resources/assets/css/newsroom2.css">
	<link rel="stylesheet" href="resources/assets/css/newsroom3.css">
	<link rel="stylesheet" href="resources/assets/css/modal.css">
	<link rel="stylesheet" href="resources/assets/css/chat.css">
	<link rel="stylesheet" href="resources/assets/css/sidemenu1.css">
	<link rel="stylesheet" href="resources/assets/css/sidemenu2.css">
	<link rel="stylesheet" href="resources/assets/css/search1.css">
	<link rel="stylesheet" href="resources/assets/css/loading.css">
</head>

<script type="text/javascript">
	  	 $(document).ready(function(){
	  		 
	  		// url에서 idx값 받아오는 함수
	 	  	function searchParam(key) {
	 		  	  return new URLSearchParams(location.search).get(key);
			};
	 		  	
			var newsID = searchParam("idx")
			console.log("akwdk???",newsID)
			
			function getNewsFull(newsID){
				$.ajax({
					url : "board/getNewsFull",
					data : { "idx":newsID }, 
					type : "get",
					dataType : "json",
					success : setNewsFull,
					error : function(){ alert("error"); }
				});
			 }
			getNewsFull(newsID)
			 
			
			 
			function setNewsFull(data){
				console.log("set",data)
				
				// 요약기사, 원문 제목
				$("#title_area span").text(data[0].title)
				// 요약기사 날짜
				$('#date').text(data[0].date)
				// 요약기사 기자
				$('#reporter').text(data[0].reporter)
				// 요약기사 내용
				$('#dic_area').text(data[0].summ_content)
				
				// 원문 날짜
				$('#zz2 .media_end_head_info_datestamp_bunch span').text(data[0].date)
				// 원문 기자
				$('#zz2 .media_end_head_journalist em').text(data[0].reporter)
				// 원문 내용
				$('#zz2 #contents #newsct_article #dic_area').text(data[0].content)
				 
				 
				 // 언론사에 따라 다른 로고 띄우기
				var pressName = data[0].press
				if(pressName=="중앙일보") {
					$("#pressName > img").attr("src", "resources/images/joongang.png")
				}else if(pressName=="동아일보"){
					$("#pressName > img").attr("src", "resources/images/donga.jpg")
				}else if(pressName=="한겨레"){
					$("#pressName > img").attr("src", "resources/images/han.jpg")
				}else if(pressName=="조선일보"){
					$("#pressName > img").attr("src", "resources/images/chosun.png")
				}else if(pressName=="경향신문"){
					$("#pressName > img").attr("src", "resources/images/kh.png")
				}
				 
				 
				// 언론사 이름 띄우기
				$('#ct_wrap > div > div.outside_area._OUTSIDE_AREA > div > div > div.ra_head > strong > em').text(pressName)
				// 키워드 표시하기, a 태그 걸려있는데 갈 곳은 없음
				var keys = []
				keys.push(data[0].keyword.split(','))
				
				for(let i = 0; i<5; i++){
					$('#contents > div.media_end_linked > ul > li:nth-child('+(i+1)+') > a').text(keys[0][i])
				}
				
				// 같은 언론사 기사 받아오기 위해서 데이터 보내기
				$.ajax({
					url : "board/getPressList",
					data : { "press":pressName ,
								"date":data[0].date }, 
					type : "get",
					dataType : "json",
					success : getPressList,
					error : function(){ alert("error"); }
				});
			}// setNewsFull 끝
			
			// 같은 언론사 같은 날짜 최신 기사 목록 헤드라인
			function getPressList(data){
				console.log("getPressList당")
				for(let i = 0; i<6; i++){
					// 기사 url
					$('ul.ranking_list li:nth-child('+(i+1)+') a').attr("href", "${contextPath}/newsdetailForm.do?idx="+data[i].idx)
					// 기사 제목
					$('ul.ranking_list li:nth-child('+(i+1)+') div p').text(data[i].title)
					// 기사 날짜
					$('ul.ranking_list li:nth-child('+(i+1)+') div div').text(data[i].date)
				}
			}
  		 }); 
</script>



<body class="n_news fs2 as_mp_layout">
    <div class="end_container">
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
						<button type="button" class="btn_search" onclick="">
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

        <div id="ct_wrap" class="ct_wrap">
         
			<div class="ct_scroll_wrapper">
              
                <div class="newsct_wrapper _GRID_TEMPLATE_COLUMN _STICKY_CONTENT">
                    <div id="ct" class="newsct" role="main">
                        <div class="media_end_head go_trans">
                            <div class="media_end_head_top">
                                <a href="" class="media_end_head_top_logo" id="pressName">
                                    <img src="https://mimgnews.pstatic.net/image/upload/office_logo/023/2020/09/03/logo_023_6_20200903164340.png" width="" height="32" alt="조선일보" title="조선일보"
                                        class="media_end_head_top_logo_img light_type">

                                </a>
                            </div>
                            
                       <div class="sticky_menu default" style="top: 168px;">
                           <button type="button" class="btn_bookmark">
                               <i class="ico_bookmark"></i>
                               <span class="sm_hidden">AI 비서이다 ^^</span>
                           </button>
                       </div>
                       <div id="loading" class="is_hidden">
	                       <span></span>   <!--1. span은 하나의 원이다. -->
	                       <span></span>
	                       <span></span>
                	   </div>                     
                            
                            <div class="media_end_head_title">
                                <h2 id="title_area" class="media_end_head_headline"><span>제목자리 </span></h2>
                            </div>
                            <div class="media_end_head_info nv_notrans ">
                                <div class="media_end_head_info_datestamp">
                                    <div class="media_end_head_info_datestamp_bunch">
                                        <em class="media_end_head_info_datestamp_term">입력 </em><span
                                            class="media_end_head_info_datestamp_time _ARTICLE_DATE_TIME"  id = "date"
                                            >날짜자리</span>
                                    </div>
                                    <button target="" class="media_end_head_origin_link">기사원문</button>
                                </div>
                                <div class="media_end_head_journalist">
                                    <a href="" class="media_end_head_journalist_box">
                                        <em class="media_end_head_journalist_name"  id = "reporter">기자 이름</em>
                                    </a>
                                </div>

                            </div>
                        </div>
                        <div id="contents" class="newsct_body">
                            <div id="newsct_article" class="newsct_article _article_body">
                                <div id="dic_area" class="go_trans _article_content" style="-webkit-tap-highlight-color: rgba(0,0,0,0)">
                                  	요약 뉴스 자리
                                </div>
                            </div>

                     
                            <div class="media_end_linked">
                                <h3 class="media_end_linked_title">
                                    <a href="https://www.asiae.co.kr/ " class="media_end_linked_title_inner" id="pressName">
                                        <img src="https://mimgnews.pstatic.net/image/upload/office_logo/023/2020/09/03/logo_023_6_20200903164340.png"
                                            width="" height="26" class="media_end_linked_title_img light_type">
                                    </a>
                                    주요키워드 <span class="media_end_linked_title_desc"></span>
                                </h3>
                                
                                <ul class="media_end_linked_list">
                                    <li class="media_end_linked_item"><a
                                            href="#"
                                            target="_blank" class="media_end_linked_item_inner" data-clk="are.link" data-gdid="277"
                                            data-extra="{&quot;lk&quot;:{&quot;oid&quot;:&quot;277&quot;,&quot;aid&quot;:&quot;4132d520a8bdab60&quot;}}">
                                            키워드1</a></li>
                                    <li class="media_end_linked_item"><a
                                            href="#"
                                            target="_blank" class="media_end_linked_item_inner" data-clk="are.link" data-gdid="277"
                                            data-extra="{&quot;lk&quot;:{&quot;oid&quot;:&quot;277&quot;,&quot;aid&quot;:&quot;42ad620364fb76dd&quot;}}">
                                            키워드2</a></li>
                                    <li class="media_end_linked_item"><a
                                            href="#"
                                            target="_blank" class="media_end_linked_item_inner" data-clk="are.link" data-gdid="277"
                                            data-extra="{&quot;lk&quot;:{&quot;oid&quot;:&quot;277&quot;,&quot;aid&quot;:&quot;b2bf479712b705c9&quot;}}">
                                            키워드3</a></li>
                                    <li class="media_end_linked_item"><a
                                            href="#"
                                            target="_blank" class="media_end_linked_item_inner" data-clk="are.link" data-gdid="277"
                                            data-extra="{&quot;lk&quot;:{&quot;oid&quot;:&quot;277&quot;,&quot;aid&quot;:&quot;0fff095be75e1305&quot;}}">
                                            키워드4</a></li>
                                    <li class="media_end_linked_item"><a
                                            href="#"
                                            target="_blank" class="media_end_linked_item_inner" data-clk="are.link" data-gdid="277"
                                            data-extra="{&quot;lk&quot;:{&quot;oid&quot;:&quot;277&quot;,&quot;aid&quot;:&quot;055763df73807101&quot;}}">
                                            키워드5</a></li>
                                </ul>
                            </div>

                            <div class="ends_addition" id="endAdditionContainer">
                            
                                <div id="spiLayer" style="">
                                    
                                </div>

                            </div>
                           <div class="_VALID_SERIES" data-component-id=""></div>
              			  </div>
              		  </div>
                </div>
 			<div class="outside_area _OUTSIDE_AREA">
                    <div class="outside_area_inner _GRID_TEMPLATE_COLUMN_ASIDE _OUTSIDE_AREA_INNER">
                        <div class="rankingnews mobile_hidden">
                            <div class="ra_head">
                                <strong class="ra_title"><em class="ra_highlight">언론사</em> 헤드라인</strong>
                                <a href="https://media.naver.com/press/277" class="media_more"
                                      ><span class="blind">더보기</span></a>
                            </div>
                            <div class="ra_area">
                                <div class="flick">
                                    <div class="flick-container">
                                        <div class="flick-panel">
                                            <ul class="ranking_list">
                                            <!--  -->
                                                <li class="rl_item _LAZY_LOADING_WRAP" data-loading-error-allowed="true">
                                                    <a href="/article/277/0005273417" class="rl_link_end">
                                                        <div class="rl_content">
                                                            <p class="rl_txt">기사1 타이틀</p>
                                                            <div class="rl_time">기사1 시간</div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="rl_item _LAZY_LOADING_WRAP" data-loading-error-allowed="true">
                                                    <a href="/article/277/0005273498" class="rl_link_end">
                                                        <div class="rl_content">
                                                            <p class="rl_txt">기사2 타이틀</p>
                                                            <div class="rl_time">기사2 시간</div>
                                                        </div>
                                                        
                                                    </a>
                                                </li>
                                                <li class="rl_item _LAZY_LOADING_WRAP" data-loading-error-allowed="true">
                                                    <a href="/article/277/0005273453" class="rl_link_end">
                                                        <div class="rl_content">
                                                            <p class="rl_txt">기사3 타이틀</p>
                                                            <div class="rl_time">기사3 시간</div>
                                                        </div>
                                                     
                                                    </a>
                                                </li>
                                                <li class="rl_item _LAZY_LOADING_WRAP" data-loading-error-allowed="true">
                                                    <a href="/article/277/0005273457" class="rl_link_end">
                                                        <div class="rl_content">
                                                            <p class="rl_txt">기사4 타이틀</p>
                                                            <div class="rl_time">기사4 시간</div>
                                                        </div>
                                                     
                                                    </a>
                                                </li>
                                                <li class="rl_item _LAZY_LOADING_WRAP"  data-loading-error-allowed="true">
                                                    <a href="/article/277/0005273212" class="rl_link_end">
                                                        <div class="rl_content">
                                                            <p class="rl_txt">기사5 타이틀</p>
                                                            <div class="rl_time">기사5 시간</div>
                                                        </div>
                                                      
                                                    </a>
                                                </li>
                                                <li class="rl_item _LAZY_LOADING_WRAP" data-loading-error-allowed="true">
                                                    <a href="/article/277/0005273435" class="rl_link_end">
                                                        <div class="rl_content">
                                                            <p class="rl_txt">기사6 타이틀</p>
                                                            <div class="rl_time">기사6 시간</div>
                                                        </div>
<!--  -->
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
                <style>

    ::-webkit-scrollbar { width: 3px; } /* 스크롤 바 */

    ::-webkit-scrollbar-track { background-color:#fff; } /* 스크롤 바 밑의 배경 */

    ::-webkit-scrollbar-thumb { background: #ddd; border-radius: 10px; } /* 실질적 스크롤 바 */

    ::-webkit-scrollbar-thumb:hover { background: #404040; } /* 실질적 스크롤 바 위에 마우스를 올려다 둘 때 */

    ::-webkit-scrollbar-thumb:active { background: #808080; } /* 실질적 스크롤 바를 클릭할 때 */

    ::-webkit-scrollbar-button { display: none; } /* 스크롤 바 상 하단 버튼 */
        </style>
        
   <div class="modal-wrapper">
            <div class="modal">
                <div class="content" id="zz">
                    <div class="chat_wrap">
                        <div class="chat">
                            <ul>
                                <!-- 동적 생성 -->
                            </ul>
                        </div>
                        <div class="input-div">
                            <textarea placeholder="명령어를 입력해보세요 .^^ ex) 원문보여줘 ,이 뉴스의 키워드 보여줘, 홈화면으로 돌아가줘. ^^ "></textarea>
                        </div>

                        <!-- format -->

                        <div class="chat format">
                            <ul>
                                <li>
                                    <div class="sender">
                                        <span></span>
                                    </div>
                                    <div class="message">
                                        <span></span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                         <button class="btn_sub22" type="submit" style="text-align: center;">종료하기
                        </button>
                    </div>



                </div>
            </div>
        </div>

<div class="modal-wrapper3">
            <div class="modal3">
                <div class="content3" id="zz3">
               
                     <div class="media_end_head_top">
                        <a href="" class="media_end_head_top_logo" id = "pressName">
                            <img src="https://mimgnews.pstatic.net/image/upload/office_logo/023/2020/09/03/logo_023_6_20200903164340.png" width="" height="32" alt="조선일보" title="조선일보"
                                class="media_end_head_top_logo_img light_type">
                        </a>

                    </div>
                    <div class="media_end_head_title">
                        					          <div class="typing-txt"> 
								  <ul>
								    <li>오늘의 키워드 입니다 ^</li>
								    <li>우하하 </l>
								    <li>우하하하</li>
								    <li>아하하하 </l>
								    <li>헤헤헤헤</li>
								</ul>
								
								</div> 
								<div class="typing">
								   <ul>
								     <li></li>
								     <li></li>
								     <li></li>
								     <li></li>
								     <li></li>
								  </ul>
								</div> 
								        
                    </div>
                    <div id="contents" class="newsct_body">
                        <div id="newsct_article" class="newsct_article _article_body">
                            <div id="dic_area" class="go_trans _article_content"
                                style="-webkit-tap-highlight-color: rgba(0,0,0,0)">
                                
					          <div class="typing-txt"> 
								  <ul>
								    <li>오늘의 키워드 입니다 ^</li>
								    <li>우하하 </l>
								    <li>우하하하</li>
								    <li>아하하하 </l>
								    <li>헤헤헤헤</li>
								</ul>
								
								</div> 
								<div class="typing">
								   <ul>
								     <li></li>
								     <li></li>
								     <li></li>
								     <li></li>
								     <li></li>
								  </ul>
								</div> 
								                                                                
                                
                            </div>
                        </div>
                    </div>

                    <div class="center_star2">
                        <button class="btn_sub33" type="submit" style="text-align: center;">종료하기
                        </button>
                    </div>
                </div>
            </div>
        </div>



        <div class="modal-wrapper2">
            <div class="modal2">
                <div class="content2" id="zz2">
				<!-- 기사원문 -->
                <div class="media_end_head_top">
                    <a href="" class="media_end_head_top_logo" id = "pressName">
                        <img src="https://mimgnews.pstatic.net/image/upload/office_logo/023/2020/09/03/logo_023_6_20200903164340.png" width="" height="32" alt="조선일보" title="조선일보"
                            class="media_end_head_top_logo_img light_type">
                    </a>

                </div>
                    <div class="media_end_head_title">
                        <h3 id="title_area" class="media_end_head_headline"><span>제목 자리</span></h3>
                    </div>
                    <div class="media_end_head_info_datestamp_bunch">
                    	<em class="media_end_head_info_datestamp_term">입력 </em>
                    		<span class="media_end_head_info_datestamp_time _ARTICLE_DATE_TIME"  id = "date">날짜자리</span>
                    </div>
                    <div class="media_end_head_journalist">
	                    	<a href="" class="media_end_head_journalist_box">
	                        	<em class="media_end_head_journalist_name" id = "reporter">기자 이름</em>
	                        </a>
                    </div>
                 <div id="contents" class="newsct_body">
                    <div id="newsct_article" class="newsct_article _article_body">
                        <div id="dic_area" class="go_trans _article_content" style="-webkit-tap-highlight-color: rgba(0,0,0,0)">
             				뉴스 전문 자리
                        </div>
                    </div>
                </div>


                    <div class="center_star2">


                        <button class="btn_sub2" type="submit" style="text-align: center;">등록하기
                        </button>

                    </div>
                </div>
            </div>
        </div>

        <div id="footer" class="footer footer22">

            <footer>
                <div class="footer_info">
                    <div class="footer_wrap">

                        <div class="logo sm_hidden md_hidden"><a href="https://www.joongang.co.kr"
                                data-evnt-ctg="area:중앙|대통령실" data-evnt-act="move:A40 푸터 태그"
                                data-evnt-lbl="footer logo"><span class="visually_hidden">중앙일보</span></a></div>
                        <div class="corp">
                            <p class="address">
                                <span>주소 : 광주광역시 북구 북구맨 64-86 (우) 0573</span>
                                <span>전화 : 062-262-6486</span>
                                <span>등록번호 : 광주 북 1818</span>
                                <span>등록일자 : 1996.01.16</span>
                                <span>발행인 : 조승재</span>
                                <span>편집인 : 조승재</span>
                                <a href="https://www.joongang.co.kr/sitemap/index" class="sm_hidden md_hidden">전체 서비스</a>
                            </p>
                            <p class="address">
                                <span>사업자명 : <a href="https://www.joongang.co.kr">삼삼뉴스㈜</a></span>
                                <span>사업자등록번호 : 960-11-615524</span>
                                <span>대표자명 : 윤선지</span>
                                <em>통신판매업신고번호 : 1996-광주북구-0116</em>
                            </p>
                            <p class="info sm_hidden md_hidden">삼삼뉴스의 모든 콘텐트(기사)는 저작권법의 보호를 받은바, 무단 전재, 복사, 배포
                                등을 금합니다.[<a href="https://bbs.joongang.co.kr/customercenter/faq?boardSeq=1481">저작권 정책 및 콘텐트 문의</a>]</p>
                            <p class="copyright"><strong>Copyright by SamSamNews Co., Ltd. All Rights
                                    Reserved</strong></p>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
       
      
       

      

    </div>
      <script>
        const Chat = (function () {
            const myName = "user";

            // init 함수
            function init() {
                // enter 키 이벤트
                $(document).on('keydown', 'div.input-div textarea', function (e) {
                    if (e.keyCode == 13 && !e.shiftKey) {
                        e.preventDefault();
                        const message = $(this).val();

                        // 메시지 전송
                        sendMessage(message);
                        // 입력창 clear
                        clearTextarea();
                    }


                });
            }

            // 메세지 태그 생성
            function createMessageTag(LR_className, senderName, message) {
                // 형식 가져오기
                let chatLi = $('div.chat.format ul li').clone();

                // 값 채우기
                chatLi.addClass(LR_className);
                chatLi.find('.sender span').text(senderName);
                chatLi.find('.message span').text(message);



                return chatLi;
            }

            function createMessageTag2(LR_className, senderName, message1) {
                // 형식 가져오기
                let chatLi2 = $('div.chat.format ul li').clone();
                var message1 = '<a href="http://www.naver.com">가보자잇</a>';
                // 값 채우기
                chatLi2.addClass(LR_className);
                chatLi2.find('.sender span').text(senderName);
                chatLi2.find('.message span').html(message1);



                return chatLi2;
            }

            function createMessageTag3(LR_className, senderName, message2) {
                // 형식 가져오기
                let chatLi3 = $('div.chat.format ul li').clone();
                var message2 = '<a href="./newsroom.html">가보자잇</a>';

                // 값 채우기
                chatLi3.addClass(LR_className);
                chatLi3.find('.sender span').text(senderName);
                chatLi3.find('.message span').html(message2);



                return chatLi3;
            }

            function createMessageTag4(LR_className, senderName, message3) {
                // 형식 가져오기
                let chatLi4 = $('.dlrpehla').clone();
                var message3 = '<div class="modal-wrapper"><div class="modal"><div class="content" id="zz"> <div class="media_end_head_top">   <a href="" class="media_end_head_top_logo"> <img src="https://mimgnews.pstatic.net/image/upload/office_logo/023/2020/09/03/logo_023_6_20200903164340.png" width="" height="32" alt="조선일보" title="조선일보"       class="media_end_head_top_logo_img light_type"></a></div><div class="media_end_head_title"> <h3 id="title_area" class="media_end_head_headline"><span>이사할 집에 먼저 전입신고한 외국인 있는지 확인 가능해진다</span></h3></div> <div id="contents" class="newsct_body">  <div id="newsct_article" class="newsct_article _article_body"><div id="dic_area" class="go_trans _article_content"\style="-webkit-tap-highlight-color: rgba(0,0,0,0)"> 앞으로 주택을 매입 또는 임차하거나 근저당권을 설정할 때 먼저 전입신고한 외국인이 있는지 확인할 수 있게 된다.<br><br>법무부는 14일부터 특정 주소지에 주택임대차 대항력이 있는 외국인 유무를 사전에 파악할 수 있도록 하는 "외국인체류확인서          열람·교부" 제도를 시행한다고 밝혔다.<br><br>그동안은 특정 건물에 선순위 대항력을 가진 외국인이 전입해 있어도 그 여부를 확인할 수 없어서        주택을 매입·임차할 때 \n 예상치 못한 권리행사 제한이 발생할 우려가 있었다. <br><br>이제는 임대차계약서, 매매계약서 등 신청 요건을 증명할 수 있는서류를 첨부해 출입국·외국인관서나 읍·면·동사무소에 신청하면 외국인체류확인서를 볼 수 있다.법무부 관계자는 "실생활에 불편을 초래하거나부족한 부분을 계속 발굴하고 개선하겠다"고 밝혔다.</div></div></div><div class="center_star"><button class="btn_sub" type="submit" style="text-align: center;">등록하기</button></div></div></div></div>';













                // 값 채우기
                chatLi4.addClass(LR_className);
                chatLi4.html(message3);



                return chatLi4;
            }



            // 메세지 태그 append
            function appendMessageTag(LR_className, senderName, message) {
                const chatLi = createMessageTag(LR_className, senderName, message);

                $('div.chat:not(.format) ul').append(chatLi);

                // 스크롤바 아래 고정
                $('div.chat').scrollTop($('div.chat').prop('scrollHeight'));
            }
            function appendMessageTag2(LR_className, senderName, message1) {
                const chatLi2 = createMessageTag2(LR_className, senderName, message1);

                $('div.chat:not(.format) ul').append(chatLi2);
                console.log("??")

                // 스크롤바 아래 고정
                $('div.chat').scrollTop($('div.chat').prop('scrollHeight'));
            }


            function appendMessageTag3(LR_className, senderName, message2) {
                const chatLi3 = createMessageTag3(LR_className, senderName, message2);

                $('div.chat:not(.format) ul').append(chatLi3);
                console.log("??")

                // 스크롤바 아래 고정
                $('div.chat').scrollTop($('div.chat').prop('scrollHeight'));
            }

            function appendMessageTag4(LR_className, senderName, message3) {
                const chatLi4 = createMessageTag4(LR_className, senderName, message3);

                $('div.chat:not(.format) ul').append(chatLi4);
                console.log("??")

                // 스크롤바 아래 고정
                $('div.chat').scrollTop($('div.chat').prop('scrollHeight'));
            }



            // 메세지 전송
            function sendMessage(message) {
                // 서버에 전송하는 코드로 후에 대체
                const data = {
                    "senderName": "user",
                    "message": message
                };

                const data2 = {
                    "senderName": "bot",
                    "message": '안녕'
                };

                if (data['message'] === '뉴스') {
                    data2['message'] = '아라써잇';
                    resive2(data, data2);
                } else if (data['message'] === 'ㅎㅇㅎㅇ') {
                    data2['message'] = '안녕안녕^^';
                    resive(data, data2);
                } else if (
                    data['message'] === '정치보여줘') {
                    data2['message'] = '아라써잇';
                    resive3(data, data2);
                }
                else if (data['message'] === '원문보여줘'||
                		data['message'] ==='원문'||
                		data['message'] ==='본문'||
                		data['message'] ==='긴거'||
                		data['message'] ==='원문 보여줘'||
                		data['message'] ==='원문보여저'||
                		data['message'] ==='원문 보여저'||
                		data['message'] ==='원문보여주세요'||
                		data['message'] ==='원문주삼'||
                		data['message'] ==='원문 주삼') {

                    $(document).ready(function () {
                        $('.modal-wrapper').toggleClass('open');
                        $('.ct_wrap').toggleClass('blur-it');
                        console.log("헤헤");

                        return false;
                    });

                    setTimeout(function () {

                        $(document).ready(function () {

                            $('.modal-wrapper2').toggleClass('open2');
                            $('.ct_wrap').toggleClass('blur-it');

                            console.log("ㅋㅋㅋ");

                            return true;
                            ;
                        });


                    }, 1000);



                }else if (data['message'] === '키워드보여줘'||
                		data['message'] ==='키워드 보여줘'||data['message'] ==='키워드'||data['message'] ==='키워드보여주세요'||data['message'] ==='키워드줘') {

                    $(document).ready(function () {
                        $('.modal-wrapper').toggleClass('open');
                        $('.ct_wrap').toggleClass('blur-it');
                        console.log("헤헤");

                        return false;
                    });
                    


                    
                    

                    

                    setTimeout(function () {

                        $(document).ready(function () {

                            $('.modal-wrapper3').toggleClass('open');
                            $('.ct_wrap').toggleClass('blur-it');

                            console.log("ㅋㅋㅋ");

                            return true;
                            ;
                        });


                    }, 1000);



                }









                else {
                    resive(data, data2);
                }

                // 통신하는 기능이 없으므로 여기서 receive

            }

            // 메세지 입력박스 내용 지우기
            function clearTextarea() {
                $('div.input-div textarea').val('');
            }

            // 메세지 수신
            function resive(data, data2) {
                const LR = (data.senderName != myName) ? "right" : "left";
                appendMessageTag("left", data.senderName, data.message);
                appendMessageTag("right", data2.senderName, data2.message);

            }
            function resive2(data, data2) {
                const LR = (data.senderName != myName) ? "right" : "left";
                appendMessageTag("left", data.senderName, data.message);
                appendMessageTag("right", data2.senderName, data2.message);
                appendMessageTag2("right", data2.senderName, data2.message);

            }
            function resive3(data, data2) {
                const LR = (data.senderName != myName) ? "right" : "left";
                appendMessageTag("left", data.senderName, data.message);
                appendMessageTag("right", data2.senderName, data2.message);
                appendMessageTag3("right", data2.senderName, data2.message);

            } function resive4(data, data2) {
                const LR = (data.senderName != myName) ? "right" : "left";
                appendMessageTag("left", data.senderName, data.message);
                appendMessageTag("right", data2.senderName, data2.message);
                appendMessageTag4("right", data2.senderName, data2.message);

            }

            return {
                'init': init
            };





        })();

        $(function () {
            Chat.init();

        });









    </script>
  
<script type="text/javascript">

		
		var typingBool = false; 
		var typingIdx=0; 
		var liIndex = 0;
		var liLength = $(".typing-txt>ul>li").length;
		
		// 타이핑될 텍스트를 가져온다 
		var typingTxt = $(".typing-txt>ul>li").eq(liIndex).text(); 
		typingTxt=typingTxt.split(""); // 한글자씩 자른다. 
		if(typingBool==false){ // 타이핑이 진행되지 않았다면 
		    typingBool=true; 
		    var tyInt = setInterval(typing,100); // 반복동작 
		} 
		


		     
		function typing(){
			

            setTimeout(function () {
      		  $(".typing ul li").removeClass("on");
   		   $(".typing ul li").eq(liIndex).addClass("on");
   		  if(typingIdx<typingTxt.length){ // 타이핑될 텍스트 길이만큼 반복 
   		     $(".typing ul li").eq(liIndex).append(typingTxt[typingIdx]); // 한글자씩 이어준다. 
   		     typingIdx++; 
   		   } else{ if(liIndex<liLength-1){
   		     //다음문장으로  가기위해 인덱스를 1증가
   		       liIndex++; 
   		     //다음문장을 타이핑하기위한 셋팅
   		        typingIdx=0;
   		        typingBool = false; 
   		        typingTxt = $(".typing-txt>ul>li").eq(liIndex).text(); 
   		       
   		     //다음문장 타이핑전 1초 쉰다
   		         clearInterval(tyInt);
   		          //타이핑종료
   		     
   		         setTimeout(function(){
   		           //1초후에 다시 타이핑 반복 시작
   		           tyInt = setInterval(typing,100);
   		         },1000);
   		        } else if(liIndex==liLength-1){
   		          
   		         //마지막 문장까지 써지면 반복종료
   		           clearInterval(tyInt);
   		        }
   		    } 
              

            }, 5000);
			
			

		}  


</script>


    <script>






        $(document).ready(function () {
            $('.btn_bookmark').on('click', function () {
                $('.modal-wrapper').toggleClass('open');
                $('.ct_wrap').toggleClass('blur-it');
                console.log("호호헤");

                return true;
            });
        });




        $(document).ready(function () {
            $('.btn_sub').on('click', function () {
                $('.modal-wrapper').toggleClass('open');
                $('.ct_wrap').toggleClass('blur-it');
                console.log("헤헤");

                return false;
            });
        });









    </script>
    
     <script>









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


        </script>

<script>




$(document).ready(function () {
    $('.btn_sub').on('click', function () {
        $('.modal-wrapper').toggleClass('open');
        $('.ct_wrap').toggleClass('blur-it');
        console.log("wwww");

        return false;
    });
});

$(document).ready(function () {
    $('.btn_sub2').on('click', function () {
        $('.modal-wrapper2').toggleClass('open2');
        $('.ct_wrap').toggleClass('blur-it');

        console.log("dadad");

        return false;
    });
});
</script>
   



</body>

</html>