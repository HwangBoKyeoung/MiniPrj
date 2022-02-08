package co.nnull.prj.membership.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.nnull.prj.comm.DataSource;
import co.nnull.prj.membership.service.MembershipMapper;
import co.nnull.prj.membership.service.MembershipService;
import co.nnull.prj.membership.vo.MembershipVO;

public class MembershipServiceImpl implements MembershipService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private MembershipMapper map = sqlSession.getMapper(MembershipMapper.class);
	
	@Override
	public List<MembershipVO> membershipSelectList() {
		return map.membershipSelectList();
	}

	@Override
	public MembershipVO membershipSelect(MembershipVO vo) {
		return map.membershipSelect(vo);
	}

	@Override
	public int membershipInsert(MembershipVO vo) {
		return map.membershipInsert(vo);
	}

	@Override
	public int membershipUpdate(MembershipVO vo) {
		return map.membershipUpdate(vo);
	}

	@Override
	public int membershipDelete(MembershipVO vo) {
		return map.membershipDelete(vo);
	}

}
