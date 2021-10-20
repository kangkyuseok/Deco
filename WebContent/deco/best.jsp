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
<%-- <nav>
	<ul>
	<li id="login" >
    <c:if test="${sessionScope.user == null }">
		<a href="login.deco" class="menu">로그인</a>
	</c:if>
		<c:if test="${sessionScope.user != null }">
		<!-- 로그인된 상태 -->
		<br>${user.name }(${user.email })  님 반갑습니다. <br>
		<a href="logoutAction.deco" class="menu">로그아웃</a>
		<a href="" >마이페이지</a>
	</c:if>
    	</li>
    </ul>
</nav> --%>
<hr>

 <input type="button" value="찾아보아"></input>
 <div>
 	<form action = "best.deco" method="get">
 	 <label for="">핫플레이스</label>
 	 <input type="checkbox" name="cate1" value="Cafe">카페
 	</form>
 	
 </div>
<div>
    <c:forEach var="vo" items="${getRanList}">
    <ul>
    	<li>${vo.name }</li>
    	<li>${vo.content }</li>
    	<li>${vo.phone }</li>
    	<li>${vo.addr }</li>
    	<li>${vo.menu }</li>
    	<li>${vo.grade }</li>
    	<li>영업시간 : ${vo.opentime} ~ ${vo.closetime}</li>
    	<li>${vo.location }</li>
    </ul>
    </c:forEach>
  </div>

</body>
</html>