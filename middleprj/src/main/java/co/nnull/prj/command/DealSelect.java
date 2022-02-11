package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinDealService;
import co.nnull.prj.bulletin.service.ReplyDealService;
import co.nnull.prj.bulletin.serviceImpl.BulletinDealServiceImpl;
import co.nnull.prj.bulletin.serviceImpl.ReplyDealServiceImpl;
import co.nnull.prj.bulletin.vo.BulletinDealVO;
import co.nnull.prj.comm.Command;

public class DealSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 중고거래 한 건 선택
		BulletinDealService bulletinDealDao = new BulletinDealServiceImpl();
		BulletinDealVO vo = new BulletinDealVO();
		ReplyDealService replyDealDao = new ReplyDealServiceImpl();
		
		vo.setDealId(Integer.valueOf(request.getParameter("dealId")));
		vo = bulletinDealDao.dealSelect(vo);

		if (vo != null) {
			bulletinDealDao.dealHitUpdate(vo.getDealId());
			request.setAttribute("deal", vo);
			request.setAttribute("replyDeals", replyDealDao.dealSelectList());
		} else {
			request.setAttribute("message", "조회된 데이터가 없습니다.");
			return "bulletin/bulletinError";
		}

		return "bulletin/dealSelect";
	}
}