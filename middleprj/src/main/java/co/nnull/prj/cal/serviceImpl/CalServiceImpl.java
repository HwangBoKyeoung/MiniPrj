package co.nnull.prj.cal.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.nnull.prj.cal.service.CalMapper;
import co.nnull.prj.cal.service.CalService;
import co.nnull.prj.cal.vo.CalVO;
import co.nnull.prj.comm.DataSource;

public class CalServiceImpl implements CalService{

	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	CalMapper map = sqlSession.getMapper(CalMapper.class);
	@Override
	public List<CalVO> selectCal() {
		// TODO Auto-generated method stub
		return map.selectCal();
	}

	@Override
	public void insertCal(CalVO cvo) {
		map.insertCal(cvo);
		
	}

	@Override
	public void deleteCal(CalVO cvo) {
		map.deleteCal(cvo);
		
		
	}

}
