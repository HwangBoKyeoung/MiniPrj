package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinDealService;
import co.nnull.prj.bulletin.serviceImpl.BulletinDealServiceImpl;
import co.nnull.prj.bulletin.vo.BulletinDealVO;
import co.nnull.prj.comm.Command;

public class DealUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 중고거래 글수정 폼
		
		BulletinDealService bulletinDealDao = new BulletinDealServiceImpl();
		BulletinDealVO vo =  new BulletinDealVO();
		
		vo.setDealId(Integer.valueOf(request.getParameter("id")));
		vo = bulletinDealDao.dealSelect(vo);
		
		if(vo != null) {
			request.setAttribute("deal", vo);
		} else {
			request.setAttribute("message", "조회된 데이터가 없습니다.");
			return "bulletin/bulletinError";
		}
		
		return "bulletin/dealUpdateForm";
	}
}
