package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.ReplyDealService;
import co.nnull.prj.bulletin.serviceImpl.ReplyDealServiceImpl;
import co.nnull.prj.bulletin.vo.ReplyDealVO;
import co.nnull.prj.comm.Command;

public class ReplyDealDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 중고거래 댓글 삭제
		String id = request.getParameter("delId");

		ReplyDealService service = new ReplyDealServiceImpl();
		ReplyDealVO vo = new ReplyDealVO();
		vo.setReplyId(Integer.parseInt(id));
		int n = service.dealDelete(vo);
		// {"retCode":"Success"} {"retCode":"Fail"}
		
		response.setContentType("text/json; charset=utf-8");
		
		String str = "";
		if (n != 0) {
			str = "{\"retCode\":\"Success\"}";
		} else {
			str = "{\"retCode\":\"Fail\"}";
		}

		return "ajax:" + str;
	}
}