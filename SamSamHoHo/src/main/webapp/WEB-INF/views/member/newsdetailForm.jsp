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
	  	
	
</head>
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

        <div id="ct_wrap" class="ct_wrap">
         
            <div class="ct_scroll_wrapper">
              
                <div class="newsct_wrapper _GRID_TEMPLATE_COLUMN _STICKY_CONTENT">
                    <div id="ct" class="newsct" role="main">
                        <div class="media_end_head go_trans">
                            <div class="media_end_head_top">
                                <a href="" class="media_end_head_top_logo">
                                    <img src="https://mimgnews.pstatic.net/image/upload/office_logo/023/2020/09/03/logo_023_6_20200903164340.png" width="" height="32" alt="조선일보" title="조선일보"
                                        class="media_end_head_top_logo_img light_type">

                                </a>

                            </div>
                            <div class="media_end_head_title">
                                <h2 id="title_area" class="media_end_head_headline"><span>이사할 집에 먼저 전입신고한 외국인 있는지 확인
                                        가능해진다</span></h2>
                            </div>
                            <div class="media_end_head_info nv_notrans ">
                                <div class="media_end_head_info_datestamp">
                                    <div class="media_end_head_info_datestamp_bunch">
                                        <em class="media_end_head_info_datestamp_term">입력</em><span
                                            class="media_end_head_info_datestamp_time _ARTICLE_DATE_TIME"
                                            >2023.06.14. 오전 9:44</span>
                                    </div>
                                    <a href="" target="" class="media_end_head_origin_link">기사원문</a>
                                </div>
                                <div class="media_end_head_journalist">
                                    <a href="" class="media_end_head_journalist_box">
                                        <em class="media_end_head_journalist_name">김형민 기자</em>
                                    </a>
                                    <div id="_JOURNALIST_LAYER" class="media_end_head_journalist_layer _JOURNALIST_CARD"
                                        style="display: none;">
                                        <ul class="media_end_head_journalist_layer_list">
                                            <li class="media_end_head_journalist_layer_item _SUBSCRIBE_ELE"
                                                >
                                                <div
                                                    class="media_end_head_journalist_layer_div _LIKE_HIDE _LAZY_LOADING_WRAP">
                                                    <div
                                                        class="media_end_head_journalist_layer_thumb _LAZY_LOADING_ERROR_HIDE">
                                                    </div>
                                                    <div class="media_end_head_journalist_layer_text _reactionModule"
                                                        id="_cheer_55538_layer" data-sid="JOURNALIST" data-cid="55538"
                                                        data-ccounttype="period" data-loaded="1" data-facetype="0"
                                                        style="visibility: visible;">
                                                        <div class="media_end_head_journalist_layer_title">
                                                            <em class="media_end_head_journalist_layer_name">김형민 기자</em>
                                                            <div class="media_end_head_journalist_layer_btns _JOURNALIST_ID"
                                                                data-journalistid="55538">
                                                                <button type="button"
                                                                    class="media_end_head_journalist_btn_subscribe _SUBSCRIBE"
                                                                    data-channelkey="JOURNALIST_55538"
                                                                    data-clk="umsubs">구독</button>
                                                                <button type="button"
                                                                    class="media_end_head_journalist_btn_subscribe is_on _UNSUBSCRIBE"
                                                                    data-channelkey="JOURNALIST_55538"
                                                                    data-type="journalist" data-messagevalue="김형민"
                                                                    data-clk="umunsubs"
                                                                    style="display:none;">구독중</button>
                                                            </div>
                                                        </div>
                                                        <dl class="media_end_head_journalist_layer_subscriber _button off"
                                                            data-type="cheer" data-ishiddenzerocount="true"
                                                            data-ishiddenlabelaszerocount="true" aria-pressed="false">
                                                            <div
                                                                class="media_end_head_journalist_layer_definition_wrap _SUBSCRIBE_COUNT_TEXT_WRAP">
                                                                <dt>구독자</dt>
                                                                <dd class="_SUBSCRIBE_COUNT_TEXT" data-maxcount="99999">
                                                                    1,759</dd>
                                                            </div>
                                                            <div
                                                                class="media_end_head_journalist_layer_definition_wrap">
                                                                <dt class="_label">응원수</dt>
                                                                <dd class="_count">1,697</dd>
                                                            </div>
                                                        </dl>
                                                    </div>
                                                    <a href="https://media.naver.com/journalist/277/55538"
                                                        class="media_end_head_journalist_layer_link"
                                                        data-clk="ummore">더보기</a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div id="contents" class="newsct_body">
                            <div id="newsct_article" class="newsct_article _article_body">
                                <div id="dic_area" class="go_trans _article_content"
                                    style="-webkit-tap-highlight-color: rgba(0,0,0,0)">
                                    앞으로 주택을 매입 또는 임차하거나 근저당권을 설정할 때 먼저 전입신고한 외국인이 있는지 확인할 수 있게 된다.<br><br>
                                 <br><br>법무부는 14일부터 특정 주소지에 주택임대차 대항력이 있는 외국인 유무를 사전에 파악할 수 있도록 하는 '외국인체류확인서
                                    열람·교부' 제도를 시행한다고 밝혔다.<br><br>그동안은 특정 건물에 선순위 대항력을 가진 외국인이 전입해 있어도 그 여부를 확인할 수 없어서
                                    주택을 매입·임차할 때 예상치 못한 권리행사 제한이 발생할 우려가 있었다.<br><br>이제는 임대차계약서, 매매계약서 등 신청 요건을 증명할 수 있는
                                    서류를 첨부해 출입국·외국인관서나 읍·면·동사무소에 신청하면 외국인체류확인서를 볼 수 있다.<br><br>법무부 관계자는 "실생활에 불편을 초래하거나
                                    부족한 부분을 계속 발굴하고 개선하겠다"고 밝혔다.<br><br>
                                </div>
                            </div>
                            <div class="byline">
                                <p class="byline_p">
                                    <span class="byline_s">김형민 기자 khm193@asiae.co.kr</span>
                                </p>
                            </div>
    
                        

  

                     
                            <div class="media_end_linked">
                                <h3 class="media_end_linked_title">
                                    <a href="https://www.asiae.co.kr/ " class="media_end_linked_title_inner">
                                        <img src="https://mimgnews.pstatic.net/image/upload/office_logo/023/2020/09/03/logo_023_6_20200903164340.png"
                                            width="" height="26" alt="조선일보" title="조선일보"
                                            class="media_end_linked_title_img light_type">

                                    </a>
                                    주요뉴스<span class="media_end_linked_title_desc">해당 언론사에서 선정하며 <em>언론사 페이지(아웃링크)</em>로
                                        이동해 볼 수 있습니다.</span>
                                </h3>
                                <ul class="media_end_linked_list">
                                    <li class="media_end_linked_item"><a
                                            href="https://view.asiae.co.kr/article/2023061310312563527?utm_source=news.naver.com&amp;utm_medium=referral&amp;utm_campaign=2023061409433318595"
                                            target="_blank" class="media_end_linked_item_inner" data-clk="are.link"
                                            data-gdid="277"
                                            data-extra="{&quot;lk&quot;:{&quot;oid&quot;:&quot;277&quot;,&quot;aid&quot;:&quot;4132d520a8bdab60&quot;}}">"싱하이밍,
                                            1박 1000만원 울릉도서 접대 받아"</a></li>
                                    <li class="media_end_linked_item"><a
                                            href="https://view.asiae.co.kr/article/2023061310315169765?utm_source=news.naver.com&amp;utm_medium=referral&amp;utm_campaign=2023061409433318595"
                                            target="_blank" class="media_end_linked_item_inner" data-clk="are.link"
                                            data-gdid="277"
                                            data-extra="{&quot;lk&quot;:{&quot;oid&quot;:&quot;277&quot;,&quot;aid&quot;:&quot;42ad620364fb76dd&quot;}}">'데뷔
                                            14년차' 30대 여배우 음주운전…면허 취소 수준</a></li>
                                    <li class="media_end_linked_item"><a
                                            href="https://view.asiae.co.kr/article/2023061307441515621?utm_source=news.naver.com&amp;utm_medium=referral&amp;utm_campaign=2023061409433318595"
                                            target="_blank" class="media_end_linked_item_inner" data-clk="are.link"
                                            data-gdid="277"
                                            data-extra="{&quot;lk&quot;:{&quot;oid&quot;:&quot;277&quot;,&quot;aid&quot;:&quot;b2bf479712b705c9&quot;}}">'대전판
                                            돌려차기 사건' 20대 女…"윗입술 15방 꿰매고 머리에 멍"</a></li>
                                    <li class="media_end_linked_item"><a
                                            href="https://view.asiae.co.kr/article/2023061309015507212?utm_source=news.naver.com&amp;utm_medium=referral&amp;utm_campaign=2023061409433318595"
                                            target="_blank" class="media_end_linked_item_inner" data-clk="are.link"
                                            data-gdid="277"
                                            data-extra="{&quot;lk&quot;:{&quot;oid&quot;:&quot;277&quot;,&quot;aid&quot;:&quot;0fff095be75e1305&quot;}}">"비행기
                                            못 뜨게 해"…국토부 직원 딸 채용 탈락에 항공사 '발칵'</a></li>
                                    <li class="media_end_linked_item"><a
                                            href="https://view.asiae.co.kr/article/2023061308071506755?utm_source=news.naver.com&amp;utm_medium=referral&amp;utm_campaign=2023061409433318595"
                                            target="_blank" class="media_end_linked_item_inner" data-clk="are.link"
                                            data-gdid="277"
                                            data-extra="{&quot;lk&quot;:{&quot;oid&quot;:&quot;277&quot;,&quot;aid&quot;:&quot;055763df73807101&quot;}}">[단독]예산
                                            빠듯한데…장관 취임 1년 만에 해외 출장비 '3억'</a></li>
                                </ul>
                            </div>
                            
                  

                            <div class="ends_addition" id="endAdditionContainer">


                            
                                <div id="spiLayer" style="">
                                    
                                </div>

                              
                            </div>
                            <div class="_VALID_SERIES" data-component-id=""></div>
                            <div class="media_end_linked_more">
                                <div class="media_end_linked_more_inner">
                                    <a href="https://media.naver.com/press/277" class="media_end_linked_more_link"
                                        data-clk="phome" data-gdid="277"><em
                                            class="media_end_linked_more_point">조선일보</em> 언론사홈 바로가기</a>
                                </div>
                            </div>
                      

                        </div>
                    </div>
                 






                </div>
                <div class="outside_area _OUTSIDE_AREA">
                    <div class="outside_area_inner _GRID_TEMPLATE_COLUMN_ASIDE _OUTSIDE_AREA_INNER">
                        <div class="rankingnews mobile_hidden">
                            <div class="ra_head">
                                <strong class="ra_title"><em class="ra_highlight">조선일보</em> 헤드라인</strong>
                                <a href="https://media.naver.com/press/277" class="media_more"
                                      ><span class="blind">더보기</span></a>
                            </div>
                            <div class="ra_area">
                                <div class="flick">
                                    <div class="flick-container">
                                        <div class="flick-panel">
                                            <ul class="ranking_list">
                                                <li class="rl_item _LAZY_LOADING_WRAP"
                                                    data-loading-error-allowed="true">
                                                    <a href="/article/277/0005273417" class="rl_link_end"
                                                          >
                                                        <div class="rl_content">
                                                            <p class="rl_txt">SG사태와 닮은 '5개 종목 하한가'…주식 카페 운영자 "증권사 탓"</p>
                                                            <div class="rl_time">1시간전</div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="rl_item _LAZY_LOADING_WRAP"
                                                    data-loading-error-allowed="true">
                                                    <a href="/article/277/0005273498" class="rl_link_end"
                                                          >
                                                        <div class="rl_content">
                                                            <p class="rl_txt">주담대 변동금리 0.12%P 인상…대출금리 추가상승 조짐</p>
                                                            <div class="rl_time">24분전</div>
                                                        </div>
                                                        
                                                    </a>
                                                </li>
                                                <li class="rl_item _LAZY_LOADING_WRAP"
                                                    data-loading-error-allowed="true">
                                                    <a href="/article/277/0005273453" class="rl_link_end"
                                                          >
                                                        <div class="rl_content">
                                                            <p class="rl_txt">결혼 알고도 '골프→호텔 불륜'…1200만원 위자료</p>
                                                            <div class="rl_time">1시간전</div>
                                                        </div>
                                                     
                                                    </a>
                                                </li>
                                                <li class="rl_item _LAZY_LOADING_WRAP"
                                                    data-loading-error-allowed="true">
                                                    <a href="/article/277/0005273457" class="rl_link_end"
                                                          >
                                                        <div class="rl_content">
                                                            <p class="rl_txt">美시애틀서 한인부부에 '묻지마 총격'…임신부 아내·태어난 아기 참변</p>
                                                            <div class="rl_time">57분전</div>
                                                        </div>
                                                     
                                                    </a>
                                                </li>
                                                <li class="rl_item _LAZY_LOADING_WRAP"
                                                    data-loading-error-allowed="true">
                                                    <a href="/article/277/0005273212" class="rl_link_end"
                                                          >
                                                        <div class="rl_content">
                                                            <p class="rl_txt">"대체 주차를 어떻게 한거지" 대만 주택가 '옥상주차'</p>
                                                            <div class="rl_time">17시간전</div>
                                                        </div>
                                                      
                                                    </a>
                                                </li>
                                                <li class="rl_item _LAZY_LOADING_WRAP"
                                                    data-loading-error-allowed="true">
                                                    <a href="/article/277/0005273435" class="rl_link_end"
                                                          >
                                                        <div class="rl_content">
                                                            <p class="rl_txt">커피 한 잔에 9시간 카공족…"땅 파서 장사하나" 점주들 분통</p>
                                                            <div class="rl_time">1시간전</div>
                                                        </div>
                                                 
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="rankingnews optional_hidden _FLICKING_WRAP _OFFICE_RANKING_ALL _PERSIST_META">
                            <div class="ra_head">
                                <strong class="ra_title"><em class="ra_highlight">조선일보</em> 랭킹 뉴스</strong>
                                <span class="ra_time _AGGREGATION_TEXT_LIST">오전 8시~9시까지 집계한 결과입니다.</span>
                                <span class="ra_time _AGGREGATION_TEXT_LIST" style="display:none;">오전 6시~9시까지 집계한
                                    결과입니다.</span>
                                <a href="https://media.naver.com/press/277/ranking" class="media_more _MORE_URL_LIST"
                                 ><span class="blind">더보기</span></a>
                                <a href="https://media.naver.com/press/277/ranking?type=comment"
                                    class="media_more _MORE_URL_LIST"
                                    style="display:none;"><span class="blind">더보기</span></a>
                            </div>

                            <div class="ra_area">
                                <div class="ra_tab _FLICKING_TAB_WRAP">
                                    <ul class="ra_tab_list">
                                        <li class="ra_tab_item _FLICKING_TAB on"
                                            style="opacity: 1;">
                                            <a href="#" class="ra_tab_a">많이 본</a>
                                        </li>
                                        <li class="ra_tab_item _FLICKING_TAB"
                                            style="opacity: 1;">
                                            <a href="#" class="ra_tab_a">댓글 많은</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="flick" style="height:442px;">
                                    <div class="flick-container _FLICKING"
                                        style="height: 442px; opacity: 1; overflow: hidden; box-sizing: border-box; touch-action: pan-y; user-select: none; -webkit-user-drag: none; padding: 0px;">
                                        <div class="eg-flick-container"
                                            style="position: relative; z-index: 2000; width: 100%; height: 100%; top: 0px; transform: translate(-330px, 0px); will-change: transform;">
                                            <div class="flick-panel eg-flick-panel"
                                                style="position: absolute; width: 330px; height: 100%; box-sizing: border-box; top: 0px; left: 0px; transform: translate(100%, 0px); will-change: transform;">
                                                <ul class="ranking_list _FLICKING_CONTENT" data-index="0"
                                                    style="margin-top: 0;">
                                                    <li class="rl_item _LAZY_LOADING_WRAP"
                                                        data-loading-error-allowed="true">
                                                        <a href="/article/277/0005273345?ntype=RANKING"
                                                            class="rl_link_end"  >
                                                            <i class="rl_ranking">1</i>
                                                            <div class="rl_content">
                                                                <p class="rl_txt">"내 집인데 왜" 층간흡연 자제 부탁한 임산부에 보복</p>
                                                                <div class="rl_time">11시간전</div>
                                                            </div>
                                                          
                                                        </a>
                                                    </li>
                                                    <li class="rl_item _LAZY_LOADING_WRAP"
                                                        data-loading-error-allowed="true">
                                                        <a href="/article/277/0005273380?ntype=RANKING"
                                                            class="rl_link_end"  >
                                                            <i class="rl_ranking">2</i>
                                                            <div class="rl_content">
                                                                <p class="rl_txt">900원대 엔화 하락에 보름새 1조원 사재기…엔화예금 폭증</p>
                                                                <div class="rl_time">3시간전</div>
                                                            </div>
                                                          
                                                        </a>
                                                    </li>
                                                    <li class="rl_item _LAZY_LOADING_WRAP"
                                                        data-loading-error-allowed="true">
                                                        <a href="/article/277/0005273212?ntype=RANKING"
                                                            class="rl_link_end"  >
                                                            <i class="rl_ranking">3</i>
                                                            <div class="rl_content">
                                                                <p class="rl_txt">"대체 주차를 어떻게 한거지" 대만 주택가 '옥상주차'</p>
                                                                <div class="rl_time">17시간전</div>
                                                            </div>
                                                          
                                                        </a>
                                                    </li>
                                                    <li class="rl_item _LAZY_LOADING_WRAP"
                                                        data-loading-error-allowed="true">
                                                        <a href="/article/277/0005273333?ntype=RANKING"
                                                            class="rl_link_end"  >
                                                            <i class="rl_ranking">4</i>
                                                            <div class="rl_content">
                                                                <p class="rl_txt">"죽을 때 가져갈 것도 아닌데" 90세 할머니 '10억 쾌척'</p>
                                                                <div class="rl_time">13시간전</div>
                                                            </div>
                                                         
                                                        </a>
                                                    </li>
                                                    <li class="rl_item _LAZY_LOADING_WRAP"
                                                        data-loading-error-allowed="true">
                                                        <a href="/article/277/0005273415?ntype=RANKING"
                                                            class="rl_link_end"  >
                                                            <i class="rl_ranking">5</i>
                                                            <div class="rl_content">
                                                                <p class="rl_txt">"싫으면 뒤로 가세요" 구경만 해도 개인정보 요구하는 샤넬</p>
                                                                <div class="rl_time">1시간전</div>
                                                            </div>
                                                         
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="flick-panel eg-flick-panel"
                                                style="position: absolute; width: 330px; height: 100%; box-sizing: border-box; top: 0px; left: 0px; transform: translate(200%, 0px); will-change: transform;">
                                                <ul class="ranking_list _FLICKING_CONTENT" data-index="0"
                                                    style="margin-top: 0;">
                                                    <li class="rl_item _LAZY_LOADING_WRAP"
                                                        data-loading-error-allowed="true">
                                                        <a href="/article/277/0005273305?ntype=RANKING"
                                                            class="rl_link_end"  >
                                                            <i class="rl_ranking">1</i>
                                                            <div class="rl_content">
                                                                <p class="rl_txt">"바가지 안 씌우겠습니다" 소래포구 상인들 엎드려 사죄</p>
                                                                <div class="rl_time">15시간전</div>
                                                            </div>
                                                        
                                                        </a>
                                                    </li>
                                                    <li class="rl_item _LAZY_LOADING_WRAP"
                                                        data-loading-error-allowed="true">
                                                        <a href="/article/277/0005273345?ntype=RANKING"
                                                            class="rl_link_end"  >
                                                            <i class="rl_ranking">2</i>
                                                            <div class="rl_content">
                                                                <p class="rl_txt">"내 집인데 왜" 층간흡연 자제 부탁한 임산부에 보복</p>
                                                                <div class="rl_time">11시간전</div>
                                                            </div>
                                                           
                                                        </a>
                                                    </li>
                                                    <li class="rl_item _LAZY_LOADING_WRAP"
                                                        data-loading-error-allowed="true">
                                                        <a href="/article/277/0005273333?ntype=RANKING"
                                                            class="rl_link_end"  >
                                                            <i class="rl_ranking">3</i>
                                                            <div class="rl_content">
                                                                <p class="rl_txt">"죽을 때 가져갈 것도 아닌데" 90세 할머니 '10억 쾌척'</p>
                                                                <div class="rl_time">13시간전</div>
                                                            </div>
                                                            
                                                        </a>
                                                    </li>
                                                    <li class="rl_item _LAZY_LOADING_WRAP"
                                                        data-loading-error-allowed="true">
                                                        <a href="/article/277/0005273431?ntype=RANKING"
                                                            class="rl_link_end"  >
                                                            <i class="rl_ranking">4</i>
                                                            <div class="rl_content">
                                                                <p class="rl_txt">[속보]대통령실 "尹, 쉬운수능 지시 아냐…교과과정 외 분야 배제"
                                                                </p>
                                                                <div class="rl_time">1시간전</div>
                                                            </div>
                                                         
                                                        </a>
                                                    </li>
                                                    <li class="rl_item _LAZY_LOADING_WRAP"
                                                        data-loading-error-allowed="true">
                                                        <a href="/article/277/0005273435?ntype=RANKING"
                                                            class="rl_link_end"  >
                                                            <i class="rl_ranking">5</i>
                                                            <div class="rl_content">
                                                                <p class="rl_txt">커피 한 잔에 9시간 카공족…"땅 파서 장사하나" 점주들 분통</p>
                                                                <div class="rl_time">1시간전</div>
                                                            </div>
                                                          
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="flick-panel eg-flick-panel"
                                                style="position: absolute; width: 330px; height: 100%; box-sizing: border-box; top: 0px; left: 0px; transform: translate(300%, 0px); will-change: transform;">
                                                <ul class="ranking_list _FLICKING_CONTENT" data-index="0"
                                                    style="margin-top: 0;">
                                                    <li class="rl_item _LAZY_LOADING_WRAP"
                                                        data-loading-error-allowed="true">
                                                        <a href="/article/277/0005273345?ntype=RANKING"
                                                            class="rl_link_end"  >
                                                            <i class="rl_ranking">1</i>
                                                            <div class="rl_content">
                                                                <p class="rl_txt">"내 집인데 왜" 층간흡연 자제 부탁한 임산부에 보복</p>
                                                                <div class="rl_time">11시간전</div>
                                                            </div>
                                                         
                                                        </a>
                                                    </li>
                                                    <li class="rl_item _LAZY_LOADING_WRAP"
                                                        data-loading-error-allowed="true">
                                                        <a href="/article/277/0005273380?ntype=RANKING"
                                                            class="rl_link_end"  >
                                                            <i class="rl_ranking">2</i>
                                                            <div class="rl_content">
                                                                <p class="rl_txt">900원대 엔화 하락에 보름새 1조원 사재기…엔화예금 폭증</p>
                                                                <div class="rl_time">3시간전</div>
                                                            </div>
                                                         
                                                        </a>
                                                    </li>
                                                    <li class="rl_item _LAZY_LOADING_WRAP"
                                                        data-loading-error-allowed="true">
                                                        <a href="/article/277/0005273212?ntype=RANKING"
                                                            class="rl_link_end"  >
                                                            <i class="rl_ranking">3</i>
                                                            <div class="rl_content">
                                                                <p class="rl_txt">"대체 주차를 어떻게 한거지" 대만 주택가 '옥상주차'</p>
                                                                <div class="rl_time">17시간전</div>
                                                            </div>
                                                         
                                                        </a>
                                                    </li>
                                                    <li class="rl_item _LAZY_LOADING_WRAP"
                                                        data-loading-error-allowed="true">
                                                        <a href="/article/277/0005273333?ntype=RANKING"
                                                            class="rl_link_end"  >
                                                            <i class="rl_ranking">4</i>
                                                            <div class="rl_content">
                                                                <p class="rl_txt">"죽을 때 가져갈 것도 아닌데" 90세 할머니 '10억 쾌척'</p>
                                                                <div class="rl_time">13시간전</div>
                                                            </div>
                                                         
                                                        </a>
                                                    </li>
                                                    <li class="rl_item _LAZY_LOADING_WRAP"
                                                        data-loading-error-allowed="true">
                                                        <a href="/article/277/0005273415?ntype=RANKING"
                                                            class="rl_link_end"  >
                                                            <i class="rl_ranking">5</i>
                                                            <div class="rl_content">
                                                                <p class="rl_txt">"싫으면 뒤로 가세요" 구경만 해도 개인정보 요구하는 샤넬</p>
                                                                <div class="rl_time">1시간전</div>
                                                            </div>
                                                           
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="flick-panel eg-flick-panel"
                                                style="position: absolute; width: 330px; height: 100%; box-sizing: border-box; top: 0px; left: 0px; transform: translate(0%, 0px); will-change: transform;">
                                                <ul class="ranking_list _FLICKING_CONTENT" data-index="0"
                                                    style="margin-top: 0;">
                                                    <li class="rl_item _LAZY_LOADING_WRAP"
                                                        data-loading-error-allowed="true">
                                                        <a href="/article/277/0005273305?ntype=RANKING"
                                                            class="rl_link_end"  >
                                                            <i class="rl_ranking">1</i>
                                                            <div class="rl_content">
                                                                <p class="rl_txt">"바가지 안 씌우겠습니다" 소래포구 상인들 엎드려 사죄</p>
                                                                <div class="rl_time">15시간전</div>
                                                            </div>
                                                          
                                                        </a>
                                                    </li>
                                                    <li class="rl_item _LAZY_LOADING_WRAP"
                                                        data-loading-error-allowed="true">
                                                        <a href="/article/277/0005273345?ntype=RANKING"
                                                            class="rl_link_end"  >
                                                            <i class="rl_ranking">2</i>
                                                            <div class="rl_content">
                                                                <p class="rl_txt">"내 집인데 왜" 층간흡연 자제 부탁한 임산부에 보복</p>
                                                                <div class="rl_time">11시간전</div>
                                                            </div>
                                                         
                                                        </a>
                                                    </li>
                                                    <li class="rl_item _LAZY_LOADING_WRAP"
                                                        data-loading-error-allowed="true">
                                                        <a href="/article/277/0005273333?ntype=RANKING"
                                                            class="rl_link_end"  >
                                                            <i class="rl_ranking">3</i>
                                                            <div class="rl_content">
                                                                <p class="rl_txt">"죽을 때 가져갈 것도 아닌데" 90세 할머니 '10억 쾌척'</p>
                                                                <div class="rl_time">13시간전</div>
                                                            </div>
                                                        
                                                        </a>
                                                    </li>
                                                    <li class="rl_item _LAZY_LOADING_WRAP"
                                                        data-loading-error-allowed="true">
                                                        <a href="/article/277/0005273431?ntype=RANKING"
                                                            class="rl_link_end"  >
                                                            <i class="rl_ranking">4</i>
                                                            <div class="rl_content">
                                                                <p class="rl_txt">[속보]대통령실 "尹, 쉬운수능 지시 아냐…교과과정 외 분야 배제"
                                                                </p>
                                                                <div class="rl_time">1시간전</div>
                                                            </div>
                                                        
                                                        </a>
                                                    </li>
                                                    <li class="rl_item _LAZY_LOADING_WRAP"
                                                        data-loading-error-allowed="true">
                                                        <a href="/article/277/0005273435?ntype=RANKING"
                                                            class="rl_link_end"  >
                                                            <i class="rl_ranking">5</i>
                                                            <div class="rl_content">
                                                                <p class="rl_txt">커피 한 잔에 9시간 카공족…"땅 파서 장사하나" 점주들 분통</p>
                                                                <div class="rl_time">1시간전</div>
                                                            </div>
                                                        
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



</body>

</html>