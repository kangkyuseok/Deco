package com.deco.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.deco.dao.CafeDao;
import com.deco.dto.Cafe;

public class ListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		
		CafeDao dao = CafeDao.getInstance();
		
		List<Cafe> list = dao.getList();
		request.setAttribute("CafeList", list);
		System.out.println(list);
		System.out.println(list.size());
		forward.isRedirect = false;
		forward.url="deco/list.jsp";
		return forward;
	}

}
