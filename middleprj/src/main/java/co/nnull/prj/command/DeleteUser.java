package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.members.service.MembersService;
import co.nnull.prj.members.serviceImpl.MembersServiceImpl;
import co.nnull.prj.members.vo.MembersVO;

public class DeleteUser implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/htmll;charset=utf-8");
		
		String dI = request.getParameter("deleteId");
		String dP = request.getParameter("deletePassword");
		
		MembersVO vo = new MembersVO();
		vo.setMembersId(dI);
		vo.setMembersPassword(dP);
		MembersService membersDao = new MembersServiceImpl();
		
		int n = membersDao.memberDelete(vo);
		String viewPage = null;
		if(n!=0) {
			request.setAttribute("message", "회원탈퇴가 완료되었습니다.");
			viewPage = "member/memberSucc";
		} else {
			request.setAttribute("message", "비밀번호가 틀렸습니다.");
			viewPage = "member/memberErr";
		}
		return viewPage;
	}

}
