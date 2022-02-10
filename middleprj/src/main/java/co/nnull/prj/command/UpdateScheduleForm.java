package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.cal.service.CalService;
import co.nnull.prj.cal.serviceImpl.CalServiceImpl;
import co.nnull.prj.cal.vo.CalVO;
import co.nnull.prj.comm.Command;

public class UpdateScheduleForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String calId = request.getParameter("calId");
		
		CalService calDao = new CalServiceImpl();
		CalVO vo = new CalVO();
		vo.setId(Integer.parseInt(calId));
		
		vo = calDao.selectOneCal(vo);
		
		String viewPage = null;
		if(vo!=null) {
			request.setAttribute("cal", vo);
			viewPage = "manager/adminSchedule/scheduleUpdateForm";
		} else {
			request.setAttribute("message", "한 건 조회 실패.");
			viewPage = "manager/adminSchedule/managerErr";
		}
		
		return viewPage;
	}

}
