
 package com.deco.controller.action;
 

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.deco.dao.UsersDao;
import com.deco.dto.Users;



public class MypageAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
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
		
		ActionForward forward = new ActionForward();
		forward.isRedirect = false;
		forward.url ="mypage.jsp";
		return forward;
		
	}

}