package co.nnull.prj.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.enquiry.service.EnquiryService;
import co.nnull.prj.enquiry.serviceImpl.EnquiryServiceImpl;
import co.nnull.prj.enquiry.vo.EnquiryVO;

public class EnquirySelectM implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		EnquiryService enquiryDao = new EnquiryServiceImpl();
		List<EnquiryVO> list = enquiryDao.selectListEnquiry();
		
		String viewPage = null;
		if(list!=null) {
			request.setAttribute("enquiries", list);
			viewPage = "manager/adminManage/enquirySelect";
		} else {
			request.setAttribute("message", "상담문의 조회 실패");
			viewPage="manager/adminSchedule/managerErr";
		}
		return viewPage;
	}

}
