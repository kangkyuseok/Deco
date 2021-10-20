package com.deco.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.deco.dao.ReViewDao;
import com.deco.dto.ReView;

public class ReViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		
		ReViewDao dao = ReViewDao.getInstance();
		
		List<ReView> list = dao.getList();
		request.setAttribute("ReViewList", list);
		
		forward.isRedirect = false;
		forward.url="deco/review.jsp";
		return forward;
	}

}