package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinFreeService;
import co.nnull.prj.bulletin.serviceImpl.BulletinFreeServiceImpl;
import co.nnull.prj.bulletin.vo.BulletinFreeVO;
import co.nnull.prj.comm.Command;

public class FreeUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 자유게시판 글수정 폼
		
		BulletinFreeService bulletinFreeDao = new BulletinFreeServiceImpl();
		BulletinFreeVO vo =  new BulletinFreeVO();
		
		vo.setFreeId(Integer.valueOf(request.getParameter("id")));
		vo = bulletinFreeDao.freeSelect(vo);
		
		if(vo != null) {
			request.setAttribute("free", vo);
		} else {
			request.setAttribute("message", "조회된 데이터가 없습니다.");
			return "bulletin/bulletinError";
		}
		
		return "bulletin/freeUpdateForm";
	}

}
