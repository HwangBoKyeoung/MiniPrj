package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.nnull.prj.bulletin.service.ReplyFreeService;
import co.nnull.prj.bulletin.serviceImpl.ReplyFreeServiceImpl;
import co.nnull.prj.bulletin.vo.ReplyFreeVO;
import co.nnull.prj.comm.Command;

public class ReplyFreeDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("delId");

		ReplyFreeService service = new ReplyFreeServiceImpl();
		ReplyFreeVO vo = new ReplyFreeVO();
		vo.setReplyId(Integer.parseInt(id));
		int n = service.freeDelete(vo);
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
