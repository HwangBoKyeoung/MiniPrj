package co.nnull.prj.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.nnull.prj.cal.service.CalService;
import co.nnull.prj.cal.serviceImpl.CalServiceImpl;
import co.nnull.prj.cal.vo.CalVO;
import co.nnull.prj.comm.Command;

public class ScheduleView implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		response.setContentType("text/json; charset=utf-8");
		
		CalService calDao = new CalServiceImpl();
		List<CalVO> scheduleView = calDao.selectCal();

		Gson gson = new GsonBuilder().create();
		String str = gson.toJson(scheduleView);
		System.out.println(str);

		return "ajax:" + str;
	}

}
