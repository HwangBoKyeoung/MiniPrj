package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.members.service.MembersService;
import co.nnull.prj.members.serviceImpl.MembersServiceImpl;
import co.nnull.prj.members.vo.MembersVO;

public class MyInfoUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String userId = request.getParameter("userId");
		String userPassword = request.getParameter("userPassword");
		String userAddress = request.getParameter("userAddress");
		String userTel = request.getParameter("userTel");
		
		MembersVO vo = new MembersVO();
		vo.setMembersId(userId);
		vo.setMembersPassword(userPassword);
		vo.setMembersAddress(userAddress);
		vo.setMembersTel(userTel);
		
		MembersService membersDao = new MembersServiceImpl();
		
		int n = membersDao.memberUpdate(vo);
		String viewPage = null;
		if(n!=0) {
			request.setAttribute("message", "수정에 성공하였습니다.");
			viewPage = "main.do";
		} else {
			request.setAttribute("message", "수정에 실패하였습니다.");
			viewPage = "main.do";
		}
		return viewPage;			
	}

}
