package co.nnull.prj.memberList.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.nnull.prj.comm.DataSource;
import co.nnull.prj.memberList.service.memberListMapper;
import co.nnull.prj.memberList.service.memberListService;
import co.nnull.prj.memberList.vo.memberListVO;

public class memberListServiceImpl implements memberListService{

	private SqlSession session = DataSource.getInstance().openSession(true);
	private memberListMapper map = session.getMapper(memberListMapper.class);
	@Override
	public List<memberListVO> memberSelectList() {
		return map.memberSelectList();
	}

	@Override
	public memberListVO memberSelect(memberListVO vo) {
		return map.memberSelect(vo);
	}

	@Override
	public int memberInsert(memberListVO vo) {
		return map.memberInsert(vo);
	}

	@Override
	public int memberUpdate(memberListVO vo) {
		return map.memberUpdate(vo);
	}

	@Override
	public int memberDelete(memberListVO vo) {
		return map.memberDelete(vo);
	}

	@Override
	public List<memberListVO> memberListSearch(String key, String str) {
		return map.memberListSearch(key, str);
	}

}
