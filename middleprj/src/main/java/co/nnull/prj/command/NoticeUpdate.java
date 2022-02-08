package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinNoticeService;
import co.nnull.prj.bulletin.serviceImpl.BulletinNoticeServiceImpl;
import co.nnull.prj.bulletin.vo.BulletinNoticeVO;
import co.nnull.prj.comm.Command;

public class NoticeUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 공지사항 수정
		String noticeId = request.getParameter("noticeId");
		String title = request.getParameter("title");
		String subject = request.getParameter("subject");
		
		BulletinNoticeService bulletinNoticeService = new BulletinNoticeServiceImpl();
		BulletinNoticeVO vo = new BulletinNoticeVO();
		
		vo.setNoticeTitle(title);
		vo.setNoticeSubject(subject);
		vo.setNoticeId(Integer.parseInt(noticeId));
		
		String viewPage = null;
		
		int update = bulletinNoticeService.noticeUpdate(vo);
		if (update != 0) {
			viewPage = "notice.do";
		} else {
			viewPage = "bulletin/bulletinError";
		} return viewPage;
		
	}

}
