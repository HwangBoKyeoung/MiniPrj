package co.nnull.prj.bulletin.service;

import java.util.List;

import co.nnull.prj.bulletin.vo.BulletinFreeVO;

public interface BulletinFreeService {
	
	
	List<BulletinFreeVO> freeSelectList();
	
	BulletinFreeVO freeSelect(BulletinFreeVO vo);
	
	int freeInsert(BulletinFreeVO vo);
	
	int freeDelete(BulletinFreeVO vo);
	
	int freeUpdate(BulletinFreeVO vo);
	
	void freeHitUpdate(int id);

}
