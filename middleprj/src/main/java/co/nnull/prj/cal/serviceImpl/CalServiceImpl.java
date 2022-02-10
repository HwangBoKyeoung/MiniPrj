package co.nnull.prj.cal.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.nnull.prj.cal.service.CalMapper;
import co.nnull.prj.cal.service.CalService;
import co.nnull.prj.cal.vo.CalVO;
import co.nnull.prj.comm.DataSource;

public class CalServiceImpl implements CalService {

	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	CalMapper map = sqlSession.getMapper(CalMapper.class);
	
	@Override
	public List<CalVO> selectCal() {
		return map.selectCal();
	}
	@Override
	public int insertCal(CalVO cvo) {
		return map.insertCal(cvo);
	}
	@Override
	public int deleteCal(CalVO cvo) {
		return map.deleteCal(cvo);
	}
	@Override
	public int updateCal(CalVO cvo) {
		return map.updateCal(cvo);
	}
	@Override
	public CalVO selectOneCal(CalVO cvo) {
		return map.selectOneCal(cvo);
	}

	
}
