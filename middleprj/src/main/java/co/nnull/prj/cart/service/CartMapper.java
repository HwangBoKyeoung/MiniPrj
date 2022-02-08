package co.nnull.prj.cart.service;

import java.util.List;

import co.nnull.prj.cart.vo.CartVO;

public interface CartMapper {
	List<CartVO> cartMoney();
	void insert(CartVO vo); // 장바구니 추가
	List<CartVO> listCart(String membersId); // 장바구니 목록
	void delete(int cartId); // 장바구니 개별 삭제
	void deleteAll(String membersId); // 장바구니 비우기
	void update(int cart_id);
	int sumMoney(String membersId); // 장바구니 금액 합계
	int countCart(String membersId, int membershipNum); // 장바구니
	void updateCart(CartVO vo); // 장바구니 수정
	void modifyCart(CartVO vo); //
}
