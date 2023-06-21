<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

  <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="resources/assets/css/login.css">
    <link rel="stylesheet" href="resources/assets/css/login2.css">
        <link rel="stylesheet" href="resources/assets/css/main8.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

<script type="text/javascript">

$(document).ready(function(){
    if(${not empty msgType}){
       if(${msgType eq "실패 메세지"}){
          $("#messageType").attr("class", "modal-content panel-warning");
       }
       $("#myMessage").modal("show");
    }
 });


function passwordCheck(){
			// 비밀번호 일치 확인 기능
			var memPassword1 = $("#memPassword1").val();
			var memPassword2 = $("#memPassword2").val();
			
			if(memPassword1 != memPassword2){
				$("#passMessage").html("비밀번호가 서로 일치하지 않습니다.");
			} else{
				$("#passMessage").html("");
				$("#memPassword").val(memPassword1);
			}
		}
</script>
   

</head>

<body>

    <div id="wrapper">


        <main id="container">
            <section class="contents">

                <header class="membership_header">
                    <h2 class="logo"><a href="${contextPath}"><img src="resources/images/logo.png" style="margin-left:9px ;"></a></h2>
                    <h1 id="info_header">회원가입</h1>
                    <!-- hide로 숨김 처리 -->
                    <div class="info_m"></div>
                </header>



        




                <form class="form" action="${contextPath}/join.do" method="post">
                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <div class="input_group">
                        <input class="form_control" type="text" name="memID" id="memID" value=""
                            placeholder="아이디를 입력하세요" title="아이디">

                    </div>
                    <div class="input_group">
                        <input onkeyup="passwordCheck()" class="form_control" type="password" name="memPassword1" id="memPassword1"
                            placeholder="비밀번호" title="비밀번호" maxlength="20">

                    </div>
                    <div class="input_group">
                        <input onkeyup="passwordCheck()" class="form_control" type="password" name="memPassword2" id="memPassword2"
                            placeholder="비밀번호를 확인하세요" title="비밀번호" maxlength="20">
                    </div>
                
					
                    <div class="form_check mt12">
                        <span id="passMessage" style="color: rgb(20, 20, 20);      padding-top: 10px;
    padding-bottom: 20px;
                         "></span>
                    </div>
                    
                                    <div class="form_check2 mt123">
                    <span style="    margin-left: 90px;
    margin-bottom: 10px;">관심있는 언론사를 선택해주세요!</span>
                    
                                     </div>
                    
                    
                    
                <div class="form_check mt12" style="margin-left: -20px;">
           
         
		         	<label for="agree1" class="radio_box">
						<input type="checkbox" id="agree1" name="pick" value="조선일보"  />
						<span class="on"></span>
						<span class="ico_1" style="
    width: 45px;
    height: 45px;
						"></span>
						조선일보
					</label>
					<label for="agree2" class="radio_box">
						<input type="checkbox" id="agree2" name="pick" value="중앙일보" />
						<span class="on"></span>
												<span class="ico_2" style="
    width: 45px;
    height: 45px;
						"></span>
						중앙일보
					</label>
					<label for="agree3" class="radio_box">
						<input type="checkbox" id="agree3" name="pick" value="동아일보" />
												<span class="on"></span>
						
												<span class="ico_3" style="
    width: 45px;
    height: 45px;
						"></span>
						동아일보
					</label>		
					<label for="agree4" class="radio_box">
						<input type="checkbox" id="agree4" name="pick" value="경향신문" />
												<span class="on"></span>
						
												<span class="ico_4" style="
    width: 45px;
    height: 45px;
    background-size: 45px auto!important;
    "></span>
						경향신문
					</label>		
					<label for="agree5" class="radio_box">
						<input type="checkbox" id="agree5" name="pick" value="한겨례" />
												<span class="on"></span>
						
												<span class="ico_5" style="
    width: 45px;
    height: 45px;
						"></span>
						한겨례
					</label>
              
                    
                    </div>
     
                    <div class="btn_group mt28">
                        <button type="submit" class="btn btn_black" onclick="">회원가입</button>
                    </div>
                </form>


             


            </section>
        </main>
        <!-- footer -->
        <div id="footer" class="footer footer22">
            <div class="footer_wrap">
                <div class="logo lg_hidden"><a href=""><span class="visually_hidden">The
                            JoongAng</span></a></div>


            </div>
            <footer>

                <div class="footer_info">
                    <div class="footer_wrap">

                        <div class="logo sm_hidden md_hidden"><a href=""><span
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
