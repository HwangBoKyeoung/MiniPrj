package co.nnull.prj.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.cal.service.CalService;
import co.nnull.prj.cal.serviceImpl.CalServiceImpl;
import co.nnull.prj.cal.vo.CalVO;
import co.nnull.prj.comm.Command;

public class ScheduleManage implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		CalService calDao = new CalServiceImpl();
		List<CalVO> list = calDao.selectCal();
		
		request.setAttribute("lists", list);
		return "manager/adminSchedule/scheduleManage";
	}

}
