package com.deco.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.deco.controller.action.Action;
import com.deco.controller.action.ActionForward;
import com.deco.controller.action.BestAction;
import com.deco.controller.action.CafeAction;
import com.deco.controller.action.CafeInsertAction;
import com.deco.controller.action.CafeUpdateAction;
import com.deco.controller.action.ListAction;
import com.deco.controller.action.LoginAction;
import com.deco.controller.action.LogoutAction;
import com.deco.controller.action.MemberAction;
import com.deco.controller.action.ReViewAction;


@WebServlet("*.deco")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FrontController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	@Override
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ActionForward forward = null;
		//ActionForward forward = new ActionForward();
		String spath = request.getServletPath();
		//forward.setRedirect(false);
		//String path="home.jsp";
		String url = "./";
		if(spath.equals("/cafe.deco")) {
			Action action = new CafeAction();
			forward = action.execute(request, response);
		}else if(spath.equals("/list.deco")) {
			Action action = new ListAction();	
			forward = action.execute(request, response);
		}else if(spath.equals("/best.deco")) {
			Action action = new BestAction();
			forward = action.execute(request, response);	
		}else if(spath.equals("/loginAction.deco")) {
			Action action = new LoginAction();
			forward = action.execute(request, response);
		}else if(spath.equals("/logout.deco")) {
			Action action = new LogoutAction();
			forward = action.execute(request, response);
		}else if(spath.equals("/member.deco")) {
			forward = new ActionForward(false,"deco/member.jsp"); 
		}else if(spath.equals("/memberAction.deco")) {
			Action action = new MemberAction();
			forward = action.execute(request, response);
		}else if(spath.equals("/review.deco")) {
			Action action = new ReViewAction();
			forward = action.execute(request, response);
		}else if(spath.equals("/cafeInsert.deco")) {
			forward = new ActionForward(false,"deco/cafeInsert.jsp"); 
		}else if(spath.equals("/cafeUpdate.deco")) {
			Action action = new CafeUpdateAction();
			forward = action.execute(request, response);
		}else if(spath.equals("/cafeInsertAction.deco")) {
			Action action = new CafeInsertAction();
			forward = action.execute(request, response);
		}
		/* else if(spath.equals("/home.deco")) {
			path = "home.jsp";
			forward = new ActionForward(false,path); 
			
		} */
		if(forward.isRedirect()) {	// 타입이  boolean  일때는  getXXX  아니고  isXXX이다.
			response.sendRedirect(forward.getUrl());
		}else {	
			RequestDispatcher rd = request.getRequestDispatcher(forward.getUrl());
			rd.forward(request, response);
		}
	}
}
