package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.members.service.MembersService;
import co.nnull.prj.members.serviceImpl.MembersServiceImpl;
import co.nnull.prj.members.vo.MembersVO;

public class Register implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MembersService memberDao = new MembersServiceImpl();
		MembersVO vo = new MembersVO();
		
		vo.setMembersId(request.getParameter("id"));
		vo.setMembersPassword(request.getParameter("password"));
		vo.setMembersName(request.getParameter("name"));
		vo.setMembersTel(request.getParameter("tel"));
		vo.setMembersAddress(request.getParameter("address"));
		vo.setMembersAuthor(request.getParameter("author"));
		vo.setMembersMembership(request.getParameter("membership"));
		
		
		int r = memberDao.memberInsert(vo);
		
		if(r != 0) {
			request.setAttribute("message", "회원가입을 환영합니다");
		} else {
			request.setAttribute("message", "회원가입에 실패했습니다");
		}
		return "member/memberRegisterResult";
	}

}
