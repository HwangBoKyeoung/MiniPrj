package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinDealService;
import co.nnull.prj.bulletin.serviceImpl.BulletinDealServiceImpl;
import co.nnull.prj.bulletin.vo.BulletinDealVO;
import co.nnull.prj.comm.Command;

public class DealDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 중고거래 삭제
		String id = request.getParameter("id");
		
		BulletinDealService bulletinDealService = new BulletinDealServiceImpl();
		BulletinDealVO vo = new BulletinDealVO();
		vo.setDealId(Integer.parseInt(id));
		
		String viewPage = null;
		
		int delete = bulletinDealService.dealDelete(vo);
		if (delete != 0) {
			viewPage = "deal.do";
		} else {
			viewPage = "bulletin/bulletinError";
		} return viewPage;
		
	}

}
