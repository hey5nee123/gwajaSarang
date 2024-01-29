package com.yedam.cart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yedam.cart.vo.CartVO;

public interface CartMapper {
	// 카트 목록.
	List<CartVO> selectList(String memberCode);

	// 카트 삭제.
	int deleteCart(int cartCode);
	
	//카트 수량 추가.
	int insertCart(CartVO vo);
	
	//카트 수정.
	int updateCart(CartVO vo);
	
	//카트 수량 수정(이미 카트에 담긴 상품)
	int updateCartQuantity(CartVO vo);
	
	//카트 전체 삭제
	int deleteCartAll(String memberCode);
	
	//카트 담기 여부 확인
	Integer selectCnt(@Param("goodsCode") String goodCode, @Param("memberCode") String memberCode);
}
