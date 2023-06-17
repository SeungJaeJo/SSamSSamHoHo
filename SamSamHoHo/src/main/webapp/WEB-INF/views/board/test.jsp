<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  
  	  // Ajax에서 csrf 토큰을 사용하기위한 변수설정 >> 비동기는 headerName
  	  var csrfHeaderName = "${_csrf.headerName}";
  	  var csrfTokenValue = "${_csrf.token}";
  
  	  $(document).ready(function(){
  		  // HTML이 다 로딩되고 작동하는 함수
  		  loadList();
  	  });
  
  
	  function loadList(){
		  // BoardController에서 게시글 전체목록을 가져오는 기능
		  // JavaScript에서 객체 표현법 {key:value} -> json
		  $.ajax({
			  url : "board/Qnews",
			  type : "get",
			  dataType : "json",
			  success : makeView,
			  error : function(){ alert("error"); }
		  });
	  }
	                           //           0              1         2
	  function makeView(data){ // data = [{title="하하"}, {     }, {     }]
		  console.log(data);
		  var listHtml = "<table class='table table-bordered'>";
		  listHtml += "<tr>";
		  listHtml += "<td>제목</td>";
		  listHtml += "</tr>";
		  var list ;
		  // 반복문을 통해 게시글을 만들어주는 부분 (main부분)
		  $.each(data, function(index, obj){
			  listHtml += "<tr>";
			  listHtml += "<td><a >" + obj.title + "</a></td>";
			  listHtml += "</tr>";
			  
			  listHtml += "</td></tr>";
			  
				
		  console.log(obj.title);
		  });
		  
		
		  listHtml += "</table>";
		  $("#view").html(listHtml);
	
		  
		  
	  }
	                           
    
  
  
  </script>
</head>
<body>
 
	<div class="container">
	  <jsp:include page="../common/header.jsp"></jsp:include>
	  <h2>Spring MVC05</h2>
	  <div class="panel panel-default">
	    <div class="panel-heading">Board</div>
	    <div class="panel-body" id="view">

		</div>
		
		<!-- 글쓰기 폼 -->
		<div class="panel-body" style="display:none;" id="wform">
			<form id="frm">
				<input type="hidden" name="memID" value="${mvo.memID}">
				<table class="table">
					<tr>
						<td>제목</td>
						<td><input id="title" type="text" name="title" class="form-control"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea id="content" row="7" cols="" name="content" class="form-control"></textarea></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><input readonly="readonly" value=${mvo.memName} id="writer" type="text" name="writer" class="form-control"></td>					</tr>
					<tr>
						<td align="center" colspan="2">
							<button class="btn btn-sm btn-success" type="button" onclick="goInsert()">등록</button>
							<button class="btn btn-sm btn-warning" type="button" id="fclear">취소</button>
							<button class="btn btn-sm btn-info" type="button" onclick="goList()">리스트로가기</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	    <div class="panel-footer">스프링게시판-박병관</div>
	  </div>
	</div>

</body>
</html>




