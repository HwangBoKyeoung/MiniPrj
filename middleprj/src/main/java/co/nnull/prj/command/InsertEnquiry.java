package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.enquiry.service.EnquiryService;
import co.nnull.prj.enquiry.serviceImpl.EnquiryServiceImpl;
import co.nnull.prj.enquiry.vo.EnquiryVO;

public class InsertEnquiry implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String subject = request.getParameter("subject");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		String phone = request.getParameter("phone");
		
		if(subject=="" || name=="" || email=="" || message=="" || phone=="") {
			return "main/map";
		}
		
		EnquiryService enquiryDao = new EnquiryServiceImpl(); 
		EnquiryVO vo = new EnquiryVO(); 
		vo.setEnquiryEmail(email); 
		vo.setEnquiryMessage(message);
		vo.setEnquiryName(name); 
		vo.setEnquirySubject(subject);
		vo.setEnquiryTel(phone);
		 
		enquiryDao.insertEnquiry(vo);

		return "main/main";
	}

}
