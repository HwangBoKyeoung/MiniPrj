package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.membership.service.MembershipService;
import co.nnull.prj.membership.serviceImpl.MembershipServiceImpl;

public class Payment implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		MembershipService membershipDao = new MembershipServiceImpl();
		request.setAttribute("memberships", membershipDao.membershipSelectList());
		return "membership/payment";
	}

}
