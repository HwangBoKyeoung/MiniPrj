package co.nnull.prj.enquiry.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.nnull.prj.comm.DataSource;
import co.nnull.prj.enquiry.service.EnquiryMapper;
import co.nnull.prj.enquiry.service.EnquiryService;
import co.nnull.prj.enquiry.vo.EnquiryVO;

public class EnquiryServiceImpl implements EnquiryService{
	
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	EnquiryMapper map = sqlSession.getMapper(EnquiryMapper.class);
	@Override
	public List<EnquiryVO> selectListEnquiry() {
		return map.selectListEnquiry();
	}
	@Override
	public EnquiryVO selectEnquiry(EnquiryVO vo) {
		return map.selectEnquiry(vo);
	}
	@Override
	public void insertEnquiry(EnquiryVO vo) {
		map.insertEnquiry(vo);
	}


}
