package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.members.service.MembersService;
import co.nnull.prj.members.serviceImpl.MembersServiceImpl;

public class PaySuccess implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// ajax
		MembersService memberDao = new MembersServiceImpl();
		String id = request.getParameter("id");
		boolean b = memberDao.isIdCheck(id);
		if (!b) {
			return "ajax:0"; // 존재할때
		} else {
			return "ajax:1"; // 존재하지 않을때
		}
	}

}
