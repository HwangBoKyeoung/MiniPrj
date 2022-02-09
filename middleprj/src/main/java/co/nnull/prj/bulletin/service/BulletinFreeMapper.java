package co.nnull.prj.bulletin.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.nnull.prj.bulletin.vo.BulletinFreeVO;

public interface BulletinFreeMapper {
	
	
	List<BulletinFreeVO> freeSelectList();
	
	BulletinFreeVO freeSelect(BulletinFreeVO vo);
	
	int freeInsert(BulletinFreeVO vo);
	
	int freeDelete(BulletinFreeVO vo);
	
	int freeUpdate(BulletinFreeVO vo);
	
	void freeHitUpdate(int id);

}
