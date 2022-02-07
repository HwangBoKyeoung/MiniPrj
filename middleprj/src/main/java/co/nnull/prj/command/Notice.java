package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinNoticeService;
import co.nnull.prj.bulletin.serviceImpl.BulletinNoticeServiceImpl;
import co.nnull.prj.comm.Command;

public class Notice implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		// 공지사항 목록
		BulletinNoticeService bulletinNoticeDao = new BulletinNoticeServiceImpl();
		request.setAttribute("notices", bulletinNoticeDao.noticeSelectList());
		return "bulletin/notice";
	}

}
