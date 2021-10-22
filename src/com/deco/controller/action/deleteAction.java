package com.deco.controller.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.deco.dao.UsersDao;
import com.deco.dto.SessionDto;
import com.deco.dto.Users;

public class deleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		  HttpSession session = request.getSession();
	      UsersDao dao = UsersDao.getInstance();
	      SessionDto sdto = (SessionDto)session.getAttribute("user");
	      ActionForward forward = new ActionForward();
	     
	      	int idx = sdto.getIdx();
	  		dao.delete(idx);
 		
	      System.out.println(idx);
	
	      request.setAttribute("message", "회원탈퇴 되셨습니다 홈으로 이동합니다.");
	      request.setAttribute("url","./" );
		forward.isRedirect = false;
		forward.url="error/alert.jsp";
		return forward;
	}
}