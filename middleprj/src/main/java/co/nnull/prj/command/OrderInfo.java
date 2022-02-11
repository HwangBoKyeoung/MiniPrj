package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.order.service.OrderService;
import co.nnull.prj.order.serviceImpl.OrderServiceImpl;
import co.nnull.prj.order.vo.OrderVO;

public class OrderInfo implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		OrderService orderDao = new OrderServiceImpl();
		OrderVO vo = new OrderVO();

		vo.setMembersId(request.getParameter("orderInfo"));
		vo = orderDao.orderSelect(vo);
		if (vo != null) {
			request.setAttribute("orderlist", vo);
			return "membership/orderlistSelect";

		}
		return "membership/orderlistSelect";

	}
}