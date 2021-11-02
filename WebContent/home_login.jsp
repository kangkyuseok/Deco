<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" href="css/home_login.css">
<title>DECO 당신의 하루를 꾸미다.</title>
</head>
<body>
  <div class="deco">
    <div class="decoTitleTop">
      <span class="decoTitleTop_1">Deco</span>
      <span class="decoTitleTop_2">rate Your Day</span>
    </div>
    <div class="decoTitleMiddle">
      <span class="decoTitleMiddle_1">With</span>
      <span class="decoTitleMiddle_2">DECO!</span>
    </div>
    <div class="decoTitleBottom">당신의 하루를 꾸미다</div>
    <div class="decoContent">
      <div class="login">
        <div class="subTitle">DECO</div>
      <form action="login.deco" method="post">
        <input type="email" name="userId" placeholder="email"><br>
        <input type="password" name="password" placeholder="password"><br>
        <input class="loginButton" type="submit" value="Log In">
      </form>
        <ul class="test">
          <li><a class="firstA" href="password.deco">아이디 찾기</a></li>
          <li><a href="password2.deco">비밀번호 찾기</a></li>
          <li><a href="join.deco">회원가입</a></li>
        </ul>
    </div>
    <div class="slide">
    </div>
  </div>
</div>
</body>
=======
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DECO 당신의 하루를 꾸미다.</title>
</head>
<body>
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
  </form>
</body>
</html>
>>>>>>> refs/remotes/origin/마스터-승인해주세요
