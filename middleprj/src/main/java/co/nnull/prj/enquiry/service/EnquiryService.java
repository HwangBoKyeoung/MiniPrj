package co.nnull.prj.enquiry.service;

import java.util.List;

import co.nnull.prj.enquiry.vo.EnquiryVO;

public interface EnquiryService {
	public List<EnquiryVO> selectListEnquiry();
	public EnquiryVO selectEnquiry(EnquiryVO vo);
	public void insertEnquiry(EnquiryVO vo);
}
