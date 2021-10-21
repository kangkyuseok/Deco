<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<div>
</div>
	<div>
	<form action="homeRan.deco" method="post">
  <c:forEach var="vo" items="${CafeList}">
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
	</form>
	</div>
</body>
</html> --%>