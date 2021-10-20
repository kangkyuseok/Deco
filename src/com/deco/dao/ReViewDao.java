package com.deco.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.deco.dto.Cafe;
import com.deco.dto.ReView;
import com.deco.mybatis.SqlSessionBean;

public class ReViewDao {
	private static ReViewDao dao = new ReViewDao();
	private ReViewDao() {}
	public static ReViewDao getInstance() {
		return dao;
	}
	
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	public List<ReView> getList() {
		List<ReView> list = null;
		SqlSession mapper = factory.openSession();
		list = mapper.selectList("review.getList");
		mapper.close();
		return list;
	}

}
