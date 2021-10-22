package com.deco.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.deco.dao.CafeDao;
import com.deco.dao.UsersDao;
import com.deco.dto.Cafe;
import com.deco.dto.SessionDto;
import com.deco.dto.Users;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UserInfoModifyAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
	    SessionDto sdto = (SessionDto)session.getAttribute("user");
	    
	      
	    UsersDao dao = UsersDao.getInstance();

	      String name = request.getParameter("name");
			
			String email = request.getParameter("email");
			String gender = request.getParameter("gender");
			int age = Integer.parseInt(request.getParameter("age"));
			String phone = request.getParameter("phone");
			String addr = request.getParameter("addr");
			//String nickname = request.getParameter("nickname");
			
			Users dto = new Users();
			
			dto.setName(name);
			dto.setEmail(email);
			dto.setGender(gender);
			dto.setAge(age);
			dto.setPhone(phone);
			dto.setAddr(addr);
			//dto.setNickname(nickname);	
	      	
	      	//user = sdto.getIdx();
		
		System.out.println(dto);
	
	    dao.update(dto);
	    ActionForward forward = new ActionForward();
		forward.isRedirect = false;
		forward.url="home.jsp";
		return forward;
	}
}
		
		
		
		
		
		
		
		/*
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
		dao.update(dto);

		ActionForward foward =new ActionForward();
		foward.isRedirect = true;
		foward.url="home.jsp";
		return foward;
		
	}

} */