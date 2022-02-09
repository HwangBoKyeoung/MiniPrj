package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinFreeService;
import co.nnull.prj.bulletin.serviceImpl.BulletinFreeServiceImpl;
import co.nnull.prj.bulletin.vo.BulletinFreeVO;
import co.nnull.prj.comm.Command;

public class FreeWriteForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 자유게시판 글쓰기 폼
		BulletinFreeService bulletinFreeService = new BulletinFreeServiceImpl();
		BulletinFreeVO vo = new BulletinFreeVO();
		
		vo = bulletinFreeService.freeSelect(vo);
		request.setAttribute("writer", vo);
		
		
		return "bulletin/freeWriteForm";
	}

}
