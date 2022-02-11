package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.ReplyDealService;
import co.nnull.prj.bulletin.serviceImpl.ReplyDealServiceImpl;
import co.nnull.prj.bulletin.vo.ReplyDealVO;
import co.nnull.prj.comm.Command;

public class ReplyDealWrite implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 중고거래 댓글쓰기

		ReplyDealService replyDealDao = new ReplyDealServiceImpl();
		ReplyDealVO vo = new ReplyDealVO();
		vo.setReplyWriter(request.getParameter("replyWriter"));
		vo.setReplyContent(request.getParameter("replyContent"));
		String dealId = request.getParameter("dealId");
		vo.setDealId(Integer.parseInt(dealId));
	
		String viewPage = null;
		
		int n = replyDealDao.dealInsert(vo);
		if(n != 0) {
			viewPage = "deal.do";
		} else {
			request.setAttribute("message", "등록에 실패했습니다.");
			viewPage = "bulletin/bulletinError";
		}
		return viewPage;
	}
}
