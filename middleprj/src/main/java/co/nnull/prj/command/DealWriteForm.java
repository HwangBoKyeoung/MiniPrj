package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinDealService;
import co.nnull.prj.bulletin.serviceImpl.BulletinDealServiceImpl;
import co.nnull.prj.bulletin.vo.BulletinDealVO;
import co.nnull.prj.comm.Command;

public class DealWriteForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 중고거래 글쓰기 폼
		BulletinDealService bulletinDealService = new BulletinDealServiceImpl();
		BulletinDealVO vo = new BulletinDealVO();
		
		vo = bulletinDealService.dealSelect(vo);
		request.setAttribute("writer", vo);
		
		
		return "bulletin/dealWriteForm";
	}

}
