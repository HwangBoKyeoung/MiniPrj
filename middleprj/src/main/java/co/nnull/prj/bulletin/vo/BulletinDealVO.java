package co.nnull.prj.bulletin.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class BulletinDealVO {

	private int dealId;
	private String dealTitle;
	private String dealSubject;
	private String dealWriter;
	private Date dealDate;
	private int dealHit;

}
