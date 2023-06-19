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
  	
  	<link rel="stylesheet" href="resources/assets/css/newsroom1.css">
<link rel="stylesheet" href="resources/assets/css/newsroom2.css">
<link rel="stylesheet" href="resources/assets/css/newsroom3.css">
  	
  	
</head>

<body style="transform: none;">
 
    <div id="wrapper">
        <header id="header" class="header position_ab">
            <div class="uh">
                <a href= "${contextPath}" class="logo">
                    <img width="100" height="26" src="resources/images/logo.png">
                </a>
                <div class="header_right_area">
                    <nav class="header_nav">
                        <ul class="nav sm_hidden md_hidden">
							<li class="nav_item"><a href="#"
								 id="wjdcl" class="nav_btn">정치</a></li>
							<li class="nav_item"><a href="#"
								 id="tkghl" class="nav_btn">사회</a></li>
							<li class="nav_item"><a href="#"
								 id="rudwp" class="nav_btn">경제</a></li>
							<li class="nav_item"><a href="#"
								 id="rnrwp" class="nav_btn">국제</a></li>

                        </ul>
                    </nav>
                    <ul class="logout sm_hidden">
                        <li><a href="">로그인</a>
                        </li>
                        <li><a href="">회원가입</a></li>
                    </ul>
                  
                 
                    <div class="header_option_area">
                        <button type="button" class="btn_search" onclick=""><i class="ico_search"></i></button>
                        <button type="button" class="btn_navbar" onclick=""><i class="ico_ham"></i></button>
                    </div>

                </div>
            </div>
         
   
       
        
          
        </header>
        <main role="main" id="container">
            <section class="contents">
                <header id="sticky" class="section_header_wrap m_unsticky">
                    <strong class="section_title">정치</strong>
                </header>
                <div class="row">
                    <section class="chain_wrap col_lg9">
                        <header class="title_wrap bdr_none bdr_bottom">
                            <div id="searchSticky" class="title">
                                <a href="https://www.joongang.co.kr/search/unifiedsearch?keyword=더불어민주당"
                                    class="btn_back">
                                    <i class="ico_pre"></i><span class="visually_hidden">뒤로가기</span>
                                </a>
                           
                            </div>

                        </header>
                        <ul class="story_list" id="cateList">
                           

                               
                                    
                                    	
                                    		<script type="text/javascript">
  
										  	  var csrfHeaderName = "${_csrf.headerName}";
										  	  var csrfTokenValue = "${_csrf.token}";
										  
										  	 $(document).ready(function(){
										  		  // HTML이 다 로딩되고 작동하는 함수
										  		
										  	var category = "정치";
										   
										    
										  	 $(".nav_btn").on('click',function(e){
									  		  if(e.target.id === 'wjdcl'){
									  			category = "정치";
									  			$(".section_title").text('정치');
									  		  }else if(e.target.id === 'tkghl'){
									  			category = "사회";
									  			$(".section_title").text('사회');
									  		  }else if(e.target.id === 'rudwp'){
									  			category = "경제";
									  			$(".section_title").text('경제');
									  		  }else {
									  			category = "국제";
									  			$(".section_title").text('국제');
									  		  }
									  		  
									  			//JList(start, end, category);
									  			cntCt(category);
									  			makeKey(category);
										  	});   
										  	
										  	//JList(start, end, category); 
										  	cntCt(category);
										  	makeKey(category);
										  	  });
										  	
											  
											  
											  function cntCt(category){
											  var ttt;
												  $.ajax({
													  url : "board/cntCt",
													  data : {
														  category : category
													  },						  
													  type : "get",
													  dataType : "json",
													  success : function(data){
														  ttt = data;
														  
														  $.ajax({
															  url : "board/paging",
															  type : "get",
															  dataType : "json",
															  success : function(data){
																  console.log(data);
										                        	data.nowPage = 1;
										                        	data.cntPage = 5;
										                        	data.cntPerPage = 10;
										                        	data.total = ttt;
										                        	
										                        	data.lastPage = Math.ceil(data.total / data.cntPerPage);
										                        	
																	data.endPage = Math.ceil(data.nowPage / data.cntPage) * data.cntPage;
																	
																	if (data.lastPage < data.endPage) {
																		data.endPage = data.lastPage;
																	}
																	
																	data.startPage = data.endPage - data.cntPage + 1;
																	if (data.startPage < 1) {
																		data.startPage = 1;
																	}
																	
																	data.end = data.nowPage * data.cntPerPage;
																	data.start = data.end - data.cntPerPage + 1;
																	
																	
																	var s = data.startPage;
																	var e = data.endPage;
																	tt(s, e);
										                        	function tt(s, e){
										                        		
										                        		
										                        		
													                        var listHtml = "";
													                      
												                       		for (var i = data.startPage; i <= data.endPage; i++){
												                       			if(i == data.startPage){
														                        	listHtml += "<li class='active'>";
														                        	listHtml += "<a class='page_link' href='#'id='num"+i+"' role='button'>"+i+"</a>";
														                        	listHtml += "</li>";
												                       			}else{
												                       				listHtml += "<li>";
														                        	listHtml += "<a class='page_link' href='#'id='num"+i+"' role='button'>"+i+"</a>";
														                        	listHtml += "</li>";
												                       			}
													                        	
												                       		}
												                        	$("#view_page_cnt").html(listHtml);
										                        		
										                        	};
										                        	

											                        $(".btn_next").on('click', function(){
																		if(data.endPage < data.lastPage){
																			data.nowPage = data.endPage+1;
																			data.endPage = Math.ceil(data.nowPage / data.cntPage) * data.cntPage;
																			
																			if (data.lastPage < data.endPage) {
																				data.endPage = data.lastPage;
																			}
																			
																			data.startPage = data.endPage - data.cntPage + 1;
																			if (data.startPage < 1) {
																				data.startPage = 1;
																			}
																			
																		}
																			tt(s, e);
																	});	
																 	
																			
																			
																			
																			
										                       		
										                       	  const cateL = document.querySelectorAll('#view_page_cnt>li');
										                       	 let activeCate = ''; // 현재 활성화 된 컨텐츠 (기본:#tab1 활성화)
														            for (var i = 0; i < cateL.length; i++) {
														            	cateL[i].addEventListener('click', function (e) {
														                    e.preventDefault();
														                    for (var j = 0; j < cateL.length; j++) {
														                        // 나머지 버튼 클래스 제거
														                        cateL[j].classList.remove('active');

														                        // 나머지 컨텐츠 display:none 처리
														                    }

														                    // 버튼 관련 이벤트
														                    
														                    this.classList.add('active');
														                    activeCate = this.getAttribute('href');
														                });
														            }
														         
														           
																	$(".page_link").on('click', function(e){
																		for(var k = data.startPage; k <= data.endPage; k++){
																			
																			if(e.target.id=='num'+(k)+''){
																				data.nowPage = k;
																				data.end = data.nowPage * data.cntPerPage;
																				data.start = data.end - data.cntPerPage + 1;
																			}
																				
																		}
																	
 																		
																	console.log(data.nowPage);
																	$.ajax({
																		  url : "board/testPaging",
																		  data : {
																			  param1 : data.start,
																			  param2 : data.end,
																			  param3 : category
																		  }, 
																		  type : "get",
																		  dataType : "json",
																		  success :makeJ, 
																		  error : function(){ alert("error"); }
																	  });
																	});
																	$.ajax({
																		  
																		  url : "board/testPaging",
																		  data : {
																			  param1 : data.start,
																			  param2 : data.end,
																			  param3 : category
																		  }, 
																		  type : "get",
																		  dataType : "json",
																		  success :makeJ, 
																		  error : function(){ alert("error"); }
																	  });
																	
																		
																	
															  }, // 페이징
															  error : function(){ alert("error"); }
														  });
														  
													  },
													  error : function(){ alert("error"); }
												  });
												  
												  
												  
													 
											  };
											  
											  function makeJ(data){ 
												  var listHtml = "";
												  $.each(data, function(index, obj){
													    listHtml += "<li class='card'>";
													    listHtml += "<div class='card_body'>";
													  	listHtml += "<h2 class='headline'>";
													  	listHtml += "<a href=''>"+obj.title+"</a></h2>";
													  	listHtml += "<p class='description sm_hidden'>"+obj.summ_content+"</p>";
													  	listHtml += "<div class='meta'>";
														listHtml += "<p class='source'>"+obj.press+"</p>";
														listHtml += "<p class='date'>"+obj.date+"</p>"; 
														listHtml += "</div></li>";
													  
													  });
						                       
													  $("#cateList").html(listHtml);
													  
												  
											  };
											
					                       
					                        
					                        function makeKey(category){
												
												 $.ajax({
													  url : "board/keyword",
													  data : {
														  category : category
													  },
													  type : "get",
													  dataType : "json",
													  success : makeKList,
													  error : function(){ alert("error"); }
												  });
												
												
												
											}	
											function makeKList(data){
												
													var listHtml = "";
												$.each(data, function(index, obj){
													
													if(index==0){
														listHtml += "<li class='nav_item is_on2'>";
														listHtml += "<a class='nav_link i"+(index+1)+"' href='#' id='key"+(index+1)+"'>"+(index+1)+". "+obj.keyword+"</a>";
														listHtml += "</li>";
														
													}else{
														listHtml += "<li class='nav_item'>";
														listHtml += "<a class='nav_link i"+(index+1)+"' href='#' id='key"+(index+1)+"'>"+(index+1)+". "+obj.keyword+"</a>";
														listHtml += "</li>";
													}
															
													
												})
												$("#keyList").html(listHtml);
												
												  const tabList = document.querySelectorAll('.tag_nav li');
										            let activeCont = ''; // 현재 활성화 된 컨텐츠 (기본:#tab1 활성화)

										            for (var i = 0; i < tabList.length; i++) {
										                tabList[i].querySelector('.i' + (i + 1)).addEventListener('click', function (e) {
										                    e.preventDefault();
										                    console.log("?????")
										                    for (var j = 0; j < tabList.length; j++) {
										                        // 나머지 버튼 클래스 제거
										                        tabList[j].classList.remove('is_on2');

										                        // 나머지 컨텐츠 display:none 처리
										                    }

										                    // 버튼 관련 이벤트
										                    this.parentNode.classList.add('is_on2');

										                    // 버튼 클릭시 컨텐츠 전환
										                    activeCont = this.getAttribute('href');
										                });
										            }
												
												
												var keyword = data[0].keyword;
												
												
												$(".nav_link").on('click', function(e){
													for(var k = 0; k < 11; k++){
														
														if(e.target.id=='key'+(k+1)+''){
															keyword = data[k].keyword;
														}
														makeKNews(keyword);
													}
												});
												
												
												
												makeKNews(keyword);
												function makeKNews(keyword){
													
													$.ajax({
														  url : "board/keyNews",
														  data : {
															  keyword : keyword
														  },
														  type : "get",
														  dataType : "json",
														  success : makeKNewsList,
														  error : function(){ alert("error"); }
													  });
													
												}
			                            	    function makeKNewsList(data){
			                            	    	
			                            	    	var listHtml = "";
													$.each(data, function(index, obj){
														listHtml += "<li class='card'>";
														listHtml += "<h4 class='headline'>";
														listHtml += "<a>"+obj.title+"</a></h4>";
														listHtml += "<div class='meta'>";
														listHtml += "<p class='date'>"+obj.date+"</p>";
														listHtml += "</div></div></li>";
													})
													$("#viewkeyList").html(listHtml);
			                            	    	
			                            	    	
			                            	    	
			                            	    	
			                            	    }
			                            	
			                            	
												
											}
		                            	
											
											  
										  </script>
										
                             
                         
                           
                        </ul>
                      

                        <nav class="pagination_type02" aria-label="pagination">
                            <ul>
                                <li class="page_first">
                                    <a  class="page_link" role="button" 
                                        aria-label="처음 페이지">처음</a>
                                </li>
                                <li class="page_prev" >
                                    <a href="#" class="page_link" role="button" aria-disabled="true"
                                        aria-label="이전 페이지"><i class="ico_arrow_left" aria-hidden="true"></i></a>
                                </li>
                                <li id="view_page_cnt">
                                <!-- <li class="active">
                                    <a 
                                        class="page_link" id="first_page">1</a>
                                </li>
                                <li>
                                    <a 
                                        class="page_link" id="second_page">2</a>
                                </li>
                                <li>
                                    <a 
                                        class="page_link" id="third_page">3</a>
                                </li>
                                <li>
                                    <a 
                                        class="page_link" id="fourth_page">4</a>
                                </li>
                                <li>
                                    <a 
                                        class="page_link" id="fifth_page">5</a>
                                </li> -->
                                </li>
                                <li class="page_next">
                                    <a
                                        class="page_link btn_next" role="button"><i
                                            class="ico_arrow_right"></i></a>
                                </li>
                                <li class="page_last">
                                    <a 
                                        class="page_link">마지막</a>
                                </li>
                            </ul>
                        </nav>
                    </section>
                    <div class="col_lg3">
                        <section class="search_tag_wrap">
                            <header class="title_wrap">
                                <strong class="title">주요 키워드</strong>
                            </header>
                            <ul class="tag_nav" id="keyList">
                       
                              
                            </ul>
                            
                        </section>
                        <section class="chain_wrap">
                            <header class="title_wrap">
                                <strong class="title">키워드 관련 기사</strong>
                            </header>
                            <ul class="card_right_list" id="viewkeyList">
                            	
                            	<script type="text/javascript">
									
                            	
                            	</script>
                         
                                
                                
                             
                            </ul>
                        </section>
                    </div>
                </div>
            </section>
        </main>
        
          <script>
          
        </script>
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
 
</body>

</html>