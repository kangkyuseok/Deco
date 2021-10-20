<%@page import="com.deco.dto.Cafe"%>
<%@page import="com.deco.dao.CafeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <% 
	int idx = Integer.parseInt(request.getParameter("idx"));
	
	CafeDao dao= CafeDao.getInstance();
	
	Cafe ca=dao.getOne(idx);
	
	
	request.setAttribute("cafe", ca);
 	pageContext.forward("cafe.jsp");
 
 %>