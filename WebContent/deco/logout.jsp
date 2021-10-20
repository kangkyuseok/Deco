<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();		// 세션 무효화(끊기)
	
	  out.print("<script>");
    out.print("alert('로그아웃 되었습니다.');");
    out.print("location.href='home_login.deco';"); //home.jsp로 url 이동
    out.print("</script>");
      

	request.setAttribute("message", "로그아웃 되었습니다.");
	request.setAttribute("url", "home_login.deco");
	pageContext.include("error/alert.jsp");
	 //response.sendRedirect("home.jsp");
	
	//session.invalidate();	// session 무효화(끊기). 세션 삭제.
	// session.invalidate() 전후에 session값 변경 확인해보자.
	// 개발자 도구 JSESSIONID 변경된다 : request객체도 새로 생성된다.



%>