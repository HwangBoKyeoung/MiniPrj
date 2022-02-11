package co.nnull.prj.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.program.service.ProgramService;
import co.nnull.prj.program.serviceImpl.ProgramServiceImpl;
import co.nnull.prj.program.vo.ProgramVO;

public class InsertServieM implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProgramService programDao = new ProgramServiceImpl();
		List<ProgramVO> list = programDao.programList();
		
		String viewPage = null;
		if(list!=null) {
			request.setAttribute("programs", list);
			viewPage = "manager/adminManage/programSelect";
		} else {
			request.setAttribute("message", "프로그램 전체조회 실패.");
			viewPage = "manager/adminSchedule/managerErr";
		}
		
		return viewPage;
	}

}
