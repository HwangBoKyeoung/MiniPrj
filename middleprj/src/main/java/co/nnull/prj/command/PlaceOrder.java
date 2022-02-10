package co.nnull.prj.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import co.nnull.prj.comm.Command;
import co.nnull.prj.order.service.OrderService;
import co.nnull.prj.order.serviceImpl.OrderServiceImpl;
import co.nnull.prj.order.vo.OrderVO;

public class PlaceOrder implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/json;charset=utf-8");
		
		HttpSession session = request.getSession();
		OrderService orderDao = new OrderServiceImpl();
		OrderVO vo = new OrderVO();
		
		String orderName = request.getParameter("s_name");
		String orderPrice = request.getParameter("o_paidAmount");
		
		System.out.println(orderName + " " + orderPrice);
		
		vo.setMembersId((String) session.getAttribute("id"));
		vo.setOrderName(orderName);
		vo.setOrderPrice(Integer.parseInt(orderPrice));
		
		String result = "";
		if(orderDao.orderInsert(vo)!=0) {
//			{"result":"y"}
			result = "{\"result\":\"y\"}";
		} else {
//			{"result":"n"}
			result = "{\"result\":\"n\"}";
		}
		
		return "ajax:"+result;
	}

}