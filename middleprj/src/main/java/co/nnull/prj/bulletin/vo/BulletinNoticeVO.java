package co.nnull.prj.bulletin.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class BulletinNoticeVO {
	
	private int noticeId;
	private String noticeTitle;
	private String noticeSubject;
	private String noticeWriter;
	private Date noticeDate;
	private int noticeHit;

}
