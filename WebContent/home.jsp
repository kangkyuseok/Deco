<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home 화면</title>
</head>
<body>
<h1 id="title"><img id="icon" alt="icon" src="img/icon2.png">deco</h1>
<nav>
	<ul>
	<li id="login" >
    <c:if test="${sessionScope.user == null }">
		<a href="login.deco" class="menu">로그인</a>
	</c:if>
		<c:if test="${sessionScope.user != null }">
		<!-- 로그인된 상태 -->
		<br>${user.nickname }  님 반갑습니다. <br>
		<a href="./" class="menu">로그아웃</a>
		<a href="" >마이페이지</a>
	</c:if>
    	</li>
    </ul>
</nav>
<hr>
<section>
 <input type="button" href="c" value="검색하기">
 <input type="button" onclick ="location.href = 'best.deco'" value="금주의 핫플">
<input type="button" onclick ="location.href = 'review.deco'" value="리뷰 목록">
 	
 
 <input type="button" onclick="location.href='cafeInsert.deco'" value="추천등록">
 		<a href="cafe.deco?idx=1" class=" ">상세보기</a>
</section>
<hr>

</body>
</html>