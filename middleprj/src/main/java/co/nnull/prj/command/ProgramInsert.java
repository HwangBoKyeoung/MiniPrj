package co.nnull.prj.command;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.nnull.prj.comm.Command;
import co.nnull.prj.program.service.ProgramService;
import co.nnull.prj.program.serviceImpl.ProgramServiceImpl;
import co.nnull.prj.program.vo.ProgramVO;

public class ProgramInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ServletContext context = request.getServletContext();
		String uploadPath = context.getRealPath("/upload");
		String p_name = null;
		String p_content = null;
		String p_image = null;
		
		try {
			MultipartRequest multi = new MultipartRequest(request, uploadPath, 1024*1024*5, "utf-8", new DefaultFileRenamePolicy());
			
			p_name = multi.getParameter("programName");
			p_content = multi.getParameter("programContent");
			p_image = multi.getFilesystemName("programImage");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ProgramService programDao = new ProgramServiceImpl();
		ProgramVO vo = new ProgramVO();
		vo.setProgramContent(p_content);
		vo.setProgramImage(p_image);
		vo.setProgramName(p_name);
		
		int n = programDao.programInsert(vo);
		String viewPage = null;
		if(n!=0) {
			viewPage = "programSelect.do";
		} else {
			request.setAttribute("message", "프로그램 입력 실패.");
			viewPage = "manager/adminSchedule/managerErr";
		}
		
		return viewPage;
	}

}
