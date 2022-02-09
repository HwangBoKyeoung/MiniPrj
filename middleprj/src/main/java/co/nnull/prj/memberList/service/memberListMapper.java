package co.nnull.prj.memberList.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.nnull.prj.memberList.vo.memberListVO;

public interface memberListMapper {
	List<memberListVO> memberSelectList();
	
	memberListVO memberSelect(memberListVO vo);
	
	int memberInsert(memberListVO vo);
	
	int memberUpdate(memberListVO vo);
	
	int memberDelete(memberListVO vo);
	
	List<memberListVO> memberListSearch(@Param("key") String key, @Param("str") String str);
}
