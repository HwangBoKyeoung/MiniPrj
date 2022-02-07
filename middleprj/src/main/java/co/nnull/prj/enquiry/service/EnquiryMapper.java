package co.nnull.prj.enquiry.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import co.nnull.prj.enquiry.vo.EnquiryVO;

@Mapper
public interface EnquiryMapper {
	public List<EnquiryVO> selectListEnquiry();
	public EnquiryVO selectEnquiry(EnquiryVO vo);
	public void insertEnquiry(EnquiryVO vo);
}
