package co.nnull.prj.bulletin.serviceImpl;

import org.apache.ibatis.session.SqlSession;

import co.nnull.prj.bulletin.service.BulletinExpMapper;
import co.nnull.prj.bulletin.service.BulletinExpService;
import co.nnull.prj.bulletin.vo.BulletinExpVO;
import co.nnull.prj.comm.DataSource;

public class BulletinExpServiceImpl implements BulletinExpService {
	
	private SqlSession session = DataSource.getInstance().openSession(true);
	private BulletinExpMapper map = session.getMapper(BulletinExpMapper.class);


	@Override
	public int expInsert(BulletinExpVO vo) {

		return map.expInsert(vo);
	}

}
