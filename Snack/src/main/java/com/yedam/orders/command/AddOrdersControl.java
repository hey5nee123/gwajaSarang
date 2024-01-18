package com.yedam.orders.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Control;
import com.yedam.orders.service.OrdersService;
import com.yedam.orders.serviceImpl.OrdersServiceImpl;
import com.yedam.orders.vo.OrdersVO;

public class AddOrdersControl implements Control {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		OrdersVO vo = new OrdersVO();
		
		req.getMethod().equals("GET");
		String odrerAddress = req.getParameter("orderAddress");
		String orderName = req.getParameter("orderName");
		String orderPhone = req.getParameter("orderPhone");
		String memo = req.getParameter("memo");
		String deliveryFee = req.getParameter("deliveryFee");
		String totalPrice = req.getParameter("total_price");
		String orderDate = req.getParameter("orderDate");
		
		vo.setOrderAddress(odrerAddress);
		vo.setOrderName(orderName);
		vo.setOrderPhone(orderPhone);
		vo.setMemo(memo);
		vo.setDeliveryFee(0);
		vo.setTotalPrice(0);
		vo.setOrderDate(orderDate);
		
		OrdersService svc = new OrdersServiceImpl();
		try {

			if (svc.addOrders(vo)) {
				resp.sendRedirect("boardList.do");
			} else {
				resp.sendRedirect("boardForm.do");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

}
