package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinFreeService;
import co.nnull.prj.bulletin.serviceImpl.BulletinFreeServiceImpl;
import co.nnull.prj.bulletin.vo.BulletinFreeVO;
import co.nnull.prj.comm.Command;

public class FreeUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 자유게시판 수정
		String freeId = request.getParameter("freeId");
		String title = request.getParameter("title");
		String subject = request.getParameter("subject");
		
		BulletinFreeService bulletinFreeService = new BulletinFreeServiceImpl();
		BulletinFreeVO vo = new BulletinFreeVO();
		
		vo.setFreeTitle(title);
		vo.setFreeSubject(subject);
		vo.setFreeId(Integer.parseInt(freeId));
		
		String viewPage = null;
		
		int update = bulletinFreeService.freeUpdate(vo);
		if (update != 0) {
			viewPage = "free.do";
		} else {
			viewPage = "bulletin/bulletinError";
		} return viewPage;
		
	}

}
