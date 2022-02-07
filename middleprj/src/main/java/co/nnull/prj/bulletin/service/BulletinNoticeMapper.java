package co.nnull.prj.bulletin.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.nnull.prj.bulletin.vo.BulletinNoticeVO;


public interface BulletinNoticeMapper {

	List<BulletinNoticeVO> noticeSelectList();
	
	BulletinNoticeVO noticeSelect(BulletinNoticeVO vo);
	
	int noticeInsert(BulletinNoticeVO vo);
	
	int noticeDelete(BulletinNoticeVO vo);
	
	int noticeUpdate(BulletinNoticeVO vo);
	
	void noticeHitUpdate(int id); 
	
	List<BulletinNoticeVO> noticeSearch(@Param("key") String key, @Param("str") String str);
}
