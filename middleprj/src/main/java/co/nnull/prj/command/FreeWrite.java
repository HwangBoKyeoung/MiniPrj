package co.nnull.prj.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinFreeService;
import co.nnull.prj.bulletin.serviceImpl.BulletinFreeServiceImpl;
import co.nnull.prj.bulletin.vo.BulletinFreeVO;
import co.nnull.prj.comm.Command;

public class FreeWrite implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 자유게시판 글쓰기

		BulletinFreeService bulletinFreeDao = new BulletinFreeServiceImpl();
		BulletinFreeVO vo = new BulletinFreeVO();
		vo.setFreeWriter(request.getParameter("freeWriter"));
		if(request.getParameter("freeDate") != null) {
			vo.setFreeDate(Date.valueOf(request.getParameter("freeDate")));	
		}
		vo.setFreeTitle(request.getParameter("freeTitle"));
		vo.setFreeSubject(request.getParameter("freeSubject"));
	
		String viewPage = null;
		
		int n = bulletinFreeDao.freeInsert(vo);
		if(n != 0) {
			viewPage = "free.do";
		} else {
			request.setAttribute("message", "등록에 실패했습니다.");
			viewPage = "bulletin/bulletinError";
		}
		return viewPage;
	}

}
