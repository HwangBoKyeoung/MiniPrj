package co.nnull.prj.cart.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.nnull.prj.cart.service.CartMapper;
import co.nnull.prj.cart.service.CartService;
import co.nnull.prj.cart.vo.CartVO;
import co.nnull.prj.comm.DataSource;

public class CartServiceImpl implements CartService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private CartMapper map = sqlSession.getMapper(CartMapper.class);
	
	
	@Override
	public List<CartVO> cartSelectList() {
		return map.cartSelectList();
	}

	@Override
	public CartVO checkCart(CartVO vo) {
		return map.checkCart(vo);
	}

	@Override
	public int addCart(CartVO vo) {
		return map.addCart(vo);
	}

	@Override
	public int deleteCart(int cartId) {
		return map.deleteCart(cartId);
	}

	@Override
	public int updateCount(CartVO vo) {
		return map.updateCount(vo);
	}


}
