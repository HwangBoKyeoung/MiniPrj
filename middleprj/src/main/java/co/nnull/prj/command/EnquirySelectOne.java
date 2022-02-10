package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.enquiry.service.EnquiryService;
import co.nnull.prj.enquiry.serviceImpl.EnquiryServiceImpl;
import co.nnull.prj.enquiry.vo.EnquiryVO;

public class EnquirySelectOne implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String selc = request.getParameter("selc");
		EnquiryService enquiryDao = new EnquiryServiceImpl();
		EnquiryVO vo = new EnquiryVO();
		vo.setEnquiryId(Integer.parseInt(selc));
		
		vo = enquiryDao.selectEnquiry(vo);
		String viewPage = null;
		
		if(vo != null) {
			request.setAttribute("selectOne", vo);
			viewPage = "manager/adminManage/enquirySelectOne";
		} else {
			request.setAttribute("message", "상담문의 단 건 조회 실패");
			viewPage = "manager/adminSchedule/managerErr";
		}
		
		return viewPage;
	}

}
