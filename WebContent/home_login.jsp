<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DECO 당신의 하루를 꾸미다.</title>
</head>
  <style>
  ul{
  list-style:none;
  padding-left:0px;
  }
  form{
 
  }
  h1{
  
  }
  
  </style>
<body>
<%@ include file="top2.jsp" %>
  <h1>DECO</h1>
  <form action="loginAction.deco" method="post">
  	
    <label for="">아이디 : </label>
    <input type="text" name="userId"><br>
    <label for="">비밀번호 : </label>
    <input type="password" name="password">
    <input type="submit" value="login">
    <div>아직 회원이 아니신가요?</div>
    <a href="member.deco">회원가입</a>
    <a href="cafe.deco?idx=1" class=" ">상세보기</a>
    <hr>
    <c:forEach var="vo" items="${CafeList}">
    <h5>오늘의 카페 추천</h5>
    <ul>
    	<li>이름 : ${vo.name }</li>
       <li>설명 : ${vo.content }</li>
       <li>전화번호 : ${vo.phone }</li>
       <li>대표메뉴 : ${vo.menu }</li>
       <li>평점 : ${vo.grade }</li>
       <li>영업시간 : ${vo.opentime} ~ ${vo.closetime}</li>
       <li>위치 : ${vo.location }</li>
       <li> <img alt="cafe-out" src="/image/${vo.outimage}" width="150px" height="150px"></li>
    </ul>
    </c:forEach>
  </form>

  
<%@ include file="bottom.jsp" %>
  
</body>
</html>