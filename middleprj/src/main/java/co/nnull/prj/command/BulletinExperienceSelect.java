package co.nnull.prj.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.bulletin.service.BulletinExpService;
import co.nnull.prj.bulletin.serviceImpl.BulletinExpServiceImpl;
import co.nnull.prj.bulletin.vo.BulletinExpVO;
import co.nnull.prj.comm.Command;

public class BulletinExperienceSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		BulletinExpService expDao = new BulletinExpServiceImpl();
		List<BulletinExpVO> list = expDao.expSelectList();
		
		String viewPage = null;
		
		if(list!=null) {
			request.setAttribute("exps", list);
			viewPage = "manager/adminManage/expSelect";
		} else {
			request.setAttribute("message", "체험신청 조회실패");
			viewPage = "manager/adminSchedule/managerErr";
		}
		
		return viewPage;
	}

}
