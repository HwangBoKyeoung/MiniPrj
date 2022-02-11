package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.memberList.service.memberListService;
import co.nnull.prj.memberList.serviceImpl.memberListServiceImpl;
import co.nnull.prj.members.vo.MembersVO;

public class MemberStatusDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		String dI = request.getParameter("deleteId");
		System.out.println(dI);
		memberListService memDao = new memberListServiceImpl();
		MembersVO vo = new MembersVO();
		vo.setMembersId(dI);
		
		int n = memDao.memberListDelete(vo);
		String viewPage = null;
		if(n != 0) {
			viewPage = "memberList.do";
		} else {
			request.setAttribute("message", "삭제에 실패했습니다");
			viewPage = "adminPages/memberListErr";
		}
		return viewPage;
	}

}
