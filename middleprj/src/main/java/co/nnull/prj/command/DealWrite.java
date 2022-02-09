package co.nnull.prj.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinDealService;
import co.nnull.prj.bulletin.serviceImpl.BulletinDealServiceImpl;
import co.nnull.prj.bulletin.vo.BulletinDealVO;
import co.nnull.prj.comm.Command;

public class DealWrite implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 중고거래 글쓰기

		BulletinDealService bulletinDealDao = new BulletinDealServiceImpl();
		BulletinDealVO vo = new BulletinDealVO();
		vo.setDealWriter(request.getParameter("dealWriter"));
		if(request.getParameter("dealDate") != null) {
			vo.setDealDate(Date.valueOf(request.getParameter("dealDate")));	
		}
		vo.setDealTitle(request.getParameter("dealTitle"));
		vo.setDealSubject(request.getParameter("dealSubject"));
	
		String viewPage = null;
		
		int n = bulletinDealDao.dealInsert(vo);
		if(n != 0) {
			viewPage = "deal.do";
		} else {
			request.setAttribute("message", "등록에 실패했습니다.");
			viewPage = "bulletin/bulletinError";
		}
		return viewPage;
	}

}
