package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.members.service.MembersService;
import co.nnull.prj.members.serviceImpl.MembersServiceImpl;
import co.nnull.prj.members.vo.MembersVO;

public class MembersMembership implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
//		HttpSession session = request.getSession(true);
//		String id = (String) session.getAttribute("id");
		String mId = request.getParameter("mId");
		System.out.println("id : ===" + mId);
		
		MembersService membersDao = new MembersServiceImpl();
		MembersVO vo = new MembersVO();
		vo.setMembersId(mId);
		int r = membersDao.orderUpdate(vo);
		
		String viewPage = null;
		if (r != 0) {
			viewPage = "main.do";
		} else {
			viewPage = "membership/paymentFail";
		}
		
		
		return viewPage;
	}

}
