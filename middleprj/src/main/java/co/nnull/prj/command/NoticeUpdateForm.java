package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinNoticeService;
import co.nnull.prj.bulletin.serviceImpl.BulletinNoticeServiceImpl;
import co.nnull.prj.bulletin.vo.BulletinNoticeVO;
import co.nnull.prj.comm.Command;

public class NoticeUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 공지사항 글수정 폼
		
		BulletinNoticeService bulletinNoticeDao = new BulletinNoticeServiceImpl();
		BulletinNoticeVO vo =  new BulletinNoticeVO();
		
		vo.setNoticeId(Integer.valueOf(request.getParameter("id")));
		vo = bulletinNoticeDao.noticeSelect(vo);
		
		if(vo != null) {
			request.setAttribute("notice", vo);
		} else {
			request.setAttribute("message", "조회된 데이터가 없습니다.");
			return "bulletin/bulletinError";
		}
		
		return "bulletin/noticeUpdateForm";
	}

}
