package co.nnull.prj.bulletin.service;

import java.util.List;

import co.nnull.prj.bulletin.vo.BulletinNoticeVO;


public interface BulletinNoticeService {
	
	List<BulletinNoticeVO> noticeSelectList();
	
	BulletinNoticeVO noticeSelect(BulletinNoticeVO vo);
	
	int noticeInsert(BulletinNoticeVO vo);
	
	int noticeDelete(BulletinNoticeVO vo);
	
	int noticeUpdate(BulletinNoticeVO vo);
	
	void noticeHitUpdate(int id);

}
