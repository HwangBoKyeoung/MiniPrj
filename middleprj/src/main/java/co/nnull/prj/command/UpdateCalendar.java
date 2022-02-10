package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.cal.service.CalService;
import co.nnull.prj.cal.serviceImpl.CalServiceImpl;
import co.nnull.prj.cal.vo.CalVO;
import co.nnull.prj.comm.Command;

public class UpdateCalendar implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String calId = request.getParameter("calId");
		String title = request.getParameter("title");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		
		CalService calDao = new CalServiceImpl();
		
		CalVO vo = new CalVO();
		vo.setId(Integer.parseInt(calId));
		vo.setTitle(title);
		vo.setEnd(end);
		vo.setStart(start);
		
		int n = calDao.updateCal(vo);
		String viewPage = null;
		
		if(n!=0) {
			viewPage = "scheduleManage.do";
		} else {
			request.setAttribute("message", "수정 실패.");
			viewPage = "manager/adminSchedule/managerErr";
		}
		
		return viewPage;
	}

}
