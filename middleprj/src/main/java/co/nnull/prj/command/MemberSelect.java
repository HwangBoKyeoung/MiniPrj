package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.members.service.MembersService;
import co.nnull.prj.members.serviceImpl.MembersServiceImpl;
import co.nnull.prj.members.vo.MembersVO;

public class MemberSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String memberId = request.getParameter("trt");
		
		MembersService membersDao = new MembersServiceImpl();
		MembersVO vo = new MembersVO();
		vo.setMembersId(memberId);
		System.out.println("멤버아이디: "+memberId);
		
		vo = membersDao.memberSelect(vo);
		String viewPage = null;
		if(vo!=null) {
			request.setAttribute("member", vo);
			viewPage = "manager/adminPages/memberSelect";
		} else {
			request.setAttribute("message", "회원 단 건 조회 실패.");
			viewPage = "manager/adminSchedule/managerErr";
		}
		
		return viewPage;
	}

}
