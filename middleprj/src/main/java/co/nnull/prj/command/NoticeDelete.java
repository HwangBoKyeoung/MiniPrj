package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinNoticeService;
import co.nnull.prj.bulletin.serviceImpl.BulletinNoticeServiceImpl;
import co.nnull.prj.comm.Command;

public class NoticeDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 
		String id = request.getParameter("id");
		
		BulletinNoticeService bulletinNoticeService = new BulletinNoticeServiceImpl();
		
		
		return "bulletin/notice";
	}

}
