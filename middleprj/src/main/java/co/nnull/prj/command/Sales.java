package co.nnull.prj.command;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.order.service.OrderService;
import co.nnull.prj.order.serviceImpl.OrderServiceImpl;
import co.nnull.prj.order.vo.OrderVO;

public class Sales implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		OrderService orderDao = new OrderServiceImpl();
		List<OrderVO> list = orderDao.orderSales();
		List<OrderVO> list2 = orderDao.orderSelectList();
		
		String viewPage = null;
		
		
		
		 if(list!=null) { 
			 request.setAttribute("orders", list); 
			 request.setAttribute("lists", list2);
			 viewPage = "manager/sale/sales"; 
		} else { 
			request.setAttribute("message", "매출조회 실패");
			viewPage = "manager/adminSchedule/managerErr"; 
		}
		 
		return viewPage;
	}

}
