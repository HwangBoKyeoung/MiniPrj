package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinFreeService;
import co.nnull.prj.bulletin.service.ReplyFreeService;
import co.nnull.prj.bulletin.serviceImpl.BulletinFreeServiceImpl;
import co.nnull.prj.bulletin.serviceImpl.ReplyFreeServiceImpl;
import co.nnull.prj.bulletin.vo.BulletinFreeVO;
import co.nnull.prj.comm.Command;

public class FreeSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 자유게시판 한 건 선택
		BulletinFreeService bulletinFreeDao = new BulletinFreeServiceImpl();
		BulletinFreeVO vo = new BulletinFreeVO();
		ReplyFreeService replyFreeDao = new ReplyFreeServiceImpl();
		
		vo.setFreeId(Integer.valueOf(request.getParameter("freeId")));
		vo = bulletinFreeDao.freeSelect(vo);

		if (vo != null) {
			bulletinFreeDao.freeHitUpdate(vo.getFreeId());
			request.setAttribute("free", vo);
			request.setAttribute("replyFrees", replyFreeDao.freeSelectList());
		} else {
			request.setAttribute("message", "조회된 데이터가 없습니다.");
			return "bulletin/bulletinError";
		}

		return "bulletin/freeSelect";
	}
}
