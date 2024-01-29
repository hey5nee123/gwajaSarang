package com.yedam.cart.service;

import java.util.List;

import com.yedam.cart.vo.CartVO;

public interface CartService {
	// 카트 목록
	public List<CartVO> selectCartList(String memberCode);

	// 카트 등록.
	public boolean addCart(CartVO vo);

	// 카트 삭제
	public boolean remCart(int cartCode);

	// 카트 수정
	public boolean modCart(CartVO vo);
	
	// 카트 수량 수정(이미 카트에 있는 상품)
	public boolean modCartQuantity(CartVO vo);

	// 주문 상세.
	//public boolean addOrder(int cartCode);
	
	// 카트 담기 여부확인
	public Integer checkCart(String goodsCode, String memberCode);
}