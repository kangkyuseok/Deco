<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<<<<<<< HEAD
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" href="css/home.css">
  <script src="https://kit.fontawesome.com/96c30f85d8.js" crossorigin="anonymous"></script>
</head>
<body>
<%@ include file="../top.jsp" %>
  <div class="decoHome">
    <div class="homeTitle">DECO</div>
    <section class="listBtn">
      <a href="cafeList.deco" class="blue"><div>Cafe</div></a>
      <a href="foodList.deco" class="green"><div>Restaurant</div></a>
      <a href="showsList.deco" class="pink"><div>Show</div></a>
      <a href="etcList.deco" class="purple"><div>Activity</div></a>
    </section>
    <section class="homeContents">
      <div>업체를 등록해보세요 <a href="insertBtn.deco">click <i class="fas fa-exclamation"></i></a></div>
      <div>다양한 데이트장소를 검색해보세요 <a href="cafeList.deco">click <i class="fas fa-exclamation"></i></a></div>
      <div>마음에 드는 장소를 찜목록에 추가해보세요 <a href="dibsList.deco">click <i class="fas fa-exclamation"></i></a></div>
      <div>금주의 핫플을 바로 만나보세요 <a href="best.deco">click <i class="fas fa-exclamation"></i></a></div>
    </section>
    <%@ include file="../bottom.jsp" %>
=======
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
		<br>${user.name }(${user.email })  님 반갑습니다. <br>
		<a href="logout.deco" class="menu">로그아웃</a>
		<a href="" >마이페이지</a>
		
	</c:if>
    	</li>
    </ul>
</nav>
<hr>
<section>
 <input type="button" onclick="location.href='list.deco'" value="검색하기"></input>
 <input type="button" href="" value="금주의 핫플"></input>
 <input type="button" onclick="location.href='cafeInsert.deco'" value="추천등록"></input>
 <a href="list.deco" class=" ">리스트 보기</a>
 <a href="cafe.deco?idx=1" class=" ">상세보기</a>
 <a href="dibsList.deco" class=" ">찜목록</a>
 <a href="reviewList.deco" class=" ">리뷰목록</a>
</section>
<hr>

>>>>>>> refs/remotes/origin/마스터-승인해주세요
</body>
</html>