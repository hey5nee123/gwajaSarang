package com.yedam.orders.mapper;

import java.util.List;

import com.yedam.orders.vo.OrdersVO;



public interface OrdersMapper {
	List<OrdersVO> selectList();
	
	
}
