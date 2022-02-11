package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.program.service.ProgramService;
import co.nnull.prj.program.serviceImpl.ProgramServiceImpl;
import co.nnull.prj.program.vo.ProgramVO;

public class ProgramSelectOne implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String programId = request.getParameter("selc");
		
		ProgramService programDao = new ProgramServiceImpl();
		ProgramVO vo = new ProgramVO();
		vo.setProgramId(Integer.parseInt(programId));
		
		vo = programDao.programSelect(vo);
		String viewPage = null;
		if(vo!=null) {
			request.setAttribute("program", vo);
			viewPage = "manager/adminManage/programSelectOne";
		} else {
			request.setAttribute("message", "프로그램 1건 조회 실패.");
			viewPage = "manager/adminSchedule/managerErr";
		}
		
		return viewPage;
	}

}
