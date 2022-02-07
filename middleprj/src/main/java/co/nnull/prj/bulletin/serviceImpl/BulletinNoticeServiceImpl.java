package co.nnull.prj.bulletin.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.nnull.prj.bulletin.service.BulletinNoticeMapper;
import co.nnull.prj.bulletin.service.BulletinNoticeService;
import co.nnull.prj.bulletin.vo.BulletinNoticeVO;
import co.nnull.prj.comm.DataSource;



public class BulletinNoticeServiceImpl implements BulletinNoticeService {

	private SqlSession session = DataSource.getInstance().openSession(true);
	private BulletinNoticeMapper map = session.getMapper(BulletinNoticeMapper.class);
	
	@Override
	public List<BulletinNoticeVO> noticeSelectList() {
		return map.noticeSelectList();
	}

	@Override
	public BulletinNoticeVO noticeSelect(BulletinNoticeVO vo) {
		return map.noticeSelect(vo);
	}

	@Override
	public int noticeInsert(BulletinNoticeVO vo) {
		return map.noticeInsert(vo);
	}

	@Override
	public int noticeDelete(BulletinNoticeVO vo) {
		return map.noticeDelete(vo);
	}

	@Override
	public int noticeUpdate(BulletinNoticeVO vo) {
		return map.noticeUpdate(vo);
	}

	@Override
	public void noticeHitUpdate(int id) {
		map.noticeHitUpdate(id);

	}

	@Override
	public List<BulletinNoticeVO> noticeSearch(String key, String str) {
		return map.noticeSearch(key, str);
	}

}
