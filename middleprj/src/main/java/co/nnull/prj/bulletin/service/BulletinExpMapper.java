package co.nnull.prj.bulletin.service;

import java.util.List;

import co.nnull.prj.bulletin.vo.BulletinExpVO;

public interface BulletinExpMapper {
	
	List<BulletinExpVO> expSelectList();
	BulletinExpVO expSelect(BulletinExpVO vo);
	int expInsert(BulletinExpVO vo);
	
	
}
