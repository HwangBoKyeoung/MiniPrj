package co.nnull.prj.order.service;

import java.util.List;

import co.nnull.prj.order.vo.OrderVO;

public interface OrderService {
	
	public List<OrderVO> orderSelectList();	

	public OrderVO orderSelect(OrderVO vo);

	public int orderInsert(OrderVO vo);
	
	public List<OrderVO> orderSales();
	
}
