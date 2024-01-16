package com.yedam.goods.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Control;
import com.yedam.goods.service.GoodsService;
import com.yedam.goods.serviceimpl.GoodsServiceImpl;
import com.yedam.goods.vo.GoodsVO;

public class SearchGoodsControl implements Control {
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String gname = req.getParameter("gname");
		
		GoodsService svc = new GoodsServiceImpl();
		List<GoodsVO> list = svc.searchList(gname);
		
		req.setAttribute("searchList", list);
		
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/goods/searchList.jsp");
		try {
			rd.forward(req, resp);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
