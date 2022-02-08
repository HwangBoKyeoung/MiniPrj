package co.nnull.prj.cart.service;

import java.util.List;

import co.nnull.prj.cart.vo.CartVO;

public interface CartService {
	List<CartVO> cartMoney();
	void insert(CartVO vo); // 장바구니 추가
	List<CartVO> listCart(String membersId); // 장바구니 목록
	void delete(int cartId); // 장바구니 개별 삭제
	void deleteAll(String membersId); // 장바구니 비우기
}
