package co.nnull.prj.cart.service;

import java.util.List;

import co.nnull.prj.cart.vo.CartVO;

public interface CartMapper {
	/* 카트 목록 */
	public List<CartVO> cartSelectList();	

	/* 카트 확인 */
	public CartVO checkCart(CartVO vo);

	/* 카트 추가 */
	public int addCart(CartVO vo);
	
	/* 카트 삭제 */
	public int deleteCart(int cartId);
	
	/* 카트 수량 수정 */
	public int updateCount(CartVO vo);
}
