package co.nnull.prj.bulletin.service;

import java.util.List;

import co.nnull.prj.bulletin.vo.BulletinDealVO;

public interface BulletinDealService {
	
	List<BulletinDealVO> dealSelectList();
	
	BulletinDealVO dealSelect(BulletinDealVO vo);
	
	int dealInsert(BulletinDealVO vo);
	
	int dealDelete(BulletinDealVO vo);
	
	int dealUpdate(BulletinDealVO vo);
	
	void dealHitUpdate(int id);

}
