package com.deco.controller.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.Document;

import com.deco.dao.UsersDao;
import com.deco.dto.SessionDto;
import com.deco.dto.Users;

public class MemberAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String str_email01 = request.getParameter("str_email01");
		String str_email02 = request.getParameter("str_email02");
		String email = str_email01+"@"+str_email02;
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age"));
		String phone = request.getParameter("phone");
		String addr = request.getParameter("addr");
		String nickname = request.getParameter("nickname");
		
		Users dto = new Users();
		
		dto.setName(name);
		dto.setPassword(password);
		dto.setEmail(email);
		
		dto.setGender(gender);
		dto.setAge(age);
		dto.setPhone(phone);
		dto.setAddr(addr);
		dto.setNickname(nickname);
		
		UsersDao dao = UsersDao.getInstance();
		dao.insert(dto);
		
		request.setAttribute("message", "회원가입이 완료되었습니다.");
		request.setAttribute("url", "home.jsp");
		ActionForward forward = new ActionForward();
		forward.isRedirect = false;
		forward.url="error/alert.jsp";
		return forward;
	}
}