package co.nnull.prj.memberList.service;

import java.util.List;

import co.nnull.prj.memberList.vo.memberListVO;

public interface memberListService {
List<memberListVO> memberSelectList();
	
	memberListVO memberSelect(memberListVO vo);
	
	int memberInsert(memberListVO vo);
	
	int memberUpdate(memberListVO vo);
	
	int memberDelete(memberListVO vo);
	
	List<memberListVO> memberListSearch(String key, String str);
}
