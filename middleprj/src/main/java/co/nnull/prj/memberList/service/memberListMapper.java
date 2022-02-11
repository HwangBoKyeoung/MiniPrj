package co.nnull.prj.memberList.service;

import java.util.List;

import co.nnull.prj.members.vo.MembersVO;

public interface memberListMapper {
	List<MembersVO> memberSelectList();

	MembersVO memberSelectOne(MembersVO vo);

	int memberListInsert(MembersVO vo);

	int memberListUpdate(MembersVO vo);

	int memberListDelete(MembersVO vo);
}
