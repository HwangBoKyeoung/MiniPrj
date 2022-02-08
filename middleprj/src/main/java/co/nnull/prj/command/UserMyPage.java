package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.members.service.MembersService;
import co.nnull.prj.members.serviceImpl.MembersServiceImpl;
import co.nnull.prj.members.vo.MembersVO;

public class UserMyPage implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		
		MembersVO vo = new MembersVO();
		MembersService membersDao = new MembersServiceImpl();
		vo.setMembersId(id);
		
		vo = membersDao.memberSelect(vo);
		request.setAttribute("user", vo);
		
		return "member/userMypage";
	}

}
