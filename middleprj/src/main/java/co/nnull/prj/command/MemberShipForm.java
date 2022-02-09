package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.membership.service.MembershipService;
import co.nnull.prj.membership.serviceImpl.MembershipServiceImpl;
import co.nnull.prj.membership.vo.MembershipVO;

public class MemberShipForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 멤버쉽 한 개 선택
		MembershipService membershipDao = new MembershipServiceImpl();
		MembershipVO vo = new MembershipVO();
		
		vo.setMembershipNum(Integer.valueOf(request.getParameter("membershipNum")));
		vo = membershipDao.membershipSelect(vo);
		
		return "membership/membershipSelect";
	}

}
