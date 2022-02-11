package co.nnull.prj.bulletin.service;

import java.util.List;

import co.nnull.prj.bulletin.vo.ReplyFreeVO;

public interface ReplyFreeMapper {
	
	
	List<ReplyFreeVO> freeSelectList();

	int freeInsert(ReplyFreeVO vo);
	
	int freeDelete(ReplyFreeVO vo);

}
