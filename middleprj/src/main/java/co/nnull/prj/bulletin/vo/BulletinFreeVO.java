package co.nnull.prj.bulletin.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class BulletinFreeVO {

	private int freeId;
	private String freeTitle;
	private String freeSubject;
	private String freeWriter;
	private Date freeDate;
	private int freeHit;

}
