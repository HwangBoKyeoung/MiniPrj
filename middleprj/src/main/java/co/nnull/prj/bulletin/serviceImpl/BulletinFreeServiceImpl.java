package co.nnull.prj.bulletin.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.nnull.prj.bulletin.service.BulletinFreeMapper;
import co.nnull.prj.bulletin.service.BulletinFreeService;
import co.nnull.prj.bulletin.vo.BulletinFreeVO;
import co.nnull.prj.comm.DataSource;

public class BulletinFreeServiceImpl implements BulletinFreeService {

	private SqlSession session = DataSource.getInstance().openSession(true);
	private BulletinFreeMapper map = session.getMapper(BulletinFreeMapper.class);
	
	
	@Override
	public List<BulletinFreeVO> freeSelectList() {
		return map.freeSelectList();
	}

	@Override
	public BulletinFreeVO freeSelect(BulletinFreeVO vo) {
		return map.freeSelect(vo);
	}

	@Override
	public int freeInsert(BulletinFreeVO vo) {
		return map.freeInsert(vo);
	}

	@Override
	public int freeDelete(BulletinFreeVO vo) {
		return map.freeDelete(vo);
	}

	@Override
	public int freeUpdate(BulletinFreeVO vo) {
		return map.freeUpdate(vo);
	}

	@Override
	public void freeHitUpdate(int id) {
		map.freeHitUpdate(id);

	}

}
