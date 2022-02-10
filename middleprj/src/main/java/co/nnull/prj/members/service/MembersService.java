package co.nnull.prj.members.service;

import java.util.List;

import co.nnull.prj.members.vo.MembersVO;


public interface MembersService {
	List<MembersVO> memberSelectList();

	MembersVO memberSelect(MembersVO vo); // 로그인, 한명데이터 조회
	
	MembersVO memberSelectOne(MembersVO vo);

	int memberInsert(MembersVO vo);

	int memberUpdate(MembersVO vo);

	int memberDelete(MembersVO vo);

	boolean isIdCheck(String id); // 아이디 중복체크
}