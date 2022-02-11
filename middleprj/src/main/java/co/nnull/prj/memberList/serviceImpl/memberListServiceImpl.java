package co.nnull.prj.memberList.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.nnull.prj.comm.DataSource;
import co.nnull.prj.memberList.service.memberListMapper;
import co.nnull.prj.memberList.service.memberListService;
import co.nnull.prj.members.vo.MembersVO;

public class memberListServiceImpl implements memberListService{

	private SqlSession session = DataSource.getInstance().openSession(true);
	private memberListMapper map = session.getMapper(memberListMapper.class);
	@Override
	public List<MembersVO> memberSelectList() {
		// TODO Auto-generated method stub
		return map.memberSelectList();
	}

	@Override
	public MembersVO memberSelectOne(MembersVO vo) {
		// TODO Auto-generated method stub
		return map.memberSelectOne(vo);
	}

	@Override
	public int memberListInsert(MembersVO vo) {
		// TODO Auto-generated method stub
		return map.memberListInsert(vo);
	}

	@Override
	public int memberListUpdate(MembersVO vo) {
		// TODO Auto-generated method stub
		return map.memberListUpdate(vo);
	}

	@Override
	public int memberListDelete(MembersVO vo) {
		// TODO Auto-generated method stub
		return map.memberListDelete(vo);
	}

}
