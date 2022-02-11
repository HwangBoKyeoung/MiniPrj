package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.ReplyFreeService;
import co.nnull.prj.bulletin.serviceImpl.ReplyFreeServiceImpl;
import co.nnull.prj.bulletin.vo.ReplyFreeVO;
import co.nnull.prj.comm.Command;

public class ReplyFreeWrite implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 자유게시판 댓글쓰기

		ReplyFreeService replyFreeDao = new ReplyFreeServiceImpl();
		ReplyFreeVO vo = new ReplyFreeVO();
		vo.setReplyWriter(request.getParameter("replyWriter"));
		vo.setReplyContent(request.getParameter("replyContent"));
	
		String viewPage = null;
		
		int n = replyFreeDao.freeInsert(vo);
		if(n != 0) {
			viewPage = "free.do";
		} else {
			request.setAttribute("message", "등록에 실패했습니다.");
			viewPage = "bulletin/bulletinError";
		}
		return viewPage;
	}
}
