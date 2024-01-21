package com.yedam.cart.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.cart.mapper.CartMapper;
import com.yedam.cart.service.CartService;
import com.yedam.cart.vo.CartVO;
import com.yedam.common.DataSource;

public class CartServiceImpl implements CartService {
	SqlSession session = DataSource.getInstance().openSession(true);
	CartMapper mapper = session.getMapper(CartMapper.class);

	@Override
	public List<CartVO> selectCartList(String memberCode) {
		// TODO Auto-generated method stub
		return mapper.selectList(memberCode);
	}

	@Override
	public boolean addCart(int cartCode) {
		// TODO Auto-generated method stub
		return mapper.addCart(cartCode) == 1;
	}

	@Override
	public boolean remCart(int cartCode) {
		// TODO Auto-generated method stub
		return mapper.deleteCart(cartCode) == 1;
	}

	@Override
	public boolean modCart(CartVO vo) {
		// TODO Auto-generated method stub
		return false;
	}

}
