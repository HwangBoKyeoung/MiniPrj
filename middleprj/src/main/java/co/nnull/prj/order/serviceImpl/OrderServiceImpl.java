package co.nnull.prj.order.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.nnull.prj.comm.DataSource;
import co.nnull.prj.order.service.OrderMapper;
import co.nnull.prj.order.service.OrderService;
import co.nnull.prj.order.vo.OrderVO;

public class OrderServiceImpl implements OrderService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private OrderMapper map = sqlSession.getMapper(OrderMapper.class);
	
	

	@Override
	public List<OrderVO> orderSelectList() {
		return map.orderSelectList();
	}

	@Override
	public OrderVO orderSelect(OrderVO vo) {
		return map.orderSelect(vo);
	}

	@Override
	public int orderInsert(OrderVO vo) {
		return map.orderInsert(vo);
	}

	@Override
	public List<OrderVO> orderSales() {
		return map.orderSales();
	}


	

}
