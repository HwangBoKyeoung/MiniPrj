package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.nnull.prj.comm.Command;
import co.nnull.prj.members.service.MembersService;
import co.nnull.prj.members.serviceImpl.MembersServiceImpl;
import co.nnull.prj.members.vo.MembersVO;

public class LoginCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 로그인
		MembersService memberDao = new MembersServiceImpl();
		HttpSession session = request.getSession();
		MembersVO vo = new MembersVO();
		
		vo.setMembersId(request.getParameter("id"));
		vo.setMembersPassword(request.getParameter("password"));
		
		String page = null;
		
		vo = memberDao.memberSelect(vo);
		if(vo != null) {
			session.setAttribute("id", vo.getMembersId());
			session.setAttribute("author", vo.getMembersAuthor());
			session.setAttribute("name", vo.getMembersName());
			session.setAttribute("tel", vo.getMembersTel());
			session.setAttribute("address", vo.getMembersAddress());
			session.setAttribute("membership", vo.getMembersMembership());
			request.setAttribute("member", vo);
			page = "main.do";
		} else {
			request.setAttribute("message", "아이디 또는 패스워드가 틀렸습니다.");
			page = "member/memberError";
		}
		return page;
	}

}