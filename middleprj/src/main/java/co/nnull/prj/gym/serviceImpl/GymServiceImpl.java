package co.nnull.prj.gym.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.nnull.prj.comm.DataSource;
import co.nnull.prj.gym.service.GymMapper;
import co.nnull.prj.gym.service.GymService;
import co.nnull.prj.gym.vo.GymVO;

public class GymServiceImpl implements GymService{
	
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	GymMapper map = sqlSession.getMapper(GymMapper.class);

	@Override
	public List<GymVO> selectList() {
		return map.selectList();
	}

}
