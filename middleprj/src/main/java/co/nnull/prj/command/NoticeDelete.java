package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinNoticeService;
import co.nnull.prj.bulletin.serviceImpl.BulletinNoticeServiceImpl;
import co.nnull.prj.bulletin.vo.BulletinNoticeVO;
import co.nnull.prj.comm.Command;

public class NoticeDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 공지사항 삭제
		String id = request.getParameter("id");
		
		BulletinNoticeService bulletinNoticeService = new BulletinNoticeServiceImpl();
		BulletinNoticeVO vo = new BulletinNoticeVO();
		vo.setNoticeId(Integer.parseInt(id));
		
		String viewPage = null;
		
		int delete = bulletinNoticeService.noticeDelete(vo);
		if (delete != 0) {
			viewPage = "notice.do";
		} else {
			viewPage = "bulletin/bulletinError";
		} return viewPage;
		
	}

}
