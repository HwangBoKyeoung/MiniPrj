package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.cart.service.CartService;
import co.nnull.prj.cart.serviceImpl.CartServiceImpl;
import co.nnull.prj.comm.Command;
import co.nnull.prj.membership.service.MembershipService;
import co.nnull.prj.membership.serviceImpl.MembershipServiceImpl;

public class CartForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		CartService cartDao = new CartServiceImpl();
		request.setAttribute("carts", cartDao.cartSelectList());
		return "membership/cartForm";
	}

}
