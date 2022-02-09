package co.nnull.prj.bulletin.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.nnull.prj.bulletin.service.BulletinDealMapper;
import co.nnull.prj.bulletin.service.BulletinDealService;
import co.nnull.prj.bulletin.vo.BulletinDealVO;
import co.nnull.prj.comm.DataSource;

public class BulletinDealServiceImpl implements BulletinDealService {

	
	private SqlSession session = DataSource.getInstance().openSession(true);
	private BulletinDealMapper map = session.getMapper(BulletinDealMapper.class);
	
	@Override
	public List<BulletinDealVO> dealSelectList() {
		return map.dealSelectList();
	}

	@Override
	public BulletinDealVO dealSelect(BulletinDealVO vo) {
		return map.dealSelect(vo);
	}

	@Override
	public int dealInsert(BulletinDealVO vo) {
		return map.dealInsert(vo);
	}

	@Override
	public int dealDelete(BulletinDealVO vo) {
		return map.dealDelete(vo);
	}

	@Override
	public int dealUpdate(BulletinDealVO vo) {
		return map.dealUpdate(vo);
	}

	@Override
	public void dealHitUpdate(int id) {
		map.dealHitUpdate(id);
	}

}
