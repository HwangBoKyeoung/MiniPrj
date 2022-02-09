package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinFreeService;
import co.nnull.prj.bulletin.serviceImpl.BulletinFreeServiceImpl;
import co.nnull.prj.bulletin.vo.BulletinFreeVO;
import co.nnull.prj.comm.Command;

public class FreeDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 자유게시판 삭제
		String id = request.getParameter("id");
		
		BulletinFreeService bulletinFreeService = new BulletinFreeServiceImpl();
		BulletinFreeVO vo = new BulletinFreeVO();
		vo.setFreeId(Integer.parseInt(id));
		
		String viewPage = null;
		
		int delete = bulletinFreeService.freeDelete(vo);
		if (delete != 0) {
			viewPage = "free.do";
		} else {
			viewPage = "bulletin/bulletinError";
		} return viewPage;
		
	}

}
