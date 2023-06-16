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
							<li class="nav_item"><a 
								 id="wjdcl" class="nav_btn">정치</a></li>
							<li class="nav_item"><a 
								 id="tkghl" class="nav_btn">사회</a></li>
							<li class="nav_item"><a
								 id="rudwp" class="nav_btn">경제</a></li>
							<li class="nav_item"><a
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
                		<script type="text/javascript">
                			/* make_cate();
                			function make_cate(){
                				 var category = "정치";
								  	$("li.nav_btn").on('click',function(e){
							  		  if(e.target.id === "wjdcl"){
							  			 console.log('떠라');
							  			category = "정치";
							  		  }else if(e.target.id === "tkghl"){
							  			category = "사회";
							  		  }else if(e.target.id === "rydwp"){
							  			category = "경제";
							  		  }else{
							  			category = "국제";
							  		  }
								  	}
								  	
								  	
                			} */
                		
                		</script>
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
									  			  console.log('Ejfk');
									  			category = "정치";
									  		  }else if(e.target.id === 'tkghl'){
									  			category = "사회";
									  		  }else if(e.target.id === 'rudwp'){
									  			category = "경제";
									  		  }else {
									  			category = "국제";
									  		  }
									  			JList(category);
										  	})
										  	JList(category);
										  	
										  	  });
										  
											  function JList(category){
												  
												  $.ajax({
													  url : "board/cateNews",
													  data : {
														category : category  
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

                        <nav class="pagination_type02" aria-label="pagination">
                            <ul>
                                <li class="page_first">
                                    <a href="#" class="page_link" role="button" aria-disabled="true"
                                        aria-label="처음 페이지">처음</a>
                                </li>
                                <li class="page_prev">
                                    <a href="#" class="page_link" role="button" aria-disabled="true"
                                        aria-label="이전 페이지"><i class="ico_arrow_left" aria-hidden="true"></i></a>
                                </li>
                                <li class="active">
                                    <a href=""
                                        class="page_link">1</a>
                                </li>
                                <li>
                                    <a href=""
                                        class="page_link">2</a>
                                </li>
                                <li>
                                    <a href=""
                                        class="page_link">3</a>
                                </li>
                                <li>
                                    <a href=""
                                        class="page_link">4</a>
                                </li>
                                <li>
                                    <a href=""
                                        class="page_link">5</a>
                                </li>
                                <li class="page_next">
                                    <a href=""
                                        class="page_link"><i
                                            class="ico_arrow_right"></i></a>
                                </li>
                                <li class="page_last">
                                    <a href=""
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
                            <ul class="tag_nav">
                                <li class="nav_item">
                                    <a class="nav_link"
                                        href=""
                                       >
                                        1. 중국
                                    </a>
                                </li>
                                <li class="nav_item">
                                    <a class="nav_link"
                                        href=""
                                      >
                                        2. 후쿠시마오염수
                                    </a>
                                </li>
                                <li class="nav_item">
                                    <a class="nav_link"
                                        href=""
                                       >
                                        3. 사설
                                    </a>
                                </li>
                                <li class="nav_item">
                                    <a class="nav_link"
                                        href=""
                                       >
                                        4. 필향만리
                                    </a>
                                </li>
                                <li class="nav_item">
                                    <a class="nav_link" href=""
                                      >
                                        5. sk
                                    </a>
                                </li>
                                <li class="nav_item">
                                    <a class="nav_link"
                                        href=""
                                      >
                                        6. 우병우
                                    </a>
                                </li>
                                <li class="nav_item">
                                    <a class="nav_link"
                                        href=""
                                       >
                                        7. 김명호
                                    </a>
                                </li>
                                <li class="nav_item">
                                    <a class="nav_link"
                                        href=""
                                       >
                                        8. 술술읽는삼국지
                                    </a>
                                </li>
                                <li class="nav_item">
                                    <a class="nav_link"
                                        href=""
                                       >
                                        9. 최준호
                                    </a>
                                </li>
                                <li class="nav_item">
                                    <a class="nav_link"
                                        href=""
                                       >
                                        10. 김종호
                                    </a>
                                </li>
                            </ul>
                        </section>
                        <section class="chain_wrap">
                            <header class="title_wrap">
                                <strong class="title">키워드 관련 기사</strong>
                            </header>
                            <ul class="card_right_list">
                                <li class="card">

                                    <div class="card_body">
                                        <h2 class="headline">
                                            <a href=""
                                              >
                                                우유와 대장암, 뭔 관계길래…통계는 죄다 “우유 안먹은 탓”
                                            </a>
          
                                        </h2>
                                        <div class="meta">
                                            <p class="date">2023.06.11 15:39</p>
                         
                                        </div>
                                    </div>
                                </li>
                                <li class="card">
                                 
                                    <div class="card_body">
                                        <h2 class="headline">
                                            <a href=""
                                               >
                                                95세 판사 "그만 두시라"는 동료와 소송전…美법원 종신직 논란
                                            </a>
                                        </h2>
                                        <div class="meta">
                                            <p class="date">2023.06.12 05:00</p>
                                
                                        </div>
                                    </div>
                                </li>
                                <li class="card">
                                   
                                    <div class="card_body">
                                        <h2 class="headline">
                                            <a href=""
                                              >
                                                손님들 벌벌…'하얏트호텔 3박4일 난동' 조폭 10명 영장청구
                                            </a>
                                        </h2>
                                        <div class="meta">
                                            <p class="date">2023.06.11 22:05</p>
                                 
                                        </div>
                                    </div>
                                </li>
                                <li class="card">
                                  
                                    <div class="card_body">
                                        <h2 class="headline">
                                            <a href="">
                                                "남태현 마약, 나 때림" 폭로 서민재 "평생 반성" 재차 사과
                                            </a>
                                        </h2>
                                        <div class="meta">
                                            <p class="date">2023.06.12 08:57</p>
                          
                                        </div>
                                    </div>
                                </li>
                                <li class="card">
                                  
                                    <div class="card_body">
                                        <h2 class="headline">
                                            <a href=""
                                             >
                                                "양도세 8억 내랍니다"…31년 산 집 팔다 '딱 23일 3주택' 法판단은
                                            </a>
                                        </h2>
                                        <div class="meta">
                                            <p class="date">2023.06.12 07:52</p>
                                    
                                        </div>
                                    </div>
                                </li>
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