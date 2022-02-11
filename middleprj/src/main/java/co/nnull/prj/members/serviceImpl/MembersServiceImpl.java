package co.nnull.prj.members.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.nnull.prj.comm.DataSource;
import co.nnull.prj.members.service.MembersMapper;
import co.nnull.prj.members.service.MembersService;
import co.nnull.prj.members.vo.MembersVO;

public class MembersServiceImpl implements MembersService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true); // auto commit
	private MembersMapper map = sqlSession.getMapper(MembersMapper.class);

	@Override
	public List<MembersVO> memberSelectList() {
		return map.memberSelectList();
	}

	@Override
	public MembersVO memberSelect(MembersVO vo) {
		return map.memberSelect(vo);
	}

	@Override
	public int memberInsert(MembersVO vo) {
		return map.memberInsert(vo);
	}

	@Override
	public int memberUpdate(MembersVO vo) {
		return map.memberUpdate(vo);
	}

	@Override
	public int memberDelete(MembersVO vo) {
		return map.memberDelete(vo);
	}

	@Override
	public boolean isIdCheck(String id) {
		return map.isIdCheck(id);
	}

	@Override
	public MembersVO memberSelectOne(MembersVO vo) {
		return map.memberSelectOne(vo);
	}

	@Override
	public int orderUpdate(MembersVO vo) {
		return map.orderUpdate(vo);
	}

}
