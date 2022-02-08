package co.nnull.prj.command;


import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinNoticeService;
import co.nnull.prj.bulletin.serviceImpl.BulletinNoticeServiceImpl;
import co.nnull.prj.bulletin.vo.BulletinNoticeVO;
import co.nnull.prj.comm.Command;

public class NoticeWrite implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 공지사항 글쓰기

		BulletinNoticeService bulletinNoticeDao = new BulletinNoticeServiceImpl();
		BulletinNoticeVO vo = new BulletinNoticeVO();
		vo.setNoticeWriter(request.getParameter("noticeWriter"));
		if(request.getParameter("noticeDate") != null) {
			vo.setNoticeDate(Date.valueOf(request.getParameter("noticeDate")));	
		}
		vo.setNoticeTitle(request.getParameter("noticeTitle"));
		vo.setNoticeSubject(request.getParameter("noticeSubject"));
	
		String viewPage = null;
		
		int n = bulletinNoticeDao.noticeInsert(vo);
		if(n != 0) {
			viewPage = "notice.do";
		} else {
			request.setAttribute("message", "등록에 실패했습니다.");
			viewPage = "bulletin/bulletinError";
		}
		return viewPage;
	}

}
