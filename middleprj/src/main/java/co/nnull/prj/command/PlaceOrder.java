package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.nnull.prj.comm.Command;
import co.nnull.prj.order.service.OrderService;
import co.nnull.prj.order.serviceImpl.OrderServiceImpl;
import co.nnull.prj.order.vo.OrderVO;

public class PlaceOrder implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		OrderService orderDao = new OrderServiceImpl();
		OrderVO vo = new OrderVO();
		
		Gson gson = new GsonBuilder().create();
		String str = gson.toJson(orderDao.orderInsert(vo));
		System.out.println(str);
		
		return "ajax:" + str;
	}

}
