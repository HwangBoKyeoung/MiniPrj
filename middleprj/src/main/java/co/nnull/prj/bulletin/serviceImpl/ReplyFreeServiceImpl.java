package co.nnull.prj.bulletin.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.nnull.prj.bulletin.service.ReplyFreeMapper;
import co.nnull.prj.bulletin.service.ReplyFreeService;
import co.nnull.prj.bulletin.vo.ReplyFreeVO;
import co.nnull.prj.comm.DataSource;

public class ReplyFreeServiceImpl implements ReplyFreeService {
	
	private SqlSession session = DataSource.getInstance().openSession(true);
	private ReplyFreeMapper map = session.getMapper(ReplyFreeMapper.class);

	@Override
	public List<ReplyFreeVO> freeSelectList() {
		return map.freeSelectList();
	}

	@Override
	public int freeInsert(ReplyFreeVO vo) {
		return map.freeInsert(vo);
	}

	@Override
	public int freeDelete(ReplyFreeVO vo) {
		return map.freeDelete(vo);
	}

}
