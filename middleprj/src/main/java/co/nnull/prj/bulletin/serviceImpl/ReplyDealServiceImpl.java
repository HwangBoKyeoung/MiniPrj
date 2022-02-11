package co.nnull.prj.bulletin.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.nnull.prj.bulletin.service.ReplyDealMapper;
import co.nnull.prj.bulletin.service.ReplyDealService;
import co.nnull.prj.bulletin.vo.ReplyDealVO;
import co.nnull.prj.comm.DataSource;

public class ReplyDealServiceImpl implements ReplyDealService {
	
	private SqlSession session = DataSource.getInstance().openSession(true);
	private ReplyDealMapper map = session.getMapper(ReplyDealMapper.class);

	@Override
	public List<ReplyDealVO> dealSelectList() {
		return map.dealSelectList();
	}

	@Override
	public int dealInsert(ReplyDealVO vo) {
		return map.dealInsert(vo);
	}

	@Override
	public int dealDelete(ReplyDealVO vo) {
		return map.dealDelete(vo);
	}

}
