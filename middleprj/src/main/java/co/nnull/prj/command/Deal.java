package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinDealService;
import co.nnull.prj.bulletin.serviceImpl.BulletinDealServiceImpl;
import co.nnull.prj.comm.Command;

public class Deal implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		// 자유게시판 목록
		BulletinDealService bulletinDealDao = new BulletinDealServiceImpl();
		request.setAttribute("deals", bulletinDealDao.dealSelectList());
		return "bulletin/deal";
	}

}
