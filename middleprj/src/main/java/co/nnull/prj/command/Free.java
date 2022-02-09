package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinFreeService;
import co.nnull.prj.bulletin.serviceImpl.BulletinFreeServiceImpl;
import co.nnull.prj.comm.Command;

public class Free implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		// 자유게시판 목록
		BulletinFreeService bulletinFreeDao = new BulletinFreeServiceImpl();
		request.setAttribute("frees", bulletinFreeDao.freeSelectList());
		return "bulletin/free";
	}

}
