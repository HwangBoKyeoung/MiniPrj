package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.cal.service.CalService;
import co.nnull.prj.cal.serviceImpl.CalServiceImpl;
import co.nnull.prj.cal.vo.CalVO;
import co.nnull.prj.comm.Command;

public class InsertCalendar implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String title = request.getParameter("calTitle");
		String start = request.getParameter("calStart");
		String end = request.getParameter("calEnd");
		
		CalService calDao = new CalServiceImpl();
		CalVO vo = new CalVO();
		vo.setEnd(end);
		vo.setStart(start);
		vo.setTitle(title);
		
		int n = calDao.insertCal(vo);
		String viewPage = null;
		
		if(n!=0) {
			viewPage = "scheduleManage.do";
		} else {
			request.setAttribute("message", "입력 실패.");
			viewPage = "manager/adminSchedule/managerErr";
		}
		
		return viewPage;
	}

}
