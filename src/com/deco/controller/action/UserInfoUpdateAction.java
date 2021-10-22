package com.deco.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.deco.dao.UsersDao;
import com.deco.dto.SessionDto;
import com.deco.dto.Users;
import com.mysql.cj.x.protobuf.MysqlxCrud.Update;

public class UserInfoUpdateAction implements Action {
 // 수정 
   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
	   HttpSession session = request.getSession();
	      UsersDao dao = UsersDao.getInstance();
	      SessionDto sdto = (SessionDto)session.getAttribute("user");
	   
	      System.out.println(sdto.getIdx());
	      Users user = dao.getUser(sdto.getIdx());
	      
	      Users dto = new Users();
	      
	      dao.update(dto);
	      
	      
	      request.setAttribute("dto", user);
	      ActionForward forward = new ActionForward();
	      forward.isRedirect = false;
	      forward.url="deco/userInfoUpdate.jsp";
	      return forward;   
	   }
	}
	   
	   
	   
	   /*
		 * String name = request.getParameter("name"); String password =
		 * request.getParameter("password"); String email =
		 * request.getParameter("email"); String gender =
		 * request.getParameter("gender"); int age =
		 * Integer.parseInt(request.getParameter("age")); String phone =
		 * request.getParameter("phone"); String addr = request.getParameter("addr");
		 * String nickname = request.getParameter("nickname");
		 * 
		 * Users dto = new Users();
		 * 
		 * dto.setName(name); dto.setPassword(password); dto.setEmail(email);
		 * dto.setGender(gender); dto.setAge(age); dto.setPhone(phone);
		 * dto.setAddr(addr); dto.setNickname(nickname);
		 * 
		 * UsersDao dao = UsersDao.getInstance(); dao.update(dto); ActionForward forward
		 * = new ActionForward(); forward.isRedirect = false;
		 * forward.url="deco/userInfoUpdate.jsp"; return forward;
		 */
