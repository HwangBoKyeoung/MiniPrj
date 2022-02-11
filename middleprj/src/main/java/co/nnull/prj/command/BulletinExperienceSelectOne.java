package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinExpService;
import co.nnull.prj.bulletin.serviceImpl.BulletinExpServiceImpl;
import co.nnull.prj.bulletin.vo.BulletinExpVO;
import co.nnull.prj.comm.Command;

public class BulletinExperienceSelectOne implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String selc = request.getParameter("selc");
		
		BulletinExpService expDao = new BulletinExpServiceImpl();
		BulletinExpVO vo = new BulletinExpVO();
		vo.setExpId(Integer.parseInt(selc));
		
		vo = expDao.expSelect(vo);
		String viewPage = null;
		if(vo!=null) {
			request.setAttribute("exp", vo);
			viewPage = "manager/adminManage/expSelectOne";
		} else {
			request.setAttribute("message", "체험신청 1건 조회 실패");
			viewPage = "manager/adminSchedule/managerErr";
		}
		
		return viewPage;
	}

}
