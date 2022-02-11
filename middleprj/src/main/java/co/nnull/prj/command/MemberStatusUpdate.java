package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.memberList.service.memberListService;
import co.nnull.prj.memberList.serviceImpl.memberListServiceImpl;
import co.nnull.prj.members.vo.MembersVO;

public class MemberStatusUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String membersId = request.getParameter("membersId");
		String membersName = request.getParameter("memName");
		String membersTel = request.getParameter("memTel");
		String membersAddress = request.getParameter("memAddress");
		String membersMembership = request.getParameter("memMemberShip");
		int membersWeight = (Integer.valueOf(request.getParameter("memWeight")));
		int membersHeight = (Integer.valueOf(request.getParameter("memHeight")));

		memberListService memDao = new memberListServiceImpl();

		MembersVO vo = new MembersVO();
		vo.setMembersId(membersId);
		vo.setMembersName(membersName);
		vo.setMembersTel(membersTel);
		vo.setMembersAddress(membersAddress);
		vo.setMembersMembership(membersMembership);
		vo.setMembersWeight(membersWeight);
		vo.setMembersHeight(membersHeight);

		int n = memDao.memberListUpdate(vo);
		String viewPage = null;

		if(n != 0) {
			viewPage = "memberList.do";
		} else {
			request.setAttribute("message", "수정 실패.");
			viewPage = "manager/adminPages/memberListErr";
		}

		return viewPage;
	}

}