package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinDealService;
import co.nnull.prj.bulletin.serviceImpl.BulletinDealServiceImpl;
import co.nnull.prj.bulletin.vo.BulletinDealVO;
import co.nnull.prj.comm.Command;

public class DealUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 중고거래 수정
		String dealId = request.getParameter("dealId");
		String title = request.getParameter("title");
		String subject = request.getParameter("subject");
		
		BulletinDealService bulletinDealService = new BulletinDealServiceImpl();
		BulletinDealVO vo = new BulletinDealVO();
		
		vo.setDealTitle(title);
		vo.setDealSubject(subject);
		vo.setDealId(Integer.parseInt(dealId));
		
		String viewPage = null;
		
		int update = bulletinDealService.dealUpdate(vo);
		if (update != 0) {
			viewPage = "deal.do";
		} else {
			viewPage = "bulletin/bulletinError";
		} return viewPage;
		
	}

}
