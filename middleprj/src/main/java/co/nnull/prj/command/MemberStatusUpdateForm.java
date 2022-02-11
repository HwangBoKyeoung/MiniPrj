package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.memberList.service.memberListService;
import co.nnull.prj.memberList.serviceImpl.memberListServiceImpl;
import co.nnull.prj.members.vo.MembersVO;

public class MemberStatusUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String membersId = request.getParameter("id");

		memberListService memDao = new memberListServiceImpl();
		MembersVO vo = new MembersVO();
		vo.setMembersId(membersId);

		vo = memDao.memberSelectOne(vo);

		String viewPage = null;
		if(vo != null) {
			request.setAttribute("members", vo);
			viewPage = "manager/adminPages/memberStatusUpdateForm";
		} else {
			request.setAttribute("message", "한 건 조회 실패.");
			viewPage = "manager/adminPages/memberListErr";
		}
		return viewPage;
	}

}