package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinNoticeService;
import co.nnull.prj.bulletin.serviceImpl.BulletinNoticeServiceImpl;
import co.nnull.prj.bulletin.vo.BulletinNoticeVO;
import co.nnull.prj.comm.Command;

public class NoticeWriteForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 공지사항 글쓰기 폼
		BulletinNoticeService bulletinNoticeService = new BulletinNoticeServiceImpl();
		BulletinNoticeVO vo = new BulletinNoticeVO();
		
		vo = bulletinNoticeService.noticeSelect(vo);
		request.setAttribute("writer", vo);
		
		
		return "bulletin/noticeWriteForm";
	}

}
