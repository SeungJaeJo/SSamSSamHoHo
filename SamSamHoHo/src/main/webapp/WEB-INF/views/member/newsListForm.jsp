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
										    var start = 1;
										    var end = 10;
										    
										  	 $(".nav_btn").on('click',function(e){
									  		  if(e.target.id === 'wjdcl'){
									  			category = "정치";
									  		  }else if(e.target.id === 'tkghl'){
									  			category = "사회";
									  		  }else if(e.target.id === 'rudwp'){
									  			category = "경제";
									  		  }else {
									  			category = "국제";
									  		  }
									  		  
									  		  $(this).attr('href','#');
									  			start = 1;
									  			end = 10;
									  			 
									  			JList(start, end, category);
										  	});   
										  	 
										   	$(".page_link").on('click', function(e){
										   		for(var a = 1; a < 6; a++){
											    	if(e.target.id === "num1"){
											    		$(this).attr('href','#');
											    	}else if(e.target.id != "num1"){
											    		start += 10;
											    		end += 10;
											    	/* 	$("#num"+a-1+"").attr('class','');
											    		$("#num"+a+"").attr('class','active');  */
											    	}
											    	JList(start, end, category);
										   		}
										    }); 
										  	JList(start, end, category);
										  	
										  	  });
										  
											  function JList(start, end, category){
												  
												  $.ajax({
													  url : "board/testPaging",
													  data : {
														  param1 : start,
														  param2 : end,
														  param3 : category
													  }, 
													  type : "get",
													  dataType : "json",
													  success : makeJ,
													  error : function(){ alert("error"); }
												  });
											  }
												  	
											                        
											  function makeJ(data){ 
												  console.log(data);
												  var listHtml = "";
												  $.each(data, function(index, obj){
													    listHtml += " <li class='card'>";
													    listHtml += " <div class='card_body'>";
													  	listHtml += "<h2 class='headline'>";
													  	listHtml += "<a href=''>"+obj.title+"</a></h2>";
													  	listHtml += "<p class='description sm_hidden'>"+obj.summ_content+"</p>";
													  	listHtml += "<div class='meta'>";
														listHtml += "<p class='source'>"+obj.press+"</p>";
														listHtml += "<p class='date'>"+obj.date+"</p>"; 
														listHtml += "</div></li>";
													  
													  });
													  $("#cateList").html(listHtml);
												
											  }
										  </script>
										
                             
                         
                           
                        </ul>
                        <script>
                        
                        var category = "정치";
                   	 	$(".nav_btn").on('click',function(e){
					  		  if(e.target.id === 'wjdcl'){
					  			category = "정치";
					  		  }else if(e.target.id === 'tkghl'){
					  			category = "사회";
					  		  }else if(e.target.id === 'rudwp'){
					  			category = "경제";
					  		  }else {
					  			category = "국제";
					  		  }
					  		  cntCt(category);
					  		 
						  	}); 
                   	 	cntCt(category);
                        function cntCt(category){
							  $.ajax({
								  url : "board/cntCt",
								  data : {
									  category : category
								  },						  
								  type : "get",
								  dataType : "json",
								  success : makePaging,
								  error : function(){ alert("error"); }
							  });
						  }
                        
                        function makePaging(data){
                        	console.log(data);
                        	var totalPage = Math.ceil(data/10);
                        	var perPage = 5;
                        	
	                        var listHtml = "";
	                     
                       		for (var i = 1; i < 6; i++){
	                        	listHtml += "<li>";
	                        	listHtml += "<a class='page_link' id='num"+i+"'>"+i+"</a>";
	                        	listHtml += "</li>";
                        	 
                        	}
                        	$("#view_page_cnt").html(listHtml);
                        	$("#view_page_cnt>li:nth-child(1)").attr('class','active');
                        
                        
                        }
                        </script>

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
                            	<script type="text/javascript">
									makeKey(category);
									$(".nav_btn").on('click',function(e){
								  		  if(e.target.id === 'wjdcl'){
								  			category = "정치";
								  		  }else if(e.target.id === 'tkghl'){
								  			category = "사회";
								  		  }else if(e.target.id === 'rudwp'){
								  			category = "경제";
								  		  }else {
								  			category = "국제";
								  		  }
								  		  makeKey(category);
								  		 
									  	}); 
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
													
											listHtml += "<li class='nav_item'>";
											listHtml += "<a class='nav_link' href='#' id='key"+(index+1)+"'>"+(index+1)+". "+obj.keyword+"</a>";
											listHtml += "</li>";
										})
										$("#keyList").html(listHtml);
										
										
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