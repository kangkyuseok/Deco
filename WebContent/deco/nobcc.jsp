<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈  화면</title>
<link rel="stylesheet" href="../css/bcc.css">
</head>
<body>
<h1 id="title"><img id="icon" alt="icon" src="../img/icon2.png">deco</h1>
	<nav class="menu">
	<ul>
		<li> <a class="na" href="">전시, 공연</a> </li>
		<li> <a  class="na" href="">이색 데이트</a> </li>
		<li> <a  class="na" href="">맛집</a> </li>
		<li> <a class="na" href="">카페</a> </li>
		
		 	<li id="login" >
    		<c:if test="${sessionScope.user == null }">
		<a href="login.do" class="menu">로그인</a>
	</c:if>
		<c:if test="${sessionScope.user != null }">
		<!-- 로그인된 상태 -->
		<br>${user.name }(${user.email })  님 반갑습니다. <br>
		<a href="logout.do" class="menu">로그아웃</a>
	</c:if>
	</li>
	</ul>
	</nav>


  <button onclick="show()">검색필터</button>
  
	<div >
	<table id="table" display='none'>
	<tr>
		<td > 주소  </td>
		<td> 
		<select>
			<option value="강남국">강남구</option>
			<option value="서초구">서초구</option>
			<option value="송파구">송파구</option>
			<option value="강동구">강동구</option>
			<option value="용산구">용산구</option>
		</select> </td>
	</tr>
	<tr>
		<td> 요금 </td>
		<td><input type="number"></td>
	</tr>
	<tr>
		<td> 포토존 </td>
		<td>
		<input type="radio" value="인스타감성"> 
		<label for="인스타감성">인스타감성</label>
		<input type="radio" value="카톡프로필">
		<label for="카톡프로필">카톡프로필</label> 
		<input type="radio" value="그냥저냥" checked>
		<label for='그냥저냥'>그냥저냥</label> 
		</td>
	</tr>
	<tr>
		<td> 장소 </td>
		<td>
		<select>
			<option value="야외">야외</option>
			<option value="실내">실내</option>
		</select>
		</td>
	</tr>
	 <tr> 
	  <td>주차</td>
	  <td>
		<select>
			<option value="가능">가능</option>
			<option value="없음">없음</option>
		</select>
		</td>
	 </tr>
	 <tr> 
	  <td>상호</td>
	    <td> <input type="text" placeholder="상호을 검색하세요">
	 </tr>
	</table>	
	</div>
<section>
	<hr>
	<h4> 금주의 핫플레이스</h4>
<ul  class="row" style="height: 100%;">
	<li> 
	  <ul>
		<li class="li"> 지역 </li>
		<li class="li"> 이름 </li>
		<li class="li"> 전화번호</li>
		<li class="li"> 주소</li>
		<li class="li"> 오픈시간</li>
		<li class="li"> 닫는시간</li>
		<li class="li"> 주차여부</li>
		<li class="li"> 평점</li>
	</ul>
	</li>
	<c:forEach var="ss" items="${ssss}">
	<li> 



	</li>	
	</c:forEach>	
</ul>

</section>
	<hr>
	<footer>
		<ul>
		<li><a href="">이용약관</a></li>
		<li><a href="">개인정보처리방침</a></li>
		<li><a href="">고객센터</a></li>
	</ul>
	
	</footer>


</body>
</html>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
function show(){
    if($('#table').css('display') == 'none'){
    $('#table').show();
}else{
    $('#table').hide();
}
}
</script>
