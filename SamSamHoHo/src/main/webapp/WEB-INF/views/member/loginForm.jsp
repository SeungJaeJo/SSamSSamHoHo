<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

  
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="resources/assets/css/login.css">
    <link rel="stylesheet" href="resources/assets/css/login2.css">

</head>

<body>



    <div id="wrapper">


        <main id="container">
            <section class="contents">




                <header class="membership_header">
                    <h2 class="logo"><a href="https://www.joongang.co.kr"><img src="resources/images/logo.png" style="margin-left:9px ;"></a></h2>
                    <h1 id="info_header">로그인</h1>
                    <div class="info_m"></div>
                </header>







                <form class="form" id="emailForm" name="" method="">
                    <input type="hidden" name="" value="">
                    <input type="hidden" name="" value="">
                    <div class="input_group">
                        <input class="form_control" type="email" name="" id="txtEmail" value=""
                            placeholder="아이디를 입력하세요" title="이메일" tabindex="1">
                        <button type="button" class="btn btn_x">
                            <i class="ico_x"></i><span class="visually_hidden">취소버튼</span>
                        </button>
                    </div>
                    <div class="input_group">
                        <input class="form_control" type="password" name="" id="txtPasswd"
                            placeholder="비밀번호를 입력하세요" title="비밀번호" maxlength="20" tabindex="2">
                        <button type="button" class="btn btn_eye">
                            <i class="ico_eye"></i><span class="visually_hidden">패스워드 확인</span>
                        </button>
                    </div>
                    <!-- hide로 숨김 처리 -->
                    <p class="error font_primary hide" id="err_txt"></p>
                    <div class="form_check mt12">

                        <a href="${contextPath}/joinForm.do">회원가입
                        </a>
                    </div>
                    <div class="btn_group mt28">
                        <button type="submit" class="btn btn_black" onclick="" tabindex="4">
                            로그인</button>
                    </div>
                </form>





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



</body>

</html>
