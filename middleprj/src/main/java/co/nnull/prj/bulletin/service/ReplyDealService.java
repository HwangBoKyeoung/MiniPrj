package co.nnull.prj.bulletin.service;

import java.util.List;

import co.nnull.prj.bulletin.vo.ReplyDealVO;

public interface ReplyDealService {
	
	
	List<ReplyDealVO> dealSelectList();

	int dealInsert(ReplyDealVO vo);
	
	int dealDelete(ReplyDealVO vo);


}
