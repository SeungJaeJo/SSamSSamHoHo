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
<link rel="stylesheet" href="resources/assets/css/search1.css">

</head>

<body style="transform: none;">
 
    <div id="wrapper">
        <header id="header" class="header position_ab">
            <div class="uh">
                <a href= "${contextPath}" class="logo">
                    <img width="100" height="26" src="resources/images/logo.png">
                </a>
                <div class="header_right_area">
                    
          <c:if test="${empty mvo}">
							<ul class="logout sm_hidden">
						<li><a href="${contextPath}/loginForm.do">로그인</a></li>
						<li><a href="${contextPath}/joinForm.do">회원가입</a></li>
									</ul>
    					  </c:if>				
            <c:if test="${not empty mvo}">
                        	<ul class="logout sm_hidden">
						<li><a> ${mvo.mem_id }님</a></li>
						<li><a href="${contextPath}/logout.do">로그아웃</a></li>
									</ul>
                        
      
      
			      </c:if>
			      
                 
                    <div class="header_option_area">
                        <button type="button" class="btn_search" onclick=""><i class="ico_search"></i></button>
                    </div>
                                        <div class="Ngnb_search _search_content is_hidden">
                        <form action="testSearch.do" class="search_form"
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
                                        
	                                        <script type="text/javascript">
	                                        	
$(document).ready(function(){
									  			
									  			makeKSearch();
										  	});   
										  	
											  
											  function makeKSearch(){
												  $.ajax({
													  url : "board/keySearch",
													  type : "get",
													  dataType : "json",
													  success : makeKSList,
													  error : function(data){
														  alert('error'); }
													  });
	                                        
											  };
											  
											  function makeKSList(data){
												  
												  var listHtml = "";
												  $.each(data, function(index, obj){
													
													  listHtml += "<div class='item33'>";
													  listHtml += "<span class='icon'>"+obj.keyword[0]+"</span>";
													  listHtml += "<span class='itemsname'>"+obj.keyword+"</span>";
													  listHtml += "</div>";
													  
												  });
												  $(".container55").html(listHtml);
											  };
	                                        
	                                        
	                                        </script>

                                         
                                        </div>
                                      
                                    </div>
                                </div>

            
                            </div>
                        </form>
                    </div>

                </div>
            </div>
         
   
       
        
          
        </header>
        <main role="main" id="container">
            <section class="contents">
                <header id="sticky" class="section_header_wrap m_unsticky">
                    <strong class="section_title">${query}</strong>
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
                                    		
                                    	
                                    			var query = `${query}` ;
                                    			console.log(query);
  
										  	  var csrfHeaderName = "${_csrf.headerName}";
										  	  var csrfTokenValue = "${_csrf.token}";
										  
										  	 $(document).ready(function(){
										  	
									  			iii(query);
										  	});   
										  	
										
											  
											  function iii(query){
												  $.ajax({
													  url : "board/search",
													  data : {
														  query : query
													  },						  
													  type : "get",
													  dataType : "json",
													  success :  makeiii,
													  error : function(data){
														  alert('error');}
													  
														  
														
											  	});
											  }
											  function makeiii(data){ 
												  var listHtml = "";
												  $.each(data, function(index, obj){
													    listHtml += "<li class='card'>";
													    listHtml += "<div class='card_body'>";
													  	listHtml += "<h2 class='headline'>";
													  	listHtml += "<a href='${contextPath}/newsdetailForm.do?idx=" + obj.idx + "'>"+obj.title+"</a></h2>";
													  	listHtml += "<p class='description sm_hidden'>"+obj.summ_content+"</p>";
													  	listHtml += "<div class='meta'>";
														listHtml += "<p class='source'>"+obj.press+"</p>";
														listHtml += "<p class='date'>"+obj.date+"</p>"; 
														listHtml += "</div></li>";
													  
													  });
						                       
													  $("#cateList").html(listHtml);
													  
												  
											  };
											
					                       
					                        
					                    /*     function makeKey(category){
												
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
														listHtml += "<a class='nav_link i"+(index+1)+"' id='key"+(index+1)+"'>"+(index+1)+". "+obj.keyword+"</a>";
														listHtml += "</li>";
														
													}else{
														listHtml += "<li class='nav_item'>";
														listHtml += "<a class='nav_link i"+(index+1)+"' id='key"+(index+1)+"'>"+(index+1)+". "+obj.keyword+"</a>";
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
			                            	
			                            	
												
											} */
		                            	
											
											  
										  </script>
										
                             
                         
                           
                        </ul>
                      

                        <nav class="pagination_type02" aria-label="pagination">
                            <ul>
                                <li class="page_first">
                                    <a  class="page_link btn_first" role="button" 
                                        aria-label="처음 페이지">처음</a>
                                </li>
                                <li class="page_prev" >
                                    <a  class="page_link btn_prev" role="button"
                                        aria-label="이전 페이지"><i class="ico_arrow_left" aria-hidden="true"></i></a>
                                </li>
                                <li id="view_page_cnt">
                                
                                </li>
                                <li class="page_next">
                                    <a
                                        class="page_link btn_next" role="button"><i
                                            class="ico_arrow_right"></i></a>
                                </li>
                                <li class="page_last">
                                    <a 
                                        class="page_link btn_last">마지막</a>
                                </li>
                            </ul>
                        </nav>
                    </section>
                    
                </div>
            </section>
        </main>
        
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