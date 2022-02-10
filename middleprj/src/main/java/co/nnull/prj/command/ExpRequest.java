package co.nnull.prj.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinExpService;
import co.nnull.prj.bulletin.serviceImpl.BulletinExpServiceImpl;
import co.nnull.prj.bulletin.vo.BulletinExpVO;
import co.nnull.prj.comm.Command;

public class ExpRequest implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 체험신청 글전송

		BulletinExpService bulletinExpDao = new BulletinExpServiceImpl();
		BulletinExpVO vo = new BulletinExpVO();
		
		vo.setExpDate(Date.valueOf(request.getParameter("expDate")));
		vo.setExpName(request.getParameter("expName"));
		vo.setExpTel(request.getParameter("expTel"));
		vo.setExpCity(request.getParameter("expCity"));
		vo.setExpProgram(request.getParameter("expProgram"));
		vo.setExpMessage(request.getParameter("expMessage"));
	
		String viewPage = null;
		
		int n = bulletinExpDao.expInsert(vo);
		if(n != 0) {
			viewPage = "main.do";
		} else {
			request.setAttribute("message", "등록에 실패했습니다.");
			viewPage = "bulletin/bulletinError";
		}
		return viewPage;

	}

}
