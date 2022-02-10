package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.cal.service.CalService;
import co.nnull.prj.cal.serviceImpl.CalServiceImpl;
import co.nnull.prj.cal.vo.CalVO;
import co.nnull.prj.comm.Command;

public class DeleteSchedule implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String calId = request.getParameter("del");
		
		CalService calDao = new CalServiceImpl();
		CalVO vo = new CalVO();
		vo.setId(Integer.parseInt(calId));
		
		int n = calDao.deleteCal(vo);
		String viewPage = null;
		if(n!=0) {
			viewPage = "scheduleManage.do";
		} else {
			request.setAttribute("message", "삭제 실패.");
			viewPage = "manager/adminSchedule/managerErr";
		}
		return viewPage;
	}

}
