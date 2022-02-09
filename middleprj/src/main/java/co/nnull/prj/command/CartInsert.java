package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import co.nnull.prj.cart.service.CartService;
import co.nnull.prj.cart.serviceImpl.CartServiceImpl;
import co.nnull.prj.cart.vo.CartVO;
import co.nnull.prj.comm.Command;

public class CartInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String membersId = (String) session.getAttribute("id");
		
		CartVO vo = new CartVO();
		if(membersId == null) {
			return "members/loginForm";
		} 
		
		vo.setCartId(Integer.valueOf(request.getParameter("cartId")));
		vo.setMembershipNum(Integer.valueOf(request.getParameter("membershipNum")));
		vo.setCartAmount(Integer.valueOf(request.getParameter("cartAmount")));
		vo.setMembershipPrice(0);
		return "membership/cartForm";
	}

}
